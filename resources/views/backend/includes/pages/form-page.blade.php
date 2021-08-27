@extends('layouts.backend')

@section('style')
<link rel="stylesheet" type="text/css" href="{{ path('vendors/css/editors/summernote.css') }}">
@endsection

@section('back')
@include('backend.includes.cards.form-header')
@endsection

@section('content')
<div class="content-body">
    <div class="card">
        @if (isset($row))
        @include('backend.includes.forms.form-update')
        @else
        @include('backend.includes.forms.form-create')
        @endif
    </div>
</div>
@endsection

@section('script')
<script type="text/javascript" src="{{ path('vendors/js/forms/repeater/jquery.repeater.min.js') }}"></script>
<script type="text/javascript" src="{{ path('vendors/js/editors/summernote/summernote.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/backend/custom/js/packages.js') }}"></script>
@endsection
