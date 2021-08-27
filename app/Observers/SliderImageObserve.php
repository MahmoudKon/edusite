<?php

namespace App\Observers;

use App\Models\SliderImage;
use App\Traits\UploadFile;

class SliderImageObserve
{
    use UploadFile;

    public function created(SliderImage $sliderImage)
    {
        $this->upload($sliderImage);
    }

    public function updated(SliderImage $sliderImage)
    {
        $this->upload($sliderImage);
    }

    public function deleted(SliderImage $sliderImage)
    {
        $this->remove($sliderImage->image, 'sliders');
    }

    protected function upload($sliderImage)
    {
        $src = explode('/', $sliderImage->image);
        if (in_array('tmp', $src) || in_array('temp', $src))
            $sliderImage->image = $this->uploadImage($sliderImage->image, 'sliders', 1513, 850);
        $sliderImage->saveQuietly();
    }
}
