<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Requests\ValidatePasswordRequest;
use App\Http\Controllers\Controller;
use App\Http\Requests\ValidateInformationsRequest;
use Illuminate\Support\Facades\Hash;
use App\Notifications\UserFollowed;
use App\Models\Course;
use App\Models\Video;
use App\Models\Post;
use App\Models\User;
use App\Traits\UploadFile;

class ProfileController extends Controller
{
    use UploadFile;
    public function index()
    {
        if ($this->profileId())
            return view('frontend.profile.index', ['user' => User::whereId($this->profileId())->first()]);

        return abort(404);
    }

    public function edit()
    {
        if (request()->id == auth()->id())
            return view('frontend.profile.edit-section', ['user' => User::whereId(request()->id)->first()]);

        return abort(404);
    }

    public function update(ValidateInformationsRequest $request)
    {
        $image = $request->has('image') ? $this->uploadImage($request->image, 'users') : auth()->user()->image;
        if (auth()->user()->update(array_merge($request->except('image'), ['image' => $image])))
            return response()->json(['message' => 'Your Informations Updated Successfully!'], 200);

        return response()->json(['message' => 'Something is wring, try again later!'], 500);
    }

    public function changePassword(ValidatePasswordRequest $request)
    {
        if (Hash::check($request->password, auth()->user()->password))
            return response()->json(['errors' => ['password' => 'The new password must be different from the current password!']], 422);

        if (!Hash::check($request->current_password, auth()->user()->password))
            return response()->json(['errors' => ['current_password' => 'Your Current Password is Wrong!']], 422);

        if (Hash::check($request->current_password, auth()->user()->password)) {
            if (auth()->user()->update(['password' => $request->password]))
                return response()->json(['message' => 'You Password Updated Successfully!'], 200);
        }
    }

    public function follow()
    {
        if ($this->profileId() && $this->profileId() !== auth()->id()) {
            $profile = User::whereId($this->profileId())->first();
            $type = 0;

            if (auth()->user()->follows()->whereFollowId($this->profileId())->first()) {
                auth()->user()->follows()->detach($this->profileId());
                $type = 1;
            } else {
                auth()->user()->follows()->attach($this->profileId());

                $data = ['message' => auth()->user()->name . ' followed you.', 'image' => auth()->user()->image_url, 'date' => now()->diffForHumans(), 'url' => route('profile')];
                $profile->notify(new UserFollowed($data));
            }

            return response()->json(['count' => $profile->followers()->count(), 'type' => $type]);
        }
        return response()->json([], 404);
    }

    public function courses()
    {
        if (!$this->profileId())
            return response()->json([], 404);

        $courses = Course::whereUserId($this->profileId())->whereVisibility(1)->whereHas('videos')->get();
        return view('frontend.profile.courses-section', compact('courses'));
    }

    public function posts()
    {
        if (!$this->profileId())
            return response()->json([], 404);

        $posts = Post::whereUserId($this->profileId())->whereVisibility(1)->get();
        return view('frontend.profile.posts-section', compact('posts'));
    }

    public function videos()
    {
        if (!$this->profileId())
            return response()->json([], 404);

        $videos = Video::whereHas('course', function ($query) {
            return $query->whereVisibility(1)->whereUserId($this->profileId());
        })->whereHas('likes')->whereHas('visitors')->get();
        return view('frontend.profile.videos-section', compact('videos'));
    }

    private function profileId()
    {
        $id = request()->has('id') ? User::whereId(request()->id)->first()->id : auth()->id();
        return $id ?? false;
    }
}
