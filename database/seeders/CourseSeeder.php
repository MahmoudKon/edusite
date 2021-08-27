<?php

namespace Database\Seeders;

use App\Models\Course;
use App\Models\Favorite;
use App\Models\Rating;
use App\Models\User;
use Faker\Factory;
use Illuminate\Database\Seeder;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Course::factory(25)->create();
        $faker = Factory::create();

        for ($i=0; $i < 100; $i++) {
            Rating::create([
                'ratingable_type' => 'App\Models\Course',
                'ratingable_id'   => Course::select('id')->whereVisibility(true)->inRandomOrder()->first()->id,
                'star'            => rand(1,5),
                'ip_address'      => $faker->ipv4(),
                'agent'           => $faker->userAgent(),
            ]);
        }

        for ($i=0; $i < 25; $i++) {
            Favorite::create([
                'user_id'   => User::select('id')->inRandomOrder()->first()->id,
                'course_id' => Course::select('id')->whereVisibility(true)->inRandomOrder()->first()->id,
            ]);
        }
    }
}
