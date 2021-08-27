<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Rating;

class RatingsController extends Controller
{
    public function vote(Request $request, Course $course)
    {
        $course->ratings()->updateOrCreate(['id' => $request->id], ['ip_address' => request()->ip(), 'agent' => request()->userAgent(), 'star' => $request->star]);
        return redirect()->back();
    }
}
