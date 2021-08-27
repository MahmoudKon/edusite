@extends('backend.includes.buttons.table-buttons')

@section('table-buttons')
@if ($user_id == auth()->id())
<a href="{{ route('backend.videos.create', ['course' => $id, 'slug' => $slug]) }}"
    class="btn btn-outline-info dropdown-item">
    <i class="ft-plus"></i> Create Video
</a>
@endif


@if ($visibility)
<a href="{{ route('course', ['id' => $id, 'title' => $slug]) }}" class="btn btn-outline-info dropdown-item">
    <i class="ft-edit"></i> Show
</a>
@else
<button class="btn btn-outline-warning dropdown-item"> <i class="ft-eye-off"></i> Hidden</button>
@endif
@endsection
