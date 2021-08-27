<?php

namespace Database\Seeders;

use App\Models\Comment;
use App\Models\Course;
use App\Models\Post;
use App\Models\User;
use App\Models\Video;
use Faker\Factory;
use Illuminate\Database\Seeder;

class CommentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();
        for ($i = 0; $i < 30; $i++) {
            Comment::create([
                'comment'          => $faker->sentence(rand(8, 12)),
                'commentable_type' => 'App\Models\Post',
                'commentable_id'   => Post::select('id')->whereVisibility(true)->inRandomOrder()->first()->id,
                'user_id'          => User::select('id')->inRandomOrder()->first()->id,
            ]);
        }

        for ($i = 0; $i < 30; $i++) {
            Comment::create([
                'comment'          => $faker->sentence(rand(8, 12)),
                'commentable_type' => 'App\Models\Course',
                'commentable_id'   => Course::select('id')->whereVisibility(true)->inRandomOrder()->first()->id,
                'user_id'          => User::select('id')->inRandomOrder()->first()->id,
            ]);
        }

        for ($i = 0; $i < 30; $i++) {
            Comment::create([
                'comment'          => $faker->sentence(rand(8, 12)),
                'commentable_type' => 'App\Models\Video',
                'commentable_id'   => Video::select('id')->inRandomOrder()->first()->id,
                'user_id'          => User::select('id')->inRandomOrder()->first()->id,
            ]);
        }
    }
}
