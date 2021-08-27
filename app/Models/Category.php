<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory, Sluggable;


    protected $fillable = ['name', 'slug', 'order', 'visibility'];
    public $timestamps = false;

    /*************************** Begin RELATIONS Area ****************************/
    public function courses()
    {
        return $this->hasMany(Course::class);
    }

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    /*************************** Begin SCOPE Area *********************************/
    public function scopewhereVisible($query, $model)
    {
        return $query->whereHas($model, function ($q) {
            return $q->whereVisibility(1);
        });
    }


    /*************************** Begin ATTRIBUTES Area ****************************/
    public function sluggable(): array
    {
        return ['slug' => ['source' => 'name', 'onUpdate' => true,]];
    } // auto make slug from name field when create or update

    public function order()
    {
        return '<span class="badge badge-primary badge-pill">' . $this->order . '</span>';
    }

    public function visibilityType()
    {
        return $this->visibility == 1
            ? '<a href="' . route('backend.categories.visibility-toggle', $this->id) . '" class="btn btn-success btn-sm visibility-toggle"> <i class="fas fa-lightbulb"></i>&nbsp; Visible</a>'
            : '<a href="' . route('backend.categories.visibility-toggle', $this->id) . '" class="btn btn-warning btn-sm visibility-toggle"> <i class="far fa-lightbulb"></i>&nbsp; Hidden</a>';
    }
}
