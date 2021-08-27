@extends('layouts.auth')

@section('page_title', 'Register')
@section('form_title', 'Register with ' . config('app.name'))

@section('content')
<form action="{{ route('register') }}" method="POST">
    @csrf

    <!-- BEGIN USER NAME INPUT -->
    <fieldset class="form-group">
        <label for="name">Name : <small class="text-muted warning">Write your full name.</small> </label>
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fa fa-user"></i></span>
            </div>
            <input type="text" id="name" name="name" value="{{ old('name') ?? 'admin' }}" maxlength="20"
                class="form-control @error('name') is-invalid @enderror badge-text-maxlength" autofocus required
                placeholder="Type your name..." autocomplete="name">
        </div>
        @error('name')
        <span class="is-invalid red" role="alert"> <strong> {{ $message }} </strong> </span>
        @enderror
    </fieldset>
    <!-- END USER NAME INPUT -->

    <!-- BEGIN USER EMAIL INPUT -->
    <fieldset class="form-group">
        <label for="email">Email :</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fa fa-envelope"></i></span>
            </div>
            <input type="email" id="email" name="email" maxlength="30" autocomplete="email"
                class="form-control @error('email') is-invalid @enderror badge-text-maxlength"
                value="{{ old('email') ?? 'admin@app.com' }}" autofocus required placeholder="Type your email...">
        </div>
        @error('email')
        <span class="is-invalid red" role="alert"> <strong> {{ $message }} </strong> </span>
        @enderror
    </fieldset>
    <!-- END USER EMAIL INPUT -->

    <!-- BEGIN USER PASSWORD INPUT -->
    <fieldset class="form-group">
        <label for="password">Password :</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text toggle-password"> <i class="fas fa-eye-slash"></i></span>
            </div>
            <input type="password" id="password" name="password" value="{{ old('password') ?? 123 }}" required
                autocomplete="current-password" placeholder="Type your password..." maxlength="20"
                class="form-control @error('password') is-invalid @enderror badge-text-maxlength">
        </div>
        @error('password')
        <span class="is-invalid red" role="alert"> <strong>{{ $message }}</strong> </span>
        @enderror
    </fieldset>
    <!-- END USER PASSWORD INPUT -->

    <!-- BEGIN USER PASSWORD CONFIRMATION INPUT -->
    <fieldset class="form-group">
        <label for="password_confirmation">Password Confirmation :</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text toggle-password"> <i class="fas fa-eye-slash"></i></span>
            </div>
            <input type="password" id="password_confirmation" name="password_confirmation"
                value="{{ old('password_confirmation') ?? 123 }}" required autocomplete="current-password"
                placeholder="Type your password confirmation..." maxlength="20"
                class="form-control @error('password_confirmation') is-invalid @enderror badge-text-maxlength">
        </div>
        @error('password_confirmation')
        <span class="is-invalid red" role="alert"> <strong>{{ $message }}</strong> </span>
        @enderror
    </fieldset>
    <!-- END USER PASSWORD CONFIRMATION INPUT -->

    <!-- BEGIN USER TYPE INPUT -->
    <fieldset class="form-group">
        <label>Teacher ? : <small class="text-muted warning">If you wanna be a teacher, select 'Yes'.</small></label>
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text toggle-password"> <i class="fas fa-eye-slash"></i></span>
            </div>
            <select name="is_teacher" class="form-control @error('is_teacher') is-invalid @enderror">
                <option value="0" {{ old('is_teacher') == 0 ? 'selected' : '' }}>No</option>
                <option value="1" {{ old('is_teacher') == 1 ? 'selected' : '' }}>Yes</option>
            </select>
        </div>
        @error('is_teacher')
        <span class="is-invalid red" role="alert"> <strong>{{ $message }}</strong> </span>
        @enderror
    </fieldset>
    <!-- END USER TYPE INPUT -->

    <button type="submit" class="btn btn-info btn-lg btn-block"><i class="fas fa-unlock-alt"></i> Register</button>
</form>

<p class="text-center">Already have an account ? <a href="{{ route('login') }}" class="card-link">Login</a></p>
@endsection

@section('script')

<script type="text/javascript" src="{{ path('vendors/js/forms/extended/maxlength/bootstrap-maxlength.js') }}"></script>

<script type="text/javascript">
    $(document).ready(function(){
        $('.badge-text-maxlength').maxlength({
            alwaysShow: true,
            separator: ' of ',
            preText: 'You have ',
            postText: ' chars remaining.',
            validate: true,
            warningClass: "badge badge-success",
            limitReachedClass: "badge badge-danger",
        });

        $('.toggle-password').click(function () {
            let icon = $(this).find('i'); input = icon.parent().parent();
            if (icon.hasClass('fa-eye-slash')) {
                icon.removeClass('fa-eye-slash').addClass('fa-eye');
                input.next('input').attr('type', 'text');
            } else {
                icon.removeClass('fa-eye').addClass('fa-eye-slash');
                input.next('input').attr('type', 'password');
            }
        });
    });
</script>
@endsection
