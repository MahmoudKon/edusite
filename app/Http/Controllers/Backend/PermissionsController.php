<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\PermissionsDataTable;
use App\Http\Controllers\BackendController;
use App\Http\Requests\PermissionRequest;
use Exception;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class PermissionsController extends BackendController
{
    public function __construct(PermissionsDataTable $dataTable, Permission $permission)
    {
        parent::__construct($dataTable, $permission);
    }

    public function index()
    {
        try {
            if (request()->ajax())
                return $this->dataTable->render('backend.includes.tables.rows');

            return view('backend.permissions.index', ['count' => Permission::count(), 'roles' => Role::all()]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function create()
    {
        try {
            return view('backend.includes.forms.form-create', ['roles' => Role::all()]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function store(PermissionRequest $request)
    {
        try {
            $permission = Permission::create($request->except(['id', 'role_id']));
            $permission->assignRole($request->role_id);
            return response()->json(['message' => 'Your Permission has been created!', 'icon' => 'success', 'count' => Permission::count()]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function edit($id)
    {
        try {
            $row = Permission::findOrFail($id);
            return view('backend.includes.forms.form-update', compact('row'));
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function update(PermissionRequest $request, Permission $permission)
    {
        try {
            $permission->update($request->except(['id']));
            return response()->json(['message' => 'Your Permission has been updated!', 'icon' => 'success']);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }
}
