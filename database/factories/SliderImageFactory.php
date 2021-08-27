<?php

namespace Database\Factories;

use App\Models\Slider;
use App\Models\SliderImage;
use Illuminate\Database\Eloquent\Factories\Factory;

class SliderImageFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = SliderImage::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title'     => $this->faker->sentence(rand(3, 6)),
            'desc'      => $this->faker->sentence(rand(5, 7)),
            'image'     => $this->faker->image(public_path('uploads/sliders/'), 360, 229, 'sliders', false),
            'slider_id' => Slider::select('id')->first()->id,
        ];
    }
}
