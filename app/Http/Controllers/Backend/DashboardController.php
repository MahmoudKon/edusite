<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Course;
use App\Models\Post;
use App\Models\Tag;
use App\Models\User;
use App\Models\Video;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class DashboardController extends Controller
{
    public function index()
    {
        $users      = User::count();
        $categories = Category::count();
        $tags       = Tag::count();
        $roles      = Role::count();
        $permissions = Permission::count();
        $courses    = Course::count();
        $posts      = Post::count();
        $videos     = Video::count();
        return view('backend.dashboard', compact('users', 'categories', 'courses', 'posts', 'videos', 'tags', 'roles', 'permissions'));
    }

    public function showNotifications()
    {
        return view('layouts.includes.backend.notifications');
    }
}
