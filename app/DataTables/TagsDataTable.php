<?php

namespace App\DataTables;

use App\Models\Tag;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Services\DataTable;

class TagsDataTable extends DataTable
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
            ->editColumn('icon', function ($tag) {
                return '<i class="' . $tag->icon . ' font-large-1"></i>';
            })
            ->editColumn('visibility', function ($tag) {
                return $tag->visibilityType();
            })
            ->filterColumn('visibility', function ($query, $keywords) {
                $keywords = strtolower($keywords);
                if (preg_match('/' . $keywords . '/', 'visible')) {
                    $query->where('visibility', 1);
                } else if (preg_match('/' . $keywords . '/', 'hidden')) {
                    $query->where('visibility', 0);
                }
            })
            ->addColumn('check', 'backend.includes.tables.checkbox')
            ->addColumn('action', 'backend.includes.buttons.table-buttons')
            ->rawColumns(['action', 'check', 'icon', 'visibility']);
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\Tag $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Tag $model)
    {
        return $model->newQuery();
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
            ->setTableId('tag-table')
            ->columns($this->getColumns())
            ->setTableAttribute('class', 'table table-bordered table-striped table-sm w-100 dataTable')
            ->minifiedAjax()
            ->dom('Bfrtip')
            ->lengthMenu([[5, 10, 20, 25, 30, -1], [5, 10, 20, 25, 30, 'All']])
            ->pageLength(5)
            ->buttons([
                Button::make()->text('<i class="fa fa-plus"></i>')->addClass('btn btn-outline-info datatables-create-button show-modal-form')->titleAttr('Create New Tag (c)')->key('c'),
                Button::make()->text('<i class="fas fa-trash"></i>')->addClass('btn btn-outline-danger multi-delete')->titleAttr('Delete (d)')->key('d'),
                Button::make('print')->text('<i class="fa fa-print"></i>')->addClass('btn btn-outline-success')->titleAttr('Print (p)')->key('p'),
                Button::make('excel')->text('<i class="fas fa-file-excel"></i>')->addClass('btn btn-outline-info')->titleAttr('Excel (e)')->key('e'),
                Button::make('csv')->text('<i class="fas fa-file-csv"></i>')->addClass('btn btn-outline-primary')->titleAttr('CSV (s)')->key('s'),
                Button::make('pageLength')->text('<i class="fa fa-sort-numeric-up"></i>')->addClass('btn btn-outline-light page-length')->titleAttr('Page Length (l)')->key('l')
            ])
            ->responsive(true)
            ->parameters([
                // 'buttons' => [
                //     ['extend' => 'csv', 'className' => 'btn btn-success', 'text' => '<i class="fas fa-file-csv "></i> ' . trans('admin.csv')],
                //     [
                //         'className' => 'btn btn-success', 'text' => '<i class="fas fa-plus"></i>',
                //         'action' => 'function(e, dt, node, config) { window.location.href + "/create" }'
                //     ],
                // ],
                'initComplete' => " function () {
                    this.api().columns([2,3,4]).every(function () {
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
            Column::make('check')->title('<input type="checkbox" id="check-all">')->exportable(false)->printable(false)->orderable(false)->searchable(false)->width(15)->addClass('text-center'),
            Column::make('name'),
            Column::make('icon')->width(60)->addClass('text-center'),
            Column::make('visibility')->title('Visibility')->width(100)->addClass('text-center'),
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
        return 'Tag_' . date('YmdHis');
    }
}
