<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserFollow extends Model
{
    use HasFactory;

    protected $fillable     = ['follow_id', 'follower_id'];
    public $timestamps      = false;
    protected $table        = 'user_follow';
}
