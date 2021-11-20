<?php

// function to return the dashboard files path

use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

function path(string $path)
{
    return asset('assets/backend/' . $path);
} // end of path function

function active($model, $method = null)
{
    $url =  explode('/', request()->path());

    if (end($url) === $model && $model == 'dashboard')
        return 'active';

    if (in_array($model, $url) && $model != 'dashboard' && $method === null)
        return 'active';

    if (in_array($model, $url) && $model != 'dashboard' && in_array($method, $url))
        return 'active';

    if (in_array($model, $url) && $model != 'dashboard' && end($url) === $model && $method === 'index')
        return 'active';

    return '';
} // end of active function

// function to return the model name form url
function getModel()
{
    if (request()->segment(1) === 'dashboard' && !empty(request()->segment(2)))
        return request()->segment(2);

    if (request()->segment(2) === 'dashboard' && !empty(request()->segment(3)))
        return request()->segment(3);

    return 'dashboard';
} // end of active function

function getSinglarModel()
{
    return Illuminate\Support\Str::singular(getModel());
}

function checkOwner($id)
{
    return auth()->user()->is_admin && auth()->id() == $id
        ? ' | <span class="text-info text-bold-700 text-uppercase">owner</span>'
        : '';
}

function generateUrl()
{
    $prefix = request()->route()->action['prefix']; // Get The Prefix Of Route
    $url = str_replace($prefix, '', request()->route()->uri);
    return explode('/', $url);
}

function getModelNameFromControllerName($controller)
{
    $controller = str_replace('Controller', '', last(explode('\\', $controller)));
    $controller = Str::singular($controller);
    $models = File::allFiles(base_path('app/Models'));

    foreach ($models as $model) {
        $model_name = str_replace([app_path(), '/', '.php'], ['App', '\\', ''], $model->getRealPath());
        if (strpos($model_name, $controller))
            return $model_name;
    }

    if ($controller == 'Permission')
        return 'Spatie\Permission\Models\Permission';

    if ($controller == 'Role')
        return 'Spatie\Permission\Models\Role';

    return 'No Model';
}
