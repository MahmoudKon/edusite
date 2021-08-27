<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\BackendController;
use App\Models\SliderImage;

class SlicesController extends BackendController
{
    public function __construct(SliderImage $SliderImage)
    {
        parent::__construct(null, $SliderImage);
    }
}
