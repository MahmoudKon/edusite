<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Support\Facades\Notification;
use App\Http\Controllers\Controller;
use App\Notifications\AddLike;
use App\Models\Course;
use Carbon\Carbon;

class FavoritesController extends Controller
{
    public function showFavorites()
    {
        return view('layouts.includes.frontend.favorites');
    }

    public function favorite(Course $course)
    {
        $favorite = $course->favorites()->whereUserId(auth()->id())->first();
        $status   = true;
        if ($favorite) {
            $favorite->delete();
            $status = false;
        } else {
            $data = [
                'message'     => auth()->user()->name . ' added your course to favorites list.',
                'image'       => auth()->user()->image_url,
                'name'        => auth()->user()->name,
                'title'       => $course->title,
                'date'        => Carbon::parse(now())->diffForHumans(),
                'url'         => route('course', ['id' => $course->id, 'title' => $course->slug]),
            ];

            $course->favorites()->create(['user_id' => auth()->id()]);
            if (auth()->id() != $course->user_id)
                Notification::send($course->user, new AddLike($data));
        }
        cache()->forget('auth_user_avorites');
        cache()->forget('auth_user_avorites_count');
        return response()->json(['count' => $course->favorites()->count(), 'favorites_count' => auth()->user()->favorites()->count(), 'status' => $status]);
    }
}
