<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\BackendController;
use App\DataTables\CategoriesDataTable;
use App\Http\Requests\CategoryRequest;
use App\Models\Category;
use Exception;

class CategoriesController extends BackendController
{
    public function __construct(CategoriesDataTable $dataTable, Category $category)
    {
        parent::__construct($dataTable, $category);
    }

    public function index()
    {
        try {
            if (request()->ajax())
                return $this->dataTable->render('backend.includes.tables.rows');

            return view('backend.categories.index', ['count' => Category::count()]);
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

    public function store(CategoryRequest $request)
    {
        try {
            Category::create($request->except(['id']));
            return response()->json(['message' => 'Your Category has been created!', 'icon' => 'success', 'count' => Category::count()]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function edit($id)
    {
        try {
            $row = Category::findOrFail($id);
            return view('backend.includes.forms.form-update', compact('row'));
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function update(CategoryRequest $request, Category $category)
    {
        try {
            $category->update($request->except(['id']));
            return response()->json(['message' => 'Your Category has been updated!', 'icon' => 'success']);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }
}
