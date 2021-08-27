@extends('backend.includes.buttons.table-buttons')

@section('table-buttons')
<a href="{{ route('backend.' . getModel() . '.show', $id) }}"
    class="btn btn-outline-info {{ $no_ajax ?? 'show-modal-form' }} dropdown-item">
    <i class="ft-eye"></i> Show
</a>
@endsection
