<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Support\Facades\Notification;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Notifications\AddComment;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Video;
use App\Models\Post;
use App\Models\User;
use Exception;

class CommentsController extends Controller
{
    public function courseComment(Request $request, Course $course)
    {
        try {
            DB::beginTransaction();
            if ($comment = $course->comments()->create(array_merge($request->only('comment'), ['user_id' => auth()->id()]))) {
                $data = [
                    'comment_id'  => 'comment_' . $comment->id,
                    'message'     => auth()->user()->name . ' commented on your Course.',
                    'comment'     => $comment->comment,
                    'image'       => auth()->user()->image_url,
                    'title'       => $course->title,
                    'name'        => auth()->user()->name,
                    'date'        => $comment->created_at->diffForHumans(),
                    'url'         => route('course', ['id' => $course->id, 'title' => $course->slug]) . '#comment_' . $comment->id,
                ];

                $author = User::whereId($course->user_id)->first();
                if ($author->id != $comment->user_id)
                    Notification::send($author, new AddComment($data));

                $data['message'] = auth()->user()->name . ' He commented on a Course you follow';
                $users = User::whereNotIn('id', [$author->id, $comment->user_id])->whereHas('comments', function ($query) use ($course) {
                    return $query->where('commentable_type', 'App\Models\Course')->where('commentable_id', $course->id);
                })->get();
                Notification::send($users, new AddComment($data));

                DB::commit();
                return response()->json($data);
            }
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }

    public function videoComment(Request $request, Video $video)
    {
        try {
            DB::beginTransaction();
            if ($comment = $video->comments()->create(array_merge($request->only('comment'), ['user_id' => auth()->id()]))) {
                $data = [
                    'comment_id'  => 'comment_' . $comment->id,
                    'message'     => auth()->user()->name . ' commented on your Video.',
                    'comment'     => $comment->comment,
                    'image'       => auth()->user()->image_url,
                    'title'       => $video->title,
                    'name'        => auth()->user()->name,
                    'date'        => $comment->created_at->diffForHumans(),
                    'url'         => route('course.video', ['video' => $video->id, 'title' => $video->slug]) . '#comment_' . $comment->id,
                ];

                $author = User::whereId($video->course->user_id)->first();
                if ($author->id != $comment->user_id)
                    Notification::send($author, new AddComment($data));

                $data['message'] = auth()->user()->name . ' He commented on a Video you follow';

                $users = User::whereNotIn('id', [$author->id, $comment->user_id])->whereHas('comments', function ($query) use ($video) {
                    return $query->where('commentable_type', 'App\Models\Video')->where('commentable_id', $video->id);
                })->get();

                Notification::send($users, new AddComment($data));
                DB::commit();
                return response()->json($data);
            }
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }

    public function postComment(Request $request, Post $post)
    {
        try {
            DB::beginTransaction();
            if ($comment = $post->comments()->create(array_merge($request->only('comment'), ['user_id' => auth()->id()]))) {
                $data = [
                    'comment_id'  => 'comment_' . $comment->id,
                    'message'     => auth()->user()->name . ' commented on your post.',
                    'comment'     => $comment->comment,
                    'image'       => auth()->user()->image_url,
                    'title'       => $post->title,
                    'name'        => auth()->user()->name,
                    'date'        => $comment->created_at->diffForHumans(),
                    'url'         => route('post', ['id' => $post->id, 'title' => $post->slug]) . '#comment_' . $comment->id,
                ];

                $author = User::whereId($post->user_id)->first();
                if ($author->id != $comment->user_id)
                    Notification::send($author, new AddComment($data));

                $data['message'] = auth()->user()->name . ' He commented on a Post you follow';
                $users = User::whereNotIn('id', [$author->id, $comment->user_id])->whereHas('comments', function ($query) use ($post) {
                    return $query->where('commentable_type', 'App\Models\Post')->where('commentable_id', $post->id);
                })->get();
                Notification::send($users, new AddComment($data));
                DB::commit();
                return response()->json(['comment' => $comment->comment, 'id' => $comment->id, 'image' => auth()->user()->image_url, 'name' => auth()->user()->name, 'date' => $comment->created_at->diffForHumans()]);
            }
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }
}
