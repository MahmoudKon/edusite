<?php

namespace App\Observers;

use App\Models\Favorite;
use App\Models\Like;
use App\Traits\UploadFile;
use App\Models\User;
use App\Models\UserFollow;

class UserObserve
{
    use UploadFile;

    public function deleted(User $user)
    {
        $this->remove($user->image, 'users');

        foreach ($user->courses as $course) {
            foreach ($course->videos as $video) {
                $this->remove($video->file, 'videos');
                $video->delete();
            }
            $this->remove($course->file, 'courses');
            $course->delete();
        }

        foreach ($user->posts as $post) {
            $this->remove($post->image, 'posts');
            $post->delete();
        }

        foreach ($user->comments as $comment) {
            $comment->delete();
        }

        Favorite::where('user_id', $user->id)->delete();
        Like::where('user_id', $user->id)->delete();
        UserFollow::where('follow_id', $user->id)->orWhere('follower_id', $user->id)->delete();
    }
}
