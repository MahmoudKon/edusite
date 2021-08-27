@extends('backend.includes.buttons.table-buttons')

@section('table-buttons')
<a href="{{ route('backend.courses.create', ['category' => $id, 'slug' => $slug]) }}"
    class="btn btn-outline-info dropdown-item">
    <i class="ft-plus"></i> Create Course
</a>

<a href="{{ route('backend.posts.create', ['category' => $id, 'slug' => $slug]) }}"
    class="btn btn-outline-info dropdown-item">
    <i class="ft-plus"></i> Create Post
</a>

@endsection
