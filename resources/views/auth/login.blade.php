@extends('layouts.auth')

@section('page_title', 'Login')
@section('form_title', 'Login with ' . config('app.name'))

@section('stype')
<link rel="stylesheet" type="text/css" href="{{ path('vendors/css/forms/icheck/icheck.css') }}">
@endsection

@section('content')
<form action="{{ route('login') }}" method="POST">
    @csrf

    <!-- BEGIN USER NAME INPUT -->
    <fieldset class="form-group">
        <label for="email">Email :</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fa fa-envelope"></i></span>
            </div>
            <input type="email" id="email" name="email" class="form-control @error('email')is-invalid @enderror"
                value="{{ old('email') ?? 'admin@app.com' }}" autofocus required placeholder="Type your email..."
                autocomplete="email">
        </div>
        @error('email')
        <span class="is-invalid red" role="alert"> <strong> {{ $message }} </strong> </span>
        @enderror
    </fieldset>
    <!-- END USER NAME INPUT -->

    <!-- BEGIN USER PASSWORD INPUT -->
    <fieldset class="form-group">
        <label for="password">Password :</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text toggle-password"> <i class="fas fa-eye-slash"></i></span>
            </div>
            <input type="password" id="password" name="password" value="{{ old('password') ?? 123 }}" required
                autocomplete="current-password" placeholder="Type your password..."
                class="form-control @error('password') is-invalid @enderror">
        </div>
        @error('password')
        <span class="is-invalid red" role="alert"> <strong>{{ $message }}</strong> </span>
        @enderror
    </fieldset>
    <!-- END USER PASSWORD INPUT -->

    <!-- BEGIN OPTIONS INPUT -->
    <div class="form-group row">
        <div class="col-md-6 col-12 text-center text-md-left">
            <fieldset>
                <input type="checkbox" id="remember-me" class="chk-remember" name="remember"
                    {{ old('remember') ? 'checked' : '' }}>
                <label for="remember-me" class="px-1"> Remember Me</label>
            </fieldset>
        </div>
        @if (Route::has('password.request'))
        <div class="col-md-6 col-12 text-center text-md-right">
            <a href="{{ route('password.request') }}" class="card-link">Forgot Your Password?</a>
        </div>
        @endif
    </div>
    <!-- END OPTIONS INPUT -->

    <button type="submit" class="btn btn-info btn-lg btn-block"><i class="fas fa-unlock-alt"></i> Login</button>
</form>

<p class="text-center">Don't have an account ? <a href="{{ route('register') }}" class="card-link">Register</a></p>
@endsection

@section('script')
<script type="text/javascript">
    $(document).ready(function(){
        $('.chk-remember').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
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
