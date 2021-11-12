<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\RolesDataTable;
use App\Http\Controllers\BackendController;
use App\Http\Requests\RoleRequest;
use Exception;
use Spatie\Permission\Models\Role;

class RolesController extends BackendController
{
    public function __construct(RolesDataTable $dataTable, Role $role)
    {
        parent::__construct($dataTable, $role);
    }

    public function index()
    {
        try {
            if (request()->ajax())
                return $this->dataTable->render('backend.includes.tables.rows');

            return view('backend.categories.index', ['count' => Role::count()]);
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

    public function store(RoleRequest $request)
    {
        try {
            Role::create($request->except(['id']));
            return response()->json(['message' => 'Your Role has been created!', 'icon' => 'success', 'count' => Role::count()]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function edit($id)
    {
        try {
            $row = Role::findOrFail($id);
            return view('backend.includes.forms.form-update', compact('row'));
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function update(RoleRequest $request, Role $role)
    {
        try {
            $role->update($request->except(['id']));
            return response()->json(['message' => 'Your Role has been updated!', 'icon' => 'success']);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }
}
