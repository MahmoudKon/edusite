<?php

namespace App\Http\Middleware;

use App\Models\Log;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

class LogMiddleware
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
        $response = $next($request);

        if (request()->ajax() && request()->method() == "GET")
            return $response;

        $content = clone ($response);
        $content = preg_replace('~>\s+<~', '><', $content);
        $content = preg_replace('~\n+~', '', $content);
        $content = preg_replace('~\r+~', '', $content);
        $content = preg_replace('#<title>(.*?)</title>#i', '\1', $content);
        $content = preg_replace('#<meta.*?>#i', '\1', $content);
        $content = preg_replace('#<link.*?>#i', '\1', $content);
        $content = preg_replace('#<script.*?></script.*?>#i', '\1', $content);

        // To Get The Route Controller Path With Method [App\Http\Controllers\Backend\DashboardController@index] With Make Expload By [@]
        $route_action = explode('@', Route::getCurrentRoute()->getActionName());
        $controller   = $route_action[0]; // Controller Path
        $page         = $route_action[1]; // Controller Method
        $model        = getModelNameFromControllerName($controller); // Model Path From Controller Name

        // Set Specific Message About Method
        switch ($page) {
            case 'index':
                $message = 'visit the index of ' . str_replace('Controller', '', $controller[0]) . ' page';
                break;
            case 'create':
                $message = 'visit the form of create new ' . $model;
                break;
            case 'store':
                $message = 'store new ' . $model . ' data';
                break;
            case 'edit':
                $message = 'visit the form of edit ' . $model . ', his id is ' . request()->route()->parameters[request()->route()->parameterNames[0]];
                break;
            case 'update':
                $message = 'update the ' . $model . ' data, his id is ' . request()->route()->parameters[request()->route()->parameterNames[0]];
                $page    = '<div class="badge badge-warning round"> <span> Update </span> <i class="fa fa-"></i> </div>';
            case 'destroy':
                $message = 'destroy some ' . str_replace('Controller', '', $controller[0]) . ' data';
                break;
            default:
                $message = 'visit the ' . $controller[1] . ' page in ' . str_replace('Controller', '', $controller[0]);
        }

        Log::create([
            'response_headers'  => $response->headers,
            'response_content'  => $content,
            'request'           => request(),
            'message'           => $message,
            'url'               => url()->full(),
            'page'              => $page,
            'method'            => request()->method(),
            'controller'        => $controller,
            'model'             => $model,
            'user_id'           => auth()->user()->id ?? 0,
        ]);
        return $response;
    }
}
