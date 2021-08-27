<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\BackendController;
use App\DataTables\CommentsDataTable;
use App\Models\Comment;

class CommentsController extends BackendController
{
    public function __construct(CommentsDataTable $dataTable, Comment $comment)
    {
        parent::__construct($dataTable, $comment);
    }

    public function create()
    {
        toast('Can\'t Create Comments', 'warning');
        return redirect()->back();
    }
}
