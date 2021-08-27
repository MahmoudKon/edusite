<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory, Sluggable;

    protected $fillable = ['title', 'slug', 'image', 'desc', 'price', 'start_date', 'end_date', 'discount', 'visibility', 'category_id', 'user_id'];

    /*************************** Begin RELATIONS Area ****************************/
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function ratings()
    {
        return $this->morphMany(Rating::class, 'ratingable');
    }

    public function likes()
    {
        return $this->morphMany(Like::class, 'likeable');
    }

    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }

    public function videos()
    {
        return $this->hasMany(Video::class);
    }

    public function user()
    {
        return $this->belongsto(User::class);
    }

    /*************************** Begin SCOPE Area *********************************/
    public function scopeAuthor($query)
    {
        if (auth()->user()->is_teacher)
            return $query->whereUserId(auth()->id());
    }

    /*************************** Begin ATTRIBUTES Area ****************************/
    public function sluggable(): array
    {
        return ['slug' => ['source' => 'title', 'onUpdate' => true,]];
    } // auto make slug from name field when create or update

    public function getImageUrlAttribute()
    {
        return asset('uploads/courses/' . $this->image);
    } // return image path

    public function Total()
    {
        if ($this->discount)
            return '$' . ($this->price - ($this->price * $this->discount / 100));

        return $this->price ? '$' . $this->price : 'FREE';
    } // return the price after discount

    public function starsChart($star)
    {
        if ($this->ratings()->whereStar($star)->count())
            return $this->ratings()->whereStar($star)->count() / $this->ratings()->count() * 100;

        return 0;
    }

    public function checkAuthor()
    {
        if ($this->user_id != auth()->id())
            return true;
        return false;
    }
}
