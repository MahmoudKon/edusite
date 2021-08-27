<?php

namespace App\Http\Middleware;

use App\Models\SliderImage;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class ShareSliderImages
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if (auth()->check()) {
            view()->share(
                'slider_images',
                Cache::remember('slider_images', 60 * 60 * 24, function () {
                    return SliderImage::select('title', 'desc', 'image')->whereHas('slider', function ($query) {
                        return $query->whereName('home');
                    })->get();
                })
            );
        }
        return $next($request);
    }
}
