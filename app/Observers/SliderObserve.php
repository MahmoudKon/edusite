<?php

namespace App\Observers;

use App\Models\Slider;

class SliderObserve
{
    public function deleted(Slider $slider)
    {
        foreach ($slider->slices as $slice) {
            $slice->delete();
        }
    }
}
