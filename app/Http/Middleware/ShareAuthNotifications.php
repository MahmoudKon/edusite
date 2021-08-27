<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class ShareAuthNotifications
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
                'notifications',
                Cache::remember('notifications', 60 * 60 * 24, function () {
                    return auth()->user()->notifications;
                })
            );

            view()->share(
                'unReadNotifications_count',
                Cache::remember('unReadNotifications_count', 60 * 60 * 24, function () {
                    return auth()->user()->unReadNotifications->count();
                })
            );
        }

        return $next($request);
    }
}
