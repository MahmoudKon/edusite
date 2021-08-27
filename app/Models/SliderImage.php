<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SliderImage extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'desc', 'image', 'slider_id'];
    public $timestamps = false;

    /*************************** Begin RELATIONS Area ****************************/
    public function slider()
    {
        return $this->belongsTo(Slider::class);
    }
    /*************************** End RELATIONS Area ****************************/

    /*************************** Begin SCOPE Area *********************************/

    /*************************** End SCOPE Area *********************************/


    /*************************** Begin ATTRIBUTES Area ****************************/
    public function getImageUrlAttribute()
    {
        return asset('uploads/sliders/' . $this->image);
    } // return image path
}
