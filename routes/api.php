<?php

use Illuminate\Support\Facades\Route;

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['middleware' => 'api', 'prefix' => 'auth'], function () {
    Route::post('register', 'RegisterController@register');
    Route::post('login', 'LoginController@login');
    Route::post('logout', 'LoginController@logout');
});

Route::group(['middleware' => 'auth:api'], function () {
    Route::get('get/auth', 'LoginController@getAuth');
});

Route::get('users', 'LoginController@getAllUsers');
Route::get('user', 'LoginController@getUser');


Route::get('courses', function () {
    return new App\Http\Resources\CourseResource(App\Models\Course::all());
});

Route::get('courses', function () {
    return new App\Http\Resources\CourseResource(App\Models\Course::with('videos')->get());
});

Route::get('course/{id}', function ($id) {
    return new App\Http\Resources\CourseResource(App\Models\Course::findOrFail($id));
});
