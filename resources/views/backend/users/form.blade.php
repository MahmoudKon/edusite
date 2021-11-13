<div class="row">
    <div class="col-md-7">
        {{-- START USER NAME --}}
        <div class="form-group">
            <label>User Name <span class="text-danger">*</span></label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="la la-list"></i> </span>
                </div>
                <input type="text" class="form-control" name="name" value="{{ $row->name ?? old('name') }}"
                    placeholder="User Name">
            </div>
            <span class="red error" id="name-error"></span>
        </div>
        {{-- START USER NAME --}}

        {{-- START EMAIL ORDER --}}
        <div class="form-group">
            <label>Email <span class="text-danger">*</span></label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-at"></i> </span>
                </div>
                <input type="email" class="form-control" name="email" value="{{ $row->email ?? old('email') }}"
                    placeholder="Email">
            </div>
            <span class="red error" id="email-error"></span>
        </div>
        {{-- START EMAIL ORDER --}}

        {{-- START PASSWORD --}}
        <div class="form-group">
            <label>Password <span class="text-danger">*</span></label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fas fa-lock"></i> </span>
                </div>
                <input type="password" class="form-control" name="password" placeholder=" Password">
            </div>
            <span class="red error" id="password-error"></span>
        </div>
        {{-- END PASSWORD IS ACTIVE --}}

    </div>

    <div class="col-md-5">
        {{-- START COURSE IMAGE --}}
        @include('backend.includes.forms.input-file', ['image' => $row->image_url ?? null])
        {{-- START COURSE IMAGE --}}
    </div>
</div>

{{-- START ROLES --}}
<div class="form-group">
    <label>Role <span class="text-danger">*</span></label>
    <select class="select2 form-control w-100 get-permissions" name="roles[]" multiple data-placeholder="Select Roles">
        @foreach ($roles as $role)
            <option value="{{ $role->id }}" {{ isset($row) && $row->hasRole($role->name) ? 'selected' : '' }}>{{ $role->name }}</option>
        @endforeach
    </select>
    <span class="red error" id="roles-error"></span>
</div>
{{-- END ROLES --}}

{{-- START PERMISSIONS --}}
<div id="get-permissions"></div>
{{-- END PERMISSIONS --}}
