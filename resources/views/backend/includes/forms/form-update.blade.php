<div class="card-header bg-primary">
    <h4 class="card-title white">
        <i class="ft-edit"></i><span class="mx-1">update {{ ucfirst(getSinglarModel()) }}</span>
    </h4>
    @yield('back')
</div>

<div class="card-body">
    <form action="{{ route('backend.' . getModel() . '.update', $row) }}" method="post" class="submit-form"
        enctype="multipart/form-data">
        @csrf
        {{ method_field('PUT') }}

        <input type="hidden" name="id" value="{{ $row->id ?? '' }}">

        {{-- END FORM INPUTS --}}
        @include('backend.' . getModel() . '.form')
        {{-- END FORM INPUTS --}}

        {{-- END FORM BUTTONS --}}
        @include('backend.includes.buttons.form-buttons')
        {{-- END FORM BUTTONS --}}
    </form>
</div>
