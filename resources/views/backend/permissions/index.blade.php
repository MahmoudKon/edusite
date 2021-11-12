@extends('layouts.backend')

@section('content')
<div class="content-detached content-right">
    <div class="content-body">
        <div class="card">
            {{-- START INCLUDE TABLE HEADER --}}
            @include('backend.includes.cards.table-header')
            {{-- START INCLUDE TABLE HEADER --}}

            <div class="card-content collpase show">
                <div class="card-body" id="load-data"></div>
            </div>
        </div>
    </div>
</div>

{{-- START INCLUDE SIDEBARE --}}
@include('backend.includes.cards.sidebare')
{{-- END INCLUDE SIDEBARE --}}
@endsection
