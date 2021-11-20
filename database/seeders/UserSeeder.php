<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use App\Models\User;
use App\Models\UserFollow;
use Faker\Factory;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();
        $admin = User::insert([
            'name'              => 'Admin',
            'email'             => 'admin@app.com',
            'password'          => Hash::make(123),
            'image'             => $faker->image(public_path('uploads/users/'), 200, 200, 'user', false),
            'remember_token'    => Str::random(10),
            'email_verified_at' => now(),
            'is_admin'          => 1,
            'is_teacher'        => 0,
        ]);

        User::insert([
            'name'              => 'Teacher',
            'email'             => 'teacher@app.com',
            'password'          => Hash::make(123),
            'image'             => $faker->image(public_path('uploads/users/'), 200, 200, 'user', false),
            'remember_token'    => Str::random(10),
            'email_verified_at' => now(),
            'is_admin'          => 0,
            'is_teacher'        => 1,
        ]);

        User::insert([
            'name'              => 'user',
            'email'             => 'user@app.com',
            'password'          => Hash::make(123),
            'image'             => $faker->image(public_path('uploads/users/'), 200, 200, 'user', false),
            'remember_token'    => Str::random(10),
            'email_verified_at' => now(),
            'is_admin'          => 0,
            'is_teacher'        => 0,
        ]);

        User::factory(10)->create();

        for ($i = 0; $i < 20; $i++) {
            $follower = User::select('id')->inRandomOrder()->first()->id;
            UserFollow::create([
                'follower_id' => $follower,
                'follow_id'   => User::select('id')->where('id', '<>', $follower)->inRandomOrder()->first()->id,
            ]);
        }
    }
}
