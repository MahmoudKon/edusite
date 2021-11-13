<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Traits\UploadFile;
use Exception;

class BackendController extends Controller
{
    use UploadFile;

    public $dataTable, $model;

    public function __construct($dataTable, $model)
    {
        $this->dataTable = $dataTable;
        $this->model = $model;
    }

    public function index()
    {
        try {
            if (request()->ajax())
                return $this->dataTable->render('backend.includes.tables.rows');

            return view('backend.includes.pages.index-page', ['count' => $this->model::author()->count(), 'no_ajax' => '']);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function create()
    {
        try {
            return view('backend.includes.pages.form-page', $this->append());
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function show($id)
    {
        $row = $this->model::findOrFail($id);
        dd($row);
    }

    public function edit($id)
    {
        try {
            $row = $this->model::findOrFail($id);

            if (method_exists($row, 'checkAuthor') && $row->checkAuthor()) {
                toast('you can\'t visit this page', 'warning');
                return abort(401);
            }

            return view('backend.includes.pages.form-page', $this->append(), compact('row'));
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function destroy($id)
    {
        try {
            $row = $this->model::findOrFail($id);
            $row->delete();
            return response()->json(['message' => 'Your ' . $this->getModel() . ' has been deleted!', 'icon' => 'success', 'count' => $this->getCount()]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function multidelete(Request $request)
    {
        try {
            $rows = $this->model::whereIn('id', (array)$request['id'])->get();
            DB::beginTransaction();
            foreach ($rows as $row)
                $row->delete();
            DB::commit();
            return response()->json(['message' => 'Your ' . $this->getModel() . ' has been deleted! (' . count($rows) . ')', 'icon' => 'success', 'count' => $this->getCount()]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function visibilityToggle($id)
    {
        try {
            DB::beginTransaction();
            $row = $this->model::findOrFail($id);
            $row->update(['visibility' => !$row->visibility]);
            DB::commit();
            return response()->json(['message' => ' Visibility of Your ' . $this->getModel() . ' has been Changed!', 'icon' => 'success']);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function getModel()
    {
        return class_basename($this->model);
    }

    public function getCount()
    {
        if (method_exists($this->model, 'author'))
            return $this->model->author()->count();

        return $this->model->count();
    }

    public function append()
    {
        return [];
    }
}
