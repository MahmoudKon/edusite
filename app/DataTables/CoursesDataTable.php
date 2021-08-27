<?php

namespace App\DataTables;

use Yajra\DataTables\Services\DataTable;
use Yajra\DataTables\Html\Column;
use Illuminate\Support\Str;
use App\Models\Course;
use Yajra\DataTables\Html\Button;

class CoursesDataTable extends DataTable
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
            ->editColumn('price', function ($course) {
                if ($course->discount != null) {
                    return $course->total() . '<br> <del class="red">$' . $course->price . '</del>';
                }
                return $course->price ? '$' . $course->price : '<span class="badge badge-info">FREE</span>';
            })
            ->editColumn('image', function ($course) {
                return '<img src="' . $course->image_url . '" class="img-thumbnail" width="150px">';
            })
            ->editColumn('desc', function ($course) {
                return Str::limit($course->desc, 200, '...');
            })
            ->editColumn('title', function ($course) {
                $owen = '';
                if (auth()->user()->is_admin && auth()->id() == $course->user_id)
                    $owen = ' | <span class="text-info text-bold-700 text-uppercase">owner</span>';

                return $course->title . '<hr> <span class="red">Category </span> | ' . $course->category->name . checkOwner($course->user_id);
            })
            ->filterColumn('visibility', function ($query, $keywords) {
                $keywords = strtolower($keywords);
                if (preg_match('/' . $keywords . '/', 'visible')) {
                    $query->where('visibility', 1);
                } else if (preg_match('/' . $keywords . '/', 'hidden')) {
                    $query->where('visibility', 0);
                }
            })
            ->filterColumn('desc', function ($query, $keywords) {
                return $query->where('desc', 'like', '%' . $keywords . '%');
            })
            ->filterColumn('title', function ($query, $keywords) {
                return $query->where('title', 'like', '%' . $keywords . '%')
                    ->orWhereHas('category', function ($q) use ($keywords) {
                        $q->where('name', 'like', '%' . $keywords . '%');
                    });
            })
            ->setRowClass(function ($course) {
                return $course->visibility == 0 ? 'bg-primary bg-accent-1' : '';
            })
            ->addColumn('check', 'backend.includes.tables.checkbox')
            ->addColumn('action', function ($course) {
                return view('backend.courses.show-button', ['id' => $course->id, 'slug' => $course->slug, 'visibility' => $course->visibility, 'user_id' => $course->user_id, 'no_ajax' => '']);
            })
            ->rawColumns(['action', 'check', 'image', 'visibility', 'price', 'title']);
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\Course $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Course $model)
    {
        return $model->newQuery()->with('category')->author();
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
            ->setTableId('coursesdatatables-table')
            ->columns($this->getColumns())
            ->setTableAttribute('class', 'table table-bordered table-striped table-sm w-100 dataTable')
            ->minifiedAjax()
            ->dom('Bfrtip')
            ->lengthMenu([[5, 10, 20, 25, 30, -1], [5, 10, 20, 25, 30, 'All']])
            ->pageLength(5)
            ->buttons([
                Button::make()->text('<i class="fa fa-plus"></i>')->addClass('btn btn-outline-info')->action("window.location.href = " . '"' . route('backend.courses.create') . '"')->titleAttr('Create New Course (c)')->key('c'),
                Button::make()->text('<i class="fas fa-trash"></i>')->addClass('btn btn-outline-danger multi-delete')->titleAttr('Multi Delete (d)')->key('d'),
                Button::make('print')->text('<i class="fa fa-print"></i>')->addClass('btn btn-outline-success')->titleAttr('Print (p)')->key('p'),
                Button::make('excel')->text('<i class="fas fa-file-excel"></i>')->addClass('btn btn-outline-info')->titleAttr('Excel (e)')->key('e'),
                Button::make('csv')->text('<i class="fas fa-file-csv"></i>')->addClass('btn btn-outline-primary')->titleAttr('CSV (s)')->key('s'),
                Button::make('pageLength')->text('<i class="fa fa-sort-numeric-up"></i>')->addClass('btn btn-outline-light page-length')->titleAttr('Page Length (l)')->key('l')
            ])
            ->responsive(true)
            ->parameters([
                'initComplete' => " function () {
                    this.api().columns([3,5,6]).every(function () {
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
            Column::make('title')->width(300),
            Column::make('image')->orderable(false)->searchable(false),
            Column::make('desc')->width(200),
            Column::make('price'),
            Column::computed('action')->exportable(false)->printable(false)->width(75)->addClass('text-center'),
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'Courses_' . date('YmdHis');
    }
}
