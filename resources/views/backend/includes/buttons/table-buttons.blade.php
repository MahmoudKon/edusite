<span class="dropdown">
    <button id="table-optins" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
        class="btn btn-primary dropdown-toggle dropdown-menu-right"><i class="ft-settings"></i></button>
    <span aria-labelledby="table-optins" class="dropdown-menu mt-1 dropdown-menu-left" x-placement="bottom-end">

        @if ((isset($user_id) && $user_id == auth()->id()) || (!isset($user_id) && auth()->user()->is_admin))
        <a href="{{ route('backend.' . getModel() . '.edit', $id) }}"
            class="btn btn-outline-primary {{ $no_ajax ?? 'show-modal-form' }} dropdown-item">
            <i class="ft-edit"></i> Edit
        </a>
        @endif

        @yield('table-buttons')

        <form action="{{ route('backend.' . getModel() . '.destroy', $id) }}" method="POST" class="form-destroy">
            {{ csrf_field() }}
            @method('delete')
            <button type="submit" class="btn btn-outline-danger dropdown-item delete">
                <i class="ft-trash-2"></i> Delete
            </button>
        </form>

    </span>
</span>
