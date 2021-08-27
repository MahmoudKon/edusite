<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\SliderImage;
use App\Models\Category;
use App\Models\Comment;
use App\Models\Slider;
use App\Models\Course;
use App\Models\Favorite;
use App\Models\Like;
use App\Models\Video;
use App\Models\User;
use App\Models\Post;
use App\Models\Tag;
use App\Models\UserFollow;
use App\Models\Visitor;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // make all tables is empty
        SliderImage::query()->delete();
        UserFollow::query()->delete();
        Favorite::query()->delete();
        Category::query()->delete();
        Visitor::query()->delete();
        Slider::query()->delete();
        Course::query()->delete();
        Video::query()->delete();
        Post::query()->delete();
        User::query()->delete();
        Like::query()->delete();
        Tag::query()->delete();
        Comment::query()->delete();
        // end

        foreach (glob(public_path('uploads/*/*.*')) as $file)
            unlink($file);

        $this->call(CategorySeeder::class);
        $this->call(TagSeeder::class);
        $this->call(UserSeeder::class);
        $this->call(CourseSeeder::class);
        $this->call(VideoSeeder::class);
        $this->call(PostSeeder::class);
        $this->call(CommentSeeder::class);
        $this->call(SliderSeeder::class);
        $this->call(SliderImageSeeder::class);
    }
}
