{{-- START ROLE NAME --}}
<div class="form-group">
    <label>Role Name <span class="text-danger">*</span></label>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text"> <i class="la la-binoculars"></i> </span>
        </div>
        <input type="text" class="form-control badge-text-maxlength" maxlength="25" name="name"
            value="{{ $row->name ?? old('name') }}" placeholder="Role Name" autocomplete="off">
    </div>
    <span class="red error" id="name-error"></span>
</div>
{{-- START ROLE NAME --}}
