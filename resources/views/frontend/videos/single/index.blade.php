@extends('layouts.frontend')

@section('style')
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/blog_single.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/blog_single_responsive.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/course.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/course_responsive.css') }}">
@endsection

@section('page_title', ' | Video')

@section('home')
@include('frontend.includes.breadcrumbs', [
'breadcrumb_link' => '<li><a href='.route("courses").'>Courses</a></li>
<li>Single Course</li>'
])
@endsection

@section('content')
<div class="courses mb-5">
    <div class="container">
        <div class="row">
            {{-- START VIDEOS SECTION --}}
            <div class="col-lg-7">
                {{-- START VIDEOS LOOP SECTION --}}
                @include('frontend.videos.single.video-section')
                {{-- END VIDEOS LOOP SECTION --}}

                @include('frontend.includes.comments-section', ['comments' => $video->comments])

                <div class="add_comment_container">
                    <div class="add_comment_title">Write a comment</div>
                    <div class="add_comment_text">
                        @auth
                        <form action="{{ route('video.comment', $video) }}" class="comment_form" method="POST">
                            @csrf
                            <div>
                                <div class="form_title">Write your comment :</div>
                                <textarea class="comment_input comment_textarea" required="required"
                                    name="comment"></textarea>
                            </div>
                            <div>
                                <button type="submit" class="comment_button trans_200">submit</button>
                            </div>
                        </form>
                        @else
                        You must be <a href="{{ route('login') }}">logged</a> in to post a comment.
                        @endauth
                    </div>
                </div>
            </div>
            {{-- END VIDEOS SECTION --}}

            <div class="col-lg-5">
                {{-- START VIDEOS SIDEBAR SECTION --}}
                @include('frontend.videos.single.video-sidebar')
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
