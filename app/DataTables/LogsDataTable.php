<?php

namespace App\DataTables;

use App\Models\Log;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Services\DataTable;

class LogsDataTable extends DataTable
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
            ->editColumn('method', function ($log) {
                if ($log->method == "GET")
                    return "<span class='badge badge-info'>GET</span>";

                if ($log->method == "POST")
                    return "<span class='badge badge-warning'>POST</span>";

                if ($log->method == "PUT")
                    return "<span class='badge badge-primary'>PUT</span>";

                if ($log->method == "DELETE")
                    return "<span class='badge badge-danger'>DELETE</span>";
            })
            ->addColumn('action', 'backend.logs.action')
            ->rawColumns(['method', 'action']);
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\Log $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Log $model)
    {
        return $model->newQuery()->with('user')->select('logs.*', 'logs.id as log_id')->orderBy('logs.id', 'DESC');
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
            ->setTableId('logsdatatable-table')
            ->columns($this->getColumns())
            ->setTableAttribute('class', 'table table-bordered table-striped table-sm w-100 dataTable')
            ->minifiedAjax()
            ->dom('Bfrtip')
            ->lengthMenu([[5, 10, 20, 25, 30, -1], [5, 10, 20, 25, 30, 'All']])
            ->pageLength(5)
            ->buttons([
                Button::make('print')->text('<i class="fa fa-print"></i>')->addClass('btn btn-outline-success')->titleAttr('Print (p)')->key('p'),
                Button::make('excel')->text('<i class="fas fa-file-excel"></i>')->addClass('btn btn-outline-info')->titleAttr('Excel (e)')->key('e'),
                Button::make('csv')->text('<i class="fas fa-file-csv"></i>')->addClass('btn btn-outline-primary')->titleAttr('CSV (s)')->key('s'),
                Button::make('pageLength')->text('<i class="fa fa-sort-numeric-up"></i>')->addClass('btn btn-outline-light page-length')->titleAttr('Page Length (l)')->key('l')
            ])
            ->responsive(true)
            ->parameters([
                'initComplete' => " function () {
                    this.api().columns([1,2,3,4,5]).every(function () {
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
            Column::make('user.name')->title('User'),
            Column::make('url')->title('URL'),
            Column::make('page')->title('Page'),
            Column::make('method')->title('Method'),
            Column::make('controller')->title('Controller'),
            Column::make('model')->title('Model'),
            Column::make('action')->title('Action'),
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'Logs_' . date('YmdHis');
    }
}
