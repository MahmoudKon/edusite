<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function username()
    {
        return 'email';
    }

    public function redirectTo()
    {
        return auth()->user()->is_admin || auth()->user()->is_teacher
            ? $this->redirectTo = RouteServiceProvider::DASHBOARD
            : $this->redirectTo = RouteServiceProvider::HOME;
    }

    protected function loggedOut(Request $request)
    {
        cache()->forget('auth_user_avorites');
        cache()->forget('auth_user_avorites_count');
        cache()->forget('notifications');
        cache()->forget('unReadNotifications_count');
    }
}
