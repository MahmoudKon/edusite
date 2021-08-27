<?php

namespace App\DataTables;

use Yajra\DataTables\Services\DataTable;
use Yajra\DataTables\Html\Column;
use Illuminate\Support\Str;
use App\Models\Post;
use Yajra\DataTables\Html\Button;

class PostsDataTable extends DataTable
{
    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     */
    public function dataTable($query)
    {
        return datatables()
            ->eloquent($query)
            ->addColumn('tags', 'backend.includes.tables.tags')
            ->editColumn('image', function ($post) {
                return '<img src="' . $post->image_url . '" class="img-thumbnail" width="150px">';
            })
            ->editColumn('title', function ($post) {
                return $post->title . '<hr> <span class="red">Category | </span> ' . $post->category->name . '<hr> <span class="red">Author | </span> ' . $post->user->name . checkOwner($post->user_id);
            })
            ->editColumn('desc', function ($post) {
                return Str::limit($post->desc, 200);
            })
            ->filterColumn('tags', function ($query, $keywords) {
                return $query->whereHas('tags', function ($q) use ($keywords) {
                    return $q->where('name', 'like', '%' . $keywords . '%');
                });
            })
            ->filterColumn('title', function ($query, $keywords) {
                return $query->where('title', 'like', '%' . $keywords . '%')->orWhereHas('category', function ($q) use ($keywords) {
                    return $q->where('name', 'like', '%' . $keywords . '%');
                })->orWhereHas('user', function ($q) use ($keywords) {
                    return $q->where('name', 'like', '%' . $keywords . '%');
                });
            })
            ->filterColumn('visibility', function ($query, $keywords) {
                $keywords = strtolower($keywords);
                if (preg_match('/' . $keywords . '/', 'visible')) {
                    $query->where('visibility', 1);
                } else if (preg_match('/' . $keywords . '/', 'hidden')) {
                    $query->where('visibility', 0);
                }
            })
            ->setRowClass(function ($post) {
                return $post->visibility == 0 ? 'bg-primary bg-accent-1' : '';
            })
            ->addColumn('check', 'backend.includes.tables.checkbox')
            ->addColumn('action', function ($post) {
                return view('backend.posts.show-button', ['id' => $post->id, 'slug' => $post->slug, 'visibility' => $post->visibility, 'user_id' => $post->user_id, 'no_ajax' => '']);
            })
            ->rawColumns(['action', 'check', 'desc', 'image', 'title', 'tags']);
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\Post $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Post $model)
    {
        return $model->newQuery()->with('tags')->author();
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
            ->setTableId('post-table')
            ->columns($this->getColumns())
            ->setTableAttribute('class', 'table table-bordered table-striped table-sm w-100 dataTable')
            ->minifiedAjax()
            ->dom('Bfrtip')
            ->lengthMenu([[5, 10, 20, 25, 30, -1], [5, 10, 20, 25, 30, 'All']])
            ->pageLength(10)
            ->buttons([
                Button::make()->text('<i class="fa fa-plus"></i>')->addClass('btn btn-outline-info create-button')->action("window.location.href = " . '"' . route('backend.posts.create') . '"')->titleAttr('Create New Post (c)')->key('c'),
                Button::make()->text('<i class="fas fa-trash"></i>')->addClass('btn btn-outline-danger multi-delete')->titleAttr('Delete (d)')->key('d'),
                Button::make('print')->text('<i class="fa fa-print"></i>')->addClass('btn btn-outline-success')->titleAttr('Print (p)')->key('p'),
                Button::make('excel')->text('<i class="fas fa-file-excel"></i>')->addClass('btn btn-outline-info')->titleAttr('Excel (e)')->key('e'),
                Button::make('csv')->text('<i class="fas fa-file-csv"></i>')->addClass('btn btn-outline-primary')->titleAttr('CSV (s)')->key('s'),
                Button::make('pageLength')->text('<i class="fa fa-sort-numeric-up"></i>')->addClass('btn btn-outline-light page-length')->titleAttr('Page Length (l)')->key('l')
            ])
            ->responsive(true)
            ->parameters([
                'initComplete' => " function () {
                    this.api().columns([3,5]).every(function () {
                        var column = this;
                        var input = document.createElement(\"input\");
                        $(input).appendTo($(column.footer()).empty())
                        .on('keyup', function () {
                            column.search($(this).val(), true, true, true).draw();
                        });
                    });
                }",
            ])
            ->orderBy(0);
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        return [
            Column::make('id')->hidden(),
            Column::make('visibility')->hidden(),
            Column::make('check')->title('<input type="checkbox" id="check-all">')->exportable(false)->printable(false)->orderable(false)->searchable(false)->width(15)->addClass('text-center'),
            Column::make('title')->width(330),
            Column::make('image')->orderable(false)->searchable(false)->width(100),
            Column::make('desc'),
            Column::make('tags')->orderable(false)->width(65),
            Column::computed('action')->exportable(false)->printable(false)->width(75)->addClass('text-center')->width(65),
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'Post_' . date('YmdHis');
    }
}
