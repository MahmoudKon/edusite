<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Category;
use App\Models\Course;
use App\Models\User;

class CourseFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Course::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title'        =>  $this->faker->sentence(rand(8, 12)),
            'image'        =>  $this->faker->image(public_path('uploads/courses/'), 360, 229, 'courses', false),
            'desc'         =>  $this->faker->text(rand(900, 1500)),
            'price'        =>  $this->faker->numberBetween(10, 600),
            'start_date'   =>  date("Y-m-d"),
            'end_date'     =>  date("Y-m-d", time() + ((60 * 60 * 24) * rand(1, 4))),
            'discount'     =>  $this->faker->numberBetween(1, 100),
            'visibility'   =>  rand(0, 1),
            'category_id'  =>  Category::select('id')->whereVisibility(true)->inRandomOrder()->first()->id,
            'user_id'      =>  User::select('id')->whereIsTeacher(true)->inRandomOrder()->first()->id,
        ];
    }
}
