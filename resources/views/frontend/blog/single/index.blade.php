@extends('layouts.frontend')

@section('style')
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/blog_single.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/blog_single_responsive.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/courses.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/frontend/styles/courses_responsive.css') }}">
@endsection

@section('page_title', ' | Post')

@section('home')
@include('frontend.includes.breadcrumbs', [
'breadcrumb_link' => '<li><a href='.route("blog").'>Blog</a></li>
<li>Single Post</li>'
])
@endsection
@section('content')
<div class="blog" style="padding: 50px 0">
    <div class="container">
        <div class="row">

            <!-- Blog Content -->
            <div class="col-lg-8">
                <div class="blog_content">
                    <div class="blog_title">{{ $post->title }}</div>
                    <div class="blog_meta">
                        <ul>
                            <li>Post on <a href="#">{{ $post->created_at->diffForHumans() }}</a></li>
                            <li>By
                                <a href="{{ route('profile', ['id' => $post->user_id]) }}">
                                    {{ $post->user->name }}</a></li>
                            <li>
                                Category <a href="{{ route('blog', ['category' => $post->category->slug]) }}">
                                    {{ $post->category->name }}
                                </a>
                            </li>
                        </ul>
                    </div>
                    @if($post->image)
                    <div class="blog_image"><img src="{{ $post->image_url }}" alt="{{ $post->title }}" width="100%">
                    </div>
                    @endif

                    <div class="pt-4">{!! $post->desc !!}</div>
                </div>
                <div
                    class="blog_extra d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
                    <div class="blog_tags">
                        <span>Tags: </span>
                        <ul>
                            @foreach ($post->tags as $tag)
                            <li><a href="{{ route('blog', ['tag' => $tag->slug]) }}">{{ $tag->name }}</a>, </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="blog_social ml-lg-auto d-flex justify-content-between">
                        <ul>
                            <li> <span class="mr-5"> <i class="fa fa-eye"></i> {{ $post->visitors_count }} </span>
                            </li>
                            <li>
                                @auth
                                <a href="{{ route('post.like', $post) }}" class="user_click">
                                    <i
                                        class=" {{ $post->likes()->whereUserId(auth()->id())->count() > 0 ? 'fas' : 'far' }} fa-thumbs-up"></i>
                                    <span class="count">{{ $post->likes_count }}</span>
                                </a>
                                @else
                                <span> <i class="fa fa-thumbs-up"></i>
                                    <span class="count">{{ $post->likes_count }}</span></span>
                                @endauth
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Comments -->
                @include('frontend.includes.comments-section', ['comments' => $post->comments])

                <div class="add_comment_container">
                    <div class="add_comment_title">Write a comment</div>
                    <div class="add_comment_text">
                        @auth
                        <form action="{{ route('post.comment', $post) }}" class="comment_form" method="POST">
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

            <div class="col-lg-4">
                {{-- START COURSES SIDEBAR SECTION --}}
                @include('frontend.blog.blog-sidebar')
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
<script src="{{ asset('assets/frontend/plugins/colorbox/jquery.colorbox-min.js') }}"></script>
<script src="{{ asset('assets/frontend/js/course.js') }}"></script>
@endsection
