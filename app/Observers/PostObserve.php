<?php

namespace App\Observers;

use App\Models\Comment;
use App\Models\Like;
use App\Models\Post;
use App\Models\Visitor;
use App\Traits\UploadFile;

class PostObserve
{
    use UploadFile;

    public function created(Post $post)
    {
        $this->upload($post);
    }

    public function updated(Post $post)
    {
        $this->upload($post);
    }

    public function deleted(Post $post)
    {
        Visitor::where('visitorable_type', 'App\Models\Post')->where('visitorable_id', $post->id)->delete();
        Comment::where('commentable_type', 'App\Models\Post')->where('commentable_id', $post->id)->delete();
        Like::where('likeable_type', 'App\Models\Post')->where('likeable_id', $post->id)->delete();
        $this->remove($post->image, 'posts');
    }

    protected function upload($post)
    {
        $src = explode('/', $post->image);
        if (in_array('tmp', $src) || in_array('temp', $src))
            $post->image = $this->uploadImage($post->image, 'posts');
        $post->saveQuietly();
    }
}
