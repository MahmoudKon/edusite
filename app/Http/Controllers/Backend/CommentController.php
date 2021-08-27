<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\BackendController;
use App\DataTables\CategoriesDataTable;
use Illuminate\Http\Request;
use App\Models\Comment;

class CommentController extends BackendController
{
    public function __construct(CategoriesDataTable $dataTable, Comment $comment)
    {
        parent::__construct($dataTable, $comment);
    }
}
