<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\BackendController;
use App\Http\Requests\CourseRequest;
use App\DataTables\CoursesDataTable;
use Illuminate\Support\Facades\DB;
use App\Traits\UploadFile;
use App\Models\Category;
use App\Models\Course;
use Exception;

class CoursesController extends BackendController
{
    use UploadFile;

    public function __construct(CoursesDataTable $dataTable, Course $course)
    {
        parent::__construct($dataTable, $course);
    }

    public function append()
    {
        return [
            'categories' => Category::when(request()->category, function ($query) {
                $query->where(['id' => request()->category, 'slug' => request()->slug]);
            })->select('id', 'name', 'visibility')->get(),
            'no_ajax' => ''
        ];
    }

    public function store(CourseRequest $request)
    {
        try {
            DB::beginTransaction();
            Course::create(array_merge($request->except(['id', 'discount', 'start_date', 'end_date']), $this->checkIfNull($request)));
            DB::commit();
            toast('Your Course has been created!', 'success');
            return response()->json(['redirect' => route('backend.courses.index')]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function update(CourseRequest $request, Course $course)
    {
        try {
            if (method_exists($course, 'checkAuthor') && $course->checkAuthor()) {
                toast('you can\'t visit this page', 'warning');
                return response()->json(['redirect' => route('backend.courses.index')]);
            }
            DB::beginTransaction();
            if ($request->has('image'))
                $this->remove($course->image, 'courses');
            $course->update(array_merge($request->except(['id', 'discount', 'start_date', 'end_date']), $this->checkIfNull($request)));
            DB::commit();
            toast('Your Course has been updated!', 'success');
            return response()->json(['redirect' => route('backend.courses.index')]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function checkIfNull($request)
    {
        if ($request->price == null || $request->discount == null) {
            return [
                'start_date' => null,
                'end_date'   => null,
                'discount'   => null,
                'user_id' => auth()->id()
            ];
        }
        return [
            'start_date' => $request->start_date,
            'end_date'   => $request->end_date,
            'discount'   => $request->discount,
            'user_id' => auth()->id()
        ];
    }
}
