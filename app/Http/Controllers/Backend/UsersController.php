<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\BackendController;
use App\DataTables\UsersDataTable;
use App\Http\Requests\UserRequest;
use Illuminate\Support\Facades\DB;
use App\Traits\UploadFile;
use App\Models\User;
use Exception;

class UsersController extends BackendController
{
    use UploadFile;

    public function __construct(UsersDataTable $dataTable, User $user)
    {
        parent::__construct($dataTable, $user);
    }

    public function store(UserRequest $request)
    {
        try {
            DB::beginTransaction();
            User::create($request->validated());
            DB::commit();
            toast('Your User has been created!', 'success');
            return response()->json(['redirect' => route('backend.users.index')]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function update(UserRequest $request, User $user)
    {
        try {
            DB::beginTransaction();
            if ($request->has('image'))
                $this->remove($user->image, 'users');
            $user->update($request->validated());
            DB::commit();
            toast('Your User has been updated!', 'success');
            return response()->json(['redirect' => route('backend.users.index')]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }
}
