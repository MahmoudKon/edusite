<div class="card">
    <div class="card-header text-bold-700 font-medium-2">
        <h3>Change Password:</h3>
    </div>
</div>

<div class="card">
    <div class="card-body text-bold-700">
        <form action="{{ route('profile.update.password') }}" method="post" class="submit-form">
            @csrf
            {{ method_field('PUT') }}

            <div class="row">
                <div class="col-md-4">
                    {{-- START PASSWORD --}}
                    <div class="form-group">
                        <label>Old Password:</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fas fa-lock"></i> </span>
                            </div>
                            <input type="password" class="form-control" name="current_password"
                                placeholder="Current Password">
                        </div>
                        <span class="red error" id="current_password-error"></span>
                    </div>
                    {{-- END PASSWORD --}}
                </div>
                <div class="col-md-4">
                    {{-- START PASSWORD --}}
                    <div class="form-group">
                        <label>New Password:</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fas fa-lock"></i> </span>
                            </div>
                            <input type="password" class="form-control" name="password" placeholder="New Password">
                        </div>
                        <span class="red error" id="password-error"></span>
                    </div>
                    {{-- END PASSWORD --}}
                </div>
                <div class="col-md-4">
                    {{-- START PASSWORD --}}
                    <div class="form-group">
                        <label>Password Confirmation:</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fas fa-lock"></i> </span>
                            </div>
                            <input type="password" class="form-control" name="password_confirmation"
                                placeholder="Password Confirmation">
                        </div>
                        <span class="red error" id="password_confirmation-error"></span>
                    </div>
                    {{-- END PASSWORD --}}
                </div>
            </div>

            {{-- END FORM BUTTONS --}}
            <button type="submit" class="btn btn-primary">
                <i class="la la-check-square-o"></i> Change</button>
            {{-- END FORM BUTTONS --}}
        </form>
    </div>
</div>
