@extends('layouts.auth')

@section('page_title', 'Reset Password')
@section('form_title', 'Reset Password')

@section('content')
<form action="{{ route('password.update') }}" method="POST">
    @csrf
    <input type="hidden" name="token" value="{{ $token }}">

    <!-- BEGIN USER NAME INPUT -->
    <fieldset class="form-group">
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fa fa-envelope"></i></span>
            </div>
            <input type="email" name="email" class="form-control @error('email') is-invalid @enderror"
                value="{{ $email ?? old('email') }}" autofocus required placeholder="Type your email..."
                autocomplete="email">
        </div>
        @error('email')
        <span class="is-invalid red" role="alert"> <strong>{{ $message }}</strong> </span>
        @enderror
    </fieldset>
    <!-- END USER NAME INPUT -->

    <!-- BEGIN USER PASSWORD INPUT -->
    <fieldset class="form-group">
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fas fa-eye-slash toggle-password"></i>
                </span>
            </div>
            <input type="password" name="password" value="{{ old('password') ?? 123 }}" required
                autocomplete="new-password" placeholder="Type your password..."
                class="form-control @error('password') is-invalid @enderror">
        </div>
        @error('password')
        <span class="is-invalid red" role="alert"> <strong>{{ $message }}</strong> </span>
        @enderror
    </fieldset>
    <!-- END USER PASSWORD INPUT -->

    <!-- BEGIN USER PASSWORD CONFIRM INPUT -->
    <fieldset class="form-group">
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fas fa-eye-slash toggle-password"></i>
                </span>
            </div>
            <input type="password" name="password_confirmation" value="{{ old('password_confirmation') ?? 123 }}"
                required autocomplete="new-password" placeholder="Type your password confirmation..."
                class="form-control @error('password') is-invalid @enderror">
        </div>
        @error('password')
        <span class="is-invalid red" role="alert"> <strong>{{ $message }}</strong> </span>
        @enderror
    </fieldset>
    <!-- END USER PASSWORD CONFIRM INPUT -->

    <button type="submit" class="btn btn-info btn-lg btn-block"><i class="fas fa-unlock-alt"></i> Reset
        Password</button>
</form>
@endsection
