<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\LogsDataTable;
use App\Http\Controllers\Controller;
use App\Models\Log;
use Illuminate\Http\Request;

class LogsController extends Controller
{
    public function index(LogsDataTable $dataTable)
    {
        return $dataTable->render('backend.logs.index', ['count' => Log::count()]);
    }

    public function show(Log $log)
    {
        // dd($log);
        return $log->request;
        // return $log->response;
    }
}
