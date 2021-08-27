@extends('layouts.frontend')

@section('page_title', ' | Courses')

@section('style')
<link rel="stylesheet" href="{{ asset('assets/frontend/styles/courses.css') }}">
<link rel="stylesheet" href="{{ asset('assets/frontend/styles/courses_responsive.css') }}">
@endsection

@section('home')
@include('frontend.includes.breadcrumbs', ['breadcrumb_link' => '<li>Courses</li>'])
@endsection

@section('content')
<div class="courses" style="padding: 50px 0">
    <div class="container">
        <div class="row">

            {{-- START COURSES SECTION --}}
            <div class="col-lg-8">
                @include('frontend.courses.courses-section')
            </div>
            {{-- END COURSES SECTION --}}

            <div class="col-lg-4">
                {{-- START COURSES SIDEBAR SECTION --}}
                @include('frontend.courses.courses-sidebar')
                {{-- END COURSES SIDEBAR SECTION --}}
            </div>
        </div>
    </div>
</div>
{{-- START TEAM SECTION --}}
@include('frontend.includes.newsletter')
{{-- END TEAM SECTION --}}
@endsection
@section('script')
<script src="{{ asset('assets/frontend/js/courses.js') }}"></script>
@endsection
