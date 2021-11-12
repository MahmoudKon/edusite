{{-- START PERMISSION NAME --}}
<div class="form-group">
    <label>Permission Name <span class="text-danger">*</span></label>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text"> <i class="la la-hand-stop-o"></i> </span>
        </div>
        <input type="text" class="form-control badge-text-maxlength" maxlength="25" name="name"
            value="{{ $row->name ?? old('name') }}" placeholder="Permission Name" autocomplete="off">
    </div>
    <span class="red error" id="name-error"></span>
</div>
{{-- START PERMISSION NAME --}}

{{-- START ROLES NAME --}}
<div class="form-group">
    <label>Role Name <span class="text-danger">*</span></label>
    <a href="{{ route('backend.roles.index') }}" class="btn btn-info btn-sm float-right" target="_blank"><i class="fa fa-plus"></i> <b>Create Role</b></a>
    <select class="select2 select2-all form-control" data-placeholder="Select Roles" name="role_id[]" multiple>
        @foreach ($roles as $role)
        <option value="{{ $role->id }}" {{ old('role_id') == $role->id ? 'selected' : '' }}>{{ $role->name }}</option>
        @endforeach
    </select>
    <span class="red error" id="role_id-error"></span>
</div>
{{-- START ROLES NAME --}}
