<?php

namespace Database\Seeders;

use App\Models\Post;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;
use App\Models\Video;
use App\Models\Tag;
use App\Models\Visitor;
use Faker\Factory;

class VideoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Video::factory(50)->create();
        for ($i=0; $i < 70; $i++) {
            DB::table('taggables')->insert([
                'taggable_type' => 'App\Models\Video',
                'tag_id'        => Tag::select('id')->inRandomOrder()->first()->id,
                'taggable_id'   => Video::select('id')->inRandomOrder()->first()->id
            ]);
        }

        $faker = Factory::create();
        for ($i=0; $i < 100; $i++) {
            Visitor::create([
                'visitorable_type' => 'App\Models\Video',
                'visitorable_id'   => Video::select('id')->inRandomOrder()->first()->id,
                'ip_address'       => $faker->ipv4(),
                'agent'            => $faker->userAgent(),
            ]);
        }
    }
}
