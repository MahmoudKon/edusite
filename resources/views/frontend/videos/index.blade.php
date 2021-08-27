@extends('layouts.frontend')

@section('style')
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/blog_single.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/blog_single_responsive.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/course.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/course_responsive.css') }}">
@endsection

@section('page_title', ' | Videos')

@section('home')
@include('frontend.includes.breadcrumbs', [
'breadcrumb_link' => '<li><a href='.route("courses").'>Courses</a></li>
<li>Single Course</li>'
])
@endsection

@section('content')
<div class="courses mb-5">
    <div class="container">
        <div class="col-12 py-5">
            <h4>Course | {{ $course->title }}</h4>
        </div>
        <div class="row">
            {{-- START VIDEOS SECTION --}}
            <div class="col-lg-8">
                {{-- START VIDEOS LOOP SECTION --}}
                @include('frontend.videos.videos-section')
                {{-- END VIDEOS LOOP SECTION --}}
            </div>
            {{-- END VIDEOS SECTION --}}

            <div class="col-lg-4">
                {{-- START VIDEOS SIDEBAR SECTION --}}
                @include('frontend.videos.video-sidebar')
                {{-- END VIDEOS SIDEBAR SECTION --}}
            </div>
        </div>
    </div>
</div>

{{-- START TEAM SECTION --}}
@include('frontend.includes.newsletter')
{{-- END TEAM SECTION --}}
@endsection

@section('script')
<script src="{{ asset('assets/frontend/plugins/colorbox/jquery.colorbox-min.js') }}"></script>
<script src="{{ asset('assets/frontend/js/course.js') }}"></script>
@endsection
