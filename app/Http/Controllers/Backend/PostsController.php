<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\BackendController;
use App\DataTables\PostsDataTable;
use App\Http\Requests\PostRequest;
use App\Traits\UploadFile;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Exception;
use Illuminate\Support\Facades\DB;

class PostsController extends BackendController
{
    use UploadFile;

    public function __construct(PostsDataTable $dataTable, Post $post)
    {
        parent::__construct($dataTable, $post);
    }

    public function append()
    {
        return [
            'categories' => Category::when(request()->category, function ($query) {
                $query->where(['id' => request()->category, 'slug' => request()->slug]);
            })->select('id', 'name', 'visibility')->get(),
            'tags'       => Tag::get(),
            'no_ajax'    => ''
        ];
    }

    public function store(PostRequest $request)
    {
        try {
            $post = Post::create(array_merge($request->except(['id']), ['user_id' => auth()->id()]));
            $post->tags()->attach($request->tags);
            toast('Your Post has been created!', 'success');
            return response()->json(['redirect' => route('backend.posts.index')]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function update(PostRequest $request, Post $post)
    {
        try {
            if (method_exists($post, 'checkAuthor') && $post->checkAuthor()) {
                toast('you can\'t visit this page', 'warning');
                return redirect()->back();
            }
            DB::beginTransaction();
            if ($request->has('image')) {
                if ($post->image)
                    $this->remove($post->image, 'posts');
            }
            $post->update($request->except(['id']));
            $post->tags()->sync($request->tags);
            DB::commit();
            toast('Your Post has been updated!', 'success');
            return response()->json(['redirect' => route('backend.posts.index')]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }
}
