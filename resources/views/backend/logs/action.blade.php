<span class="dropdown">
    <button id="table-optins" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
        class="btn btn-primary dropdown-toggle dropdown-menu-right"><i class="ft-settings"></i></button>
    <span aria-labelledby="table-optins" class="dropdown-menu mt-1 dropdown-menu-left" x-placement="bottom-end">

        <a href="{{ route('backend.' . getModel() . '.show', $id) }}" class="btn btn-outline-primary dropdown-item" target="_blank">
            <i class="ft-edit"></i> Request
        </a>
    </span>
</span>
