<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use App\Models\User;

class Post extends Model
{
    use HasFactory, Sluggable;

    protected $fillable = ['title', 'slug', 'desc', 'image', 'visibility', 'user_id', 'category_id'];

    /*************************** Begin RELATIONS Area ****************************/
    public function tags()
    {
        return $this->morphToMany(Tag::class, 'taggable');
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

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
    /*************************** End RELATIONS Area *********************************/

    /*************************** Begin SCOPE Area *********************************/
    public function sluggable(): array
    {
        return ['slug' => ['source' => 'title', 'onUpdate' => true,]];
    } // auto make slug from name field when create or update

    public function getImageUrlAttribute()
    {
        return asset('uploads/posts/' . $this->image);
    } // return image path

    public function scopeAuthor($query)
    {
        if (auth()->user()->is_teacher)
            return $query->whereUserId(auth()->id());
    }
    /*************************** END SCOPE Area ****************************/

    /*************************** Begin ATTRIBUTES Area ****************************/
    public function visibilityType()
    {
        return $this->visibility == 1
            ? '<a href="' . route('backend.posts.visibility-toggle', $this->id) . '" class="btn btn-success btn-sm visibility-toggle"> <i class="fas fa-lightbulb"></i>&nbsp; Visible</a>'
            : '<a href="' . route('backend.posts.visibility-toggle', $this->id) . '" class="btn btn-warning btn-sm visibility-toggle"> <i class="far fa-lightbulb"></i>&nbsp; Hidden</a>';
    }

    public function checkAuthor()
    {
        if ($this->user_id != auth()->id())
            return true;
        return false;
    }
    /*************************** END ATTRIBUTES Area ****************************/
}
