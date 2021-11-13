@extends('layouts.backend')

@section('content')
<div class="content-wrapper">
    <div class="content-body">
        <div class="card">
            {{-- START INCLUDE TABLE HEADER --}}
            @include('backend.includes.cards.table-header')
            {{-- START INCLUDE TABLE HEADER --}}

            <div class="card-content collpase show">
                <div class="card-body">
                    <div class="table-responsive">
                        {{ $dataTable->table([], true) }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
{{ $dataTable->scripts() }}
@endsection

