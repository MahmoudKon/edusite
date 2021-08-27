<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class ShareAuthFavorites
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if (auth()->check()) {
            view()->share(
                'auth_user_avorites',
                Cache::remember('auth_user_avorites', 60 * 60 * 24, function () {
                    return auth()->user()->favorites;
                })
            );

            view()->share(
                'auth_user_avorites_count',
                Cache::remember('auth_user_avorites_count', 60 * 60 * 24, function () {
                    return auth()->user()->favorites()->count();
                })
            );
        }

        return $next($request);
    }
}
