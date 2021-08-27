<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SliderImage;
use App\Models\Category;
use App\Models\Course;
use App\Models\Video;
use App\Models\Post;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Support\Facades\Cache;

class FrontendController extends Controller
{
    public function home()
    {
        $courses = Cache::remember('homeCourses', 60 * 60, function () {
            return Course::whereVisibility(1)->with('user')->withCount('favorites')->withAvg('ratings', 'star')
                ->inRandomOrder()->take(3)->get();
        });

        $teachers = Cache::remember('teachers', 60 * 60, function () {
            return User::where('is_teacher', 1)->orWhere('is_admin', 1)->take(4)->get();
        });

        return view('frontend.home.index', compact('courses', 'teachers'));
    }

    public function courses(Request $request)
    {
        $courses = Course::whereVisibility(1)
            ->with('user')->withCount('favorites')->withAvg('ratings', 'star')
            ->when($request->search, function ($query) use ($request) {
                return $query->where('title', 'like', '%' . $request->search . '%');
                // This will return all courses that have same title
            })->when($request->category, function ($query) use ($request) {
                return $query->whereHas('category', function ($q) use ($request) {
                    return $q->where('slug', 'like', '%' . $request->category . '%');
                    // This will return all courses that have in same category name
                });
            })->when($request->tag, function ($query) use ($request) {
                return $query->whereHas('videos', function ($q) use ($request) {
                    return $q->whereHas('tags', function ($qu) use ($request) {
                        return $qu->where('slug', 'like', '%' . $request->tag . '%');
                    });
                });
                // This will return all courses must have videos and this videos in same tag name
            })->when($request->id, function ($query) use ($request) {
                return $query->whereHas('user', function ($q) use ($request) {
                    return $q->whereId($request->id)->whereName($request->teacher);
                    // This will return all courses that have in same user name
                });
            })->paginate(6);

        if ($courses) {
            $latest = Course::whereVisibility(1)->whereHas('videos')->latest()->take(3)->get();
            $tags = Tag::whereVisibility(1)->whereHas('videos')->withCount('videos')->take(10)->get();
            $categories = Category::whereVisibility(1)->withCount('courses')->whereHas('courses', function ($query) {
                return $query->whereVisibility(1);
            })->get();
            return view('frontend.courses.index', compact('courses', 'latest', 'tags', 'categories'));
        }
        return abort(404);
    }

    public function course(Request $request)
    {
        $course = Course::whereId($request->id)->whereSlug($request->title)->whereVisibility(1)
            ->with(['user', 'videos'])->withCount('ratings')->withCount('favorites')->withCount('comments')->withCount('videos')->withAvg('ratings', 'star')->first();
        if ($course) {
            $latest = Course::whereVisibility(1)->whereHas('videos')->withCount('videos')->latest()->take(3)->get();
            return view('frontend.courses.single.index', compact('course', 'latest'));
        }
        return abort(404);
    }

    public function videos(Request $request)
    {
        $course = Course::whereId($request->id)->whereSlug($request->course)->whereVisibility(1)->with(['user', 'videos', 'videos.tags'])->first();
        if ($course) {
            $latest = Cache::remember('latestVideos', 60 * 60, function () use ($course) {
                return Video::where('course_id', '<>', $course->id)->latest()->take(10)->get();
            });
            return view('frontend.videos.index', compact('course', 'latest'));
        }
        return abort(404);
    }

    public function video(Request $request, $id)
    {
        $video = Video::whereId($request->video)->whereSlug($request->title)->with(['course', 'course.user', 'comments', 'comments.user'])->withCount(['visitors', 'likes'])->first();
        if ($video) {
            if ($video->visitors()->checkIfVisitor() == 0)
                $video->visitors()->create(['ip_address' => request()->ip(), 'agent' => request()->userAgent()]);

            Cache::forget('listVideos');
            $list = Cache::remember('listVideos', 60 * 60, function () use ($video) {
                return Video::whereCourseId($video->course_id)->get();
            });
            $random = Cache::remember('latestVideos', 60 * 60, function () use ($video) {
                return Video::where('course_id', '<>', $video->course_id)->latest()->take(10)->get();
            });
            return view('frontend.videos.single.index', compact('video', 'list', 'random'));
        }
        return abort(404);
    }

    public function blog(Request $request)
    {
        $posts = Post::whereVisibility(1)->withCount(['likes', 'visitors'])
            ->when($request->search, function ($query) use ($request) {
                return $query->where('title', 'like', '%' . $request->search . '%');
                // This will return all posts that have same title
            })->when($request->category, function ($query) use ($request) {
                return $query->whereHas('category', function ($q) use ($request) {
                    return $q->where('slug', 'like', '%' . $request->category . '%');
                    // This will return all posts that have in same category name
                });
            })->when($request->tag, function ($query) use ($request) {
                return $query->whereHas('tags', function ($q) use ($request) {
                    return $q->where('slug', 'like', '%' . $request->tag . '%');
                });
                // This will return all posts same tag name
            })->when($request->id, function ($query) use ($request) {
                return $query->whereHas('user', function ($q) use ($request) {
                    return $q->whereId($request->id)->whereName($request->teacher);
                    // This will return all courses that have in same user name
                });
            })->with('user')->paginate(6);

        if ($posts) {
            $latest  = Post::whereVisibility(1)->orderBy('updated_at', 'desc')->take(3)->get();
            $tags    = Tag::whereVisibility(1)->whereHas('posts')->take(10)->get();
            $categories = Category::whereVisibility(1)->whereVisible('posts')->get();
            return view('frontend.blog.index', compact('latest', 'tags', 'categories', 'posts'));
        }
        return abort(404);
    }

    public function post(Request $request)
    {
        $post = Post::whereId($request->id)->whereSlug($request->title)->whereVisibility(1)
            ->with(['user', 'category', 'tags'])->withCount(['likes', 'visitors'])->first();

        if ($post) {
            if ($post->visitors()->checkIfVisitor() == 0)
                $post->visitors()->create(['ip_address' => request()->ip(), 'agent' => request()->userAgent()]);

            $latest     = Post::whereVisibility(1)->latest()->take(3)->get();
            $tags       = Tag::whereVisibility(1)->whereHas('posts')->take(10)->get();
            $categories = Category::whereVisibility(1)->whereHas('posts', function ($query) {
                return $query->whereVisibility(1);
            })->get();
            return view('frontend.blog.single.index', compact('latest', 'tags', 'categories', 'post'));
        }
        return abort(404);
    }

    public function showNotifications()
    {
        return view('layouts.includes.frontend.notifications');
    }

    public function clearNotifications()
    {
        auth()->user()->notifications()->delete();
        return redirect()->back();
    }

    public function about()
    {
        $teachers = Cache::remember('teachers', 60 * 60, function () {
            return User::where('is_teacher', 1)->orWhere('is_admin', 1)->take(4)->get();
        });
        return view('frontend.about.index', compact('teachers'));
    }

    public function contact()
    {
        return view('frontend.contact.index');
    }
}
