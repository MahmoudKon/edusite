<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\BackendController;
use App\DataTables\TagsDataTable;
use App\Http\Requests\TagRequest;
use App\Models\Tag;
use Exception;

class TagsController extends BackendController
{
    public function __construct(TagsDataTable $dataTable, Tag $tag)
    {
        parent::__construct($dataTable, $tag);
    }

    public function index()
    {
        try {
            if (request()->ajax())
                return $this->dataTable->render('backend.includes.tables.rows');

            return view('backend.tags.index', ['count' => Tag::count()]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function create()
    {
        try {
            return view('backend.includes.forms.form-create');
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function store(TagRequest $request)
    {
        try {
            Tag::create($request->except(['id']));
            return response()->json(['message' => 'Your Tag has been created!', 'icon' => 'success', 'count' => Tag::count()]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function edit($id)
    {
        try {
            $row = Tag::findOrFail($id);
            return view('backend.includes.forms.form-update', compact('row'));
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function update(TagRequest $request, Tag $tag)
    {
        try {
            $tag->update($request->except(['id']));
            return response()->json(['message' => 'Your Tag has been created!', 'icon' => 'success', 'count' => Tag::count()]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }
}
