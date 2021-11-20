<span class="dropdown">
    <button id="table-optins" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
        class="btn btn-primary dropdown-toggle dropdown-menu-right"><i class="ft-settings"></i></button>
    <span aria-labelledby="table-optins" class="dropdown-menu mt-1 dropdown-menu-left" x-placement="bottom-end">

        <a href="{{ route('backend.' . getModel() . '.field.show', [$log_id, 'request']) }}" class="btn btn-outline-primary showRequest dropdown-item">
            <i class="ft-chrome"></i> Request
        </a>

        <a href="{{ route('backend.' . getModel() . '.field.show', [$log_id, 'response']) }}" class="btn btn-outline-primary showRequest dropdown-item">
            <i class="ft-paperclip"></i> Response
        </a>
    </span>
</span>
