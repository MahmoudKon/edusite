<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\Tag;
use App\Models\Visitor;
use Faker\Factory;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Post::factory(10)->create();
        for ($i=0; $i < 70; $i++) {
            DB::table('taggables')->insert([
                'taggable_type' => 'App\Models\Post',
                'tag_id'        => Tag::select('id')->inRandomOrder()->first()->id,
                'taggable_id'   => Post::select('id')->inRandomOrder()->first()->id
            ]);
        }

        $faker = Factory::create();
        for ($i=0; $i < 100; $i++) {
            Visitor::create([
                'visitorable_type' => 'App\Models\Post',
                'visitorable_id'   => Post::select('id')->whereVisibility(true)->inRandomOrder()->first()->id,
                'ip_address'       => $faker->ipv4(),
                'agent'            => $faker->userAgent(),
            ]);
        }
    }
}
