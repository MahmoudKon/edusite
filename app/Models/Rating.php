<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    use HasFactory;
    protected $fillable = ['ip_address', 'agent', 'star'];
    public $timestamps = false;

    /*************************** Begin RELATIONS Area ****************************/
    public function ratingable()
    {
        return $this->morphTo();
    }

    /*************************** Begin SCOPE Area *********************************/
    public function scopeCheckIfRate($query)
    {
        return $query->whereIpAddress(request()->ip())->whereAgent(request()->userAgent())->first();
    }
}
