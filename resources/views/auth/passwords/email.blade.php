@extends('layouts.auth')

@section('page_title', 'Reset Password')
@section('form_title', 'We will send you a link to reset password')

@section('content')
<form action="{{ route('password.email') }}" method="POST">
    @csrf
    <!-- BEGIN USER NAME INPUT -->
    <fieldset class="form-group">
        <label for="email">Email :</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fas fa-envelope"></i></span>
            </div>
            <input type="email" id="email" name="email" class="form-control @error('email') is-invalid @enderror"
                value="{{ old('email') ?? 'admin@app.com' }}" autofocus required placeholder="Type your email..."
                autocomplete="email">
        </div>
        @error('email')
        <span class="is-invalid red" role="alert"> <strong> {{ $message }}
            </strong> </span>
        @enderror
    </fieldset>
    <!-- END USER NAME INPUT -->

    <button type="submit" class="btn btn-info btn-lg btn-block">
        <i class="fas fa-unlock-alt"></i> Send Password Reset Link
    </button>
</form>

<p class="text-center">Goto <a href="{{ route('login') }}" class="card-link">Login</a> ?</p>
@endsection
