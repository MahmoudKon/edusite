<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Traits\HasRoles;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable implements JWTSubject
{
    use HasFactory, Notifiable, HasRoles;

    protected $fillable = ['name', 'email', 'image', 'password', 'job', 'bio', 'is_admin', 'is_teacher'];

    protected $hidden = ['password', 'remember_token',];

    protected $casts = ['email_verified_at' => 'datetime',];

    /**
     * Get the identifier that will be stored in the subject claim of the JWT.
     *
     * @return mixed
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }

    /*************************** Begin RELATIONS Area ****************************/
    public function likes()
    {
        return $this->hasMany(Like::class);
    }

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function courses()
    {
        return $this->hasMany(Course::class);
    }

    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }

    public function follows()
    {
        return $this->belongsToMany(User::class, 'user_follow', 'follower_id', 'follow_id', 'id');
    }

    public function followers()
    {
        return $this->belongsToMany(User::class, 'user_follow', 'follow_id', 'follower_id', 'id');
    }

    /*************************** Begin SCOPE Area *********************************/
    public function scopeAuthor($query)
    {
    }
    /*************************** Begin ATTRIBUTES Area ****************************/
    public function setPasswordAttribute($value)
    {
        return $this->attributes['password'] = Hash::make(($value));
    } // Auto Hash Password

    public function getImageUrlAttribute()
    {
        return asset('uploads/users/' . $this->image);
    } // return image path
}
