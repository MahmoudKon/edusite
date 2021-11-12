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
            <span class="input-group-text"> <i class="fas fa-mail"></i> </span>
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
