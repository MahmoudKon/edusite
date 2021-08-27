<?php

namespace App\Observers;

use App\Models\Comment;
use App\Traits\UploadFile;
use App\Models\Course;
use App\Models\Favorite;

class CourseObserve
{
    use UploadFile;

    public function created(Course $course)
    {
        $this->upload($course);
    }

    public function updated(Course $course)
    {
        $this->upload($course);
    }

    public function deleted(Course $course)
    {
        $this->remove($course->image, 'courses');

        foreach ($course->videos as $video) {
            $this->remove($video->image, 'videos');
            $video->delete();
        }

        Comment::where('commentable_type', 'App\Models\Course')->where('commentable_id', $course->id)->delete();
        Favorite::where('course_id', $course->id)->delete();
    }

    protected function upload($course)
    {
        $src = explode('/', $course->image);
        if (in_array('tmp', $src) || in_array('temp', $src))
            $course->image = $this->uploadImage($course->image, 'courses');
        $course->saveQuietly();
    }
}
