<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CourseResource extends JsonResource
{
    // public static $wrap = 'courses'; // To Add Index Object On Collection Api

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return parent::toArray($request);

        // return [
        //     'id' => $this->id,
        //     'title' => $this->title,
        //     'desc' => $this->desc,
        //     'videos' => $this->videos,

        // ];
    }
}
