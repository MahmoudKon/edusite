@extends('layouts.frontend')

@section('page_title', ' | About')

@section('style')
<link rel="stylesheet" href="{{ asset('assets/frontend/styles/contact.css') }}">
<link rel="stylesheet" href="{{ asset('assets/frontend/styles/contact_responsive.css') }}">
@endsection

@section('home')
@include('frontend.includes.breadcrumbs', ['breadcrumb_link' => '<li>Contact</li>'])
@endsection

@section('content')
{{-- START FORM CONTACT SECTION --}}
@include('frontend.contact.contact-form')
{{-- END FORM CONTACT SECTION --}}

{{-- START NEW LETTER SECTION --}}
@include('frontend.includes.newsletter')
{{-- END NEW LETTER SECTION --}}
@endsection
