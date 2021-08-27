<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;

    protected $fillable = ['name'];
    public $timestamps = false;

    /*************************** Begin ATTRIBUTE Area ****************************/
    public function slices()
    {
        return $this->hasMany(SliderImage::class);
    }
    /*************************** End ATTRIBUTE Area ****************************/

    /*************************** Begin Scope Area ****************************/
    public function scopeAuthor($query)
    {
    }
    /*************************** End Scope Area ****************************/
}
