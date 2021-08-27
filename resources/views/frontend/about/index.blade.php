@extends('layouts.frontend')

@section('page_title', ' | About')

@section('style')
<link rel="stylesheet" href="{{ asset('assets/frontend/styles/about.css') }}">
<link rel="stylesheet" href="{{ asset('assets/frontend/styles/about_responsive.css') }}">
@endsection

@section('home')
@include('frontend.includes.breadcrumbs', ['breadcrumb_link' => '<li>About</li>'])
@endsection

@section('content')
{{-- START ABOUT SECTION --}}
@include('frontend.about.about')
{{-- END ABOUT SECTION --}}

{{-- START FEATURE SECTION --}}
@include('frontend.about.feature')
{{-- END FEATURE SECTION --}}

{{-- START COUNTER SECTION --}}
@include('frontend.includes.counter')
{{-- END COUNTER SECTION --}}

{{-- START TEAM SECTION --}}
@include('frontend.includes.team')
{{-- END TEAM SECTION --}}
@endsection
