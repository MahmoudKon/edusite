@extends('layouts.frontend')

@section('style')
<link rel="stylesheet" href="{{ asset('assets/frontend/styles/main_styles.css') }}">
<link rel="stylesheet" href="{{ asset('assets/frontend/styles/responsive.css') }}">
@endsection

@section('home')
@include('frontend.includes.slider')
@endsection

@section('content')
{{-- START FEATURES SECTION --}}
@include('frontend.home.features')
{{-- END FEATURES SECTION --}}

{{-- START COURSES SECTION --}}
@include('frontend.home.courses')
{{-- END COURSES SECTION --}}

{{-- START COUNTER SECTION --}}
@include('frontend.includes.counter')
{{-- END COUNTER SECTION --}}

<!-- Events -->

{{-- START EVENTS SECTION --}}
@include('frontend.home.events')
{{-- END EVENTS SECTION --}}

{{-- START TEAM SECTION --}}
@include('frontend.includes.team')
{{-- END TEAM SECTION --}}

{{-- START NEWS SECTION --}}
@include('frontend.home.news')
{{-- END NEWS SECTION --}}

{{-- START NEW LETTER SECTION --}}
@include('frontend.includes.newsletter')
{{-- END NEW LETTER SECTION --}}
@endsection
