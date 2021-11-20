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

    {{-- START MODAL TO SHOW REQUEST / RESPONSE FIELD --}}
    <div class="modal animated slideInDown" id="showRequest" tabindex="-1" role="dialog" aria-labelledby="showRequest" aria-hidden="true">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content" style="min-height: 500px">
                <div class="modal-header bg-primary">
                    <h4 class="modal-title white"><b>Show Log Request</b></h4>
                    <button type="button" class="close white" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> <i class="fas fa-times"></i></span>
                    </button>
                </div>
                <div class="modal-body" style="overflow-wrap: anywhere"></div>
            </div>
        </div>
    </div>
    {{-- END MODAL TO SHOW REQUEST / RESPONSE FIELD --}}
</div>
@endsection

@section('script')
{{ $dataTable->scripts() }}
@endsection

