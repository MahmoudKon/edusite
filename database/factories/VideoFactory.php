<?php

namespace Database\Factories;

use App\Models\Course;
use App\Models\Video;
use Illuminate\Database\Eloquent\Factories\Factory;

class VideoFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Video::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title'        =>  $this->faker->sentence(rand(8, 12)),
            'desc'         =>  $this->faker->text(rand(900, 1500)),
            'url'          =>  'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4',
            'type'         =>  'url',
            'course_id'    =>  Course::select('id')->whereVisibility(true)->inRandomOrder()->first()->id,
        ];
    }
}
