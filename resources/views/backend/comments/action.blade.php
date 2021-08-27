<form action="{{ route('backend.' . getModel() . '.destroy', $id) }}" method="POST" class="form-destroy">
    {{ csrf_field() }}
    @method('delete')
    <button type="submit" class="btn btn-outline-danger dropdown-item delete">
        <i class="ft-trash-2"></i> Delete
    </button>
</form>
