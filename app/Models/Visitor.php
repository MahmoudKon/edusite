<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Visitor extends Model
{
    use HasFactory;

    protected $fillable = ['ip_address', 'agent', 'visitorable_type', 'visitorable_id'];
    public $timestamps = false;

    /*************************** Begin RELATIONS Area ****************************/
    public function visitorable()
    {
        return $this->morphTo();
    }


    /*************************** Begin SCOPE Area *********************************/
    public function scopeCheckIfVisitor($query)
    {
        return $query->whereIpAddress(request()->ip())->whereAgent(request()->userAgent())->count();
    }

    public function scopeCreateVisitor($query)
    {
        return $query->create(['ip_address' => request()->ip(), 'agent' => request()->userAgent()]);
    }
}
