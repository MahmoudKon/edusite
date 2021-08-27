<?php

namespace App\Observers;

use App\Models\Category;
use App\Traits\UploadFile;

class CategoryObserve
{
    use UploadFile;

    public function deleted(Category $category)
    {
        foreach ($category->posts as $post) {
            $this->remove($post->image, 'posts');
            $post->delete();
        }

        foreach ($category->courses as $course) {
            $this->remove($course->image, 'courses');
            $course->delete();
        }
    }
}
