<?php

namespace App\Observers;

use App\Models\Comment;
use App\Models\Like;
use App\Traits\UploadFile;
use App\Models\Video;
use App\Models\Visitor;

class VideoObserve
{
    use UploadFile;

    public function created(Video $video)
    {
        $this->upload($video);
    }

    public function updated(Video $video)
    {
        $this->upload($video);
    }

    public function deleted(Video $video)
    {
        Visitor::where('visitorable_type', 'App\Models\Video')->where('visitorable_id', $video->id)->delete();
        Comment::where('commentable_type', 'App\Models\Video')->where('commentable_id', $video->id)->delete();
        Like::where('likeable_type', 'App\Models\Video')->where('likeable_id', $video->id)->delete();

        if ($video->type == 'file')
            $this->remove($video->file, 'videos');
    }

    protected function upload($video)
    {
        $src = explode('/', $video->file);
        if (in_array('tmp', $src) || in_array('temp', $src)) {
            $video->file = $this->uploadVideo($video->file, 'videos');
            $video->saveQuietly();
        }
    }
}
