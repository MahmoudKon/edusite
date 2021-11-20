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
        return $log->request;
    }

    public function showFieldData(Log $log, $field)
    {
        $data = ['data' => $log->response_content, 'title' => 'Show Log Response'];
        if ($field == 'request')
            $data = ['data' => $log->request, 'title' => 'Show Log Request'];

        return response()->json($data, 200);
    }
}
