<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    use HasFactory, Sluggable;

    protected $fillable = ['title', 'slug', 'desc', 'file', 'url', 'type', 'course_id'];

    /*************************** Begin RELATIONS Area ****************************/
    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function visitors()
    {
        return $this->morphMany(Visitor::class, 'visitorable');
    }

    public function likes()
    {
        return $this->morphMany(Like::class, 'likeable');
    }

    public function tags()
    {
        return $this->morphToMany(Tag::class, 'taggable');
    }

    /*************************** Begin SCOPE Area *********************************/
    public function scopeAuthor($query)
    {
        if (auth()->user()->is_teacher)
            return $query->whereHas('course', function ($q) {
                return $q->whereUserId(auth()->id());
            });
    }


    /*************************** Begin ATTRIBUTES Area ****************************/
    public function sluggable(): array
    {
        return ['slug' => ['source' => 'title', 'onUpdate' => true,]];
    } // auto make slug from name field when create or update

    public function getVideoPathAttribute()
    {
        if ($this->type == 'file')
            return asset('uploads/videos/' . $this->file);
        return $this->url;
    } // To Return The Image Path

    public function checkAuthor()
    {
        if ($this->course->user_id != auth()->id())
            return true;
        return false;
    }
}
