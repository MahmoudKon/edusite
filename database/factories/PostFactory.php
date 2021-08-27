<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;

class PostFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Post::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title'         =>  $this->faker->sentence(rand(8, 12)),
            'desc'          =>  $this->faker->text(rand(900, 1500)),
            'image'         => $this->faker->image(public_path('uploads/posts/'), 360, 229, 'posts', false),
            'visibility'    => rand(0, 1),
            'category_id'   => Category::select('id')->whereVisibility(true)->inRandomOrder()->first()->id,
            'user_id'       => User::select('id')->whereIsTeacher(true)->inRandomOrder()->first()->id,
        ];
    }
}
