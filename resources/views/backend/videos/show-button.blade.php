@extends('backend.includes.buttons.table-buttons')

@section('table-buttons')
@if ($visibility)
<a href="{{ route('course.video', ['video' => $id, 'title' => $slug]) }}" class="btn btn-outline-info dropdown-item">
    <i class="ft-edit"></i> Show
</a>
@else
<button class="btn btn-outline-warning dropdown-item"> <i class="ft-eye-off"></i> Hidden</button>
@endif
@endsection
