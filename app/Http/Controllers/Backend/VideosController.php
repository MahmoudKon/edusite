<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\BackendController;
use App\Http\Requests\VideoRequest;
use Illuminate\Support\Facades\DB;
use App\DataTables\VideoDataTable;
use App\Traits\UploadFile;
use App\Models\Course;
use App\Models\Video;
use App\Models\Tag;
use Exception;

class VideosController extends BackendController
{
    use UploadFile;

    public function __construct(VideoDataTable $dataTable, Video $video)
    {
        parent::__construct($dataTable, $video);
    }

    public function append()
    {
        return [
            'courses' => Course::when(request()->course, function ($query) {
                $query->where(['id' => request()->course, 'slug' => request()->slug]);
            })->select('id', 'title', 'visibility')->whereUserId(auth()->id())->get(),
            'tags' => Tag::get()
        ];
    }

    public function store(VideoRequest $request)
    {
        try {
            DB::beginTransaction();
            $video = Video::create($request->validated());
            $video->tags()->attach($request->tags);
            DB::commit();
            toast('Your Video has been created!', 'success');
            return response()->json(['redirect' => route('backend.videos.index')]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function update(VideoRequest $request, Video $video)
    {
        try {
            if (method_exists($video, 'checkAuthor') && $video->checkAuthor()) {
                toast('you can\'t visit this page', 'warning');
                return redirect()->back();
            }
            DB::beginTransaction();
            if (($request->has('file') || $request->url) && $video->file)
                $this->remove($video->file, 'videos');

            if ($request->type == 'file')
                $video->url = null;
            else
                $video->file = null;

            $video->update($request->except(['id', 'tags']));
            $video->tags()->sync($request->tags);
            DB::commit();
            toast('Your Video has been updated!', 'success');
            return response()->json(['redirect' => route('backend.videos.index')]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }
}
