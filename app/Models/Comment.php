<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    protected $fillable = ['comment', 'commentable_type', 'commentable_id', 'user_id'];

    /*************************** Begin RELATIONS Area ****************************/
    public function commentable()
    {
        return $this->morphTo();
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /*************************** Begin SCOPE Area *********************************/
    public function scopePermission($query)
    {
        //
    }

    public function scopeAuthor($query)
    {
        if (auth()->user()->is_teacher)
            return $query->whereUserId(auth()->id());
    }
    /*************************** End SCOPE Area *********************************/

    public function getModel()
    {
        $array = explode('\\', $this->commentable_type);
        return end($array);
    }

    public function getUrl()
    {
        if ($this->getModel() == 'Video') {
            $slug = Video::select('slug')->whereId($this->commentable_id)->first()->slug;
            return url('course/video/' . $this->commentable_id . '?title=' . $slug . '#comment_' . $this->id);
        } else if ($this->getModel() == 'Course') {
            $slug = Course::select('slug')->whereId($this->commentable_id)->first()->slug;
            return url('course?id=' . $this->commentable_id . '&title=' . $slug . '#comment_' . $this->id);
        } else if ($this->getModel() == 'Post') {
            $slug = Post::select('slug')->whereId($this->commentable_id)->first()->slug;
            return url('post?id=' . $this->commentable_id . '&title=' . $slug . '#comment_' . $this->id);
        }
        return '#';
    }
}
