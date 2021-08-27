<?php

use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use PHPUnit\TextUI\XmlConfiguration\Group;

Route::group(['prefix' => LaravelLocalization::setLocale(), 'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']], function () {
    Auth::routes();

    Route::group(['middleware' => 'ShareAuthFavorites'], function () {

        Route::get('/', 'Frontend\FrontendController@home')->name('/')->middleware('ShareSliderImages');
        Route::get('/about', 'Frontend\FrontendController@about')->name('about');
        Route::get('/contact', 'Frontend\FrontendController@contact')->name('contact');

        Route::get('/courses', 'Frontend\FrontendController@courses')->name('courses');

        Route::get('/blog', 'Frontend\FrontendController@blog')->name('blog');

        Route::get('/course', 'Frontend\FrontendController@course')->name('course');
        Route::post('/course/comment/{course}', 'Frontend\CommentsController@courseComment')->name('course.comment');
        Route::post('/course/vote/{course}', 'Frontend\RatingsController@vote')->name('course.vote');

        Route::get('/course/favorite/{course}', 'Frontend\FavoritesController@favorite')->name('course.favorite');
        Route::get('show/favorites', 'Frontend\FavoritesController@showFavorites')->name('show.favorites');


        Route::get('/course/videos/{course}', 'Frontend\FrontendController@videos')->name('course.videos');
        Route::get('/course/video/{video}', 'Frontend\FrontendController@video')->name('course.video');
        Route::post('/video/comment/{video}', 'Frontend\CommentsController@videoComment')->name('video.comment');
        Route::get('/video/like/{video}', 'Frontend\LikesController@videoLike')->name('video.like');



        Route::get('/post', 'Frontend\FrontendController@post')->name('post');
        Route::post('/post/comment/{post}', 'Frontend\CommentsController@postComment')->name('post.comment');
        Route::get('/post/like/{post}', 'Frontend\LikesController@postLike')->name('post.like');


        Route::get('clear/notifications', 'Frontend\FrontendController@clearNotifications')->name('clear.notifications');
        Route::get('show/notifications', 'Frontend\FrontendController@showNotifications')->name('show.notifications');

        Route::get('profile', 'Frontend\ProfileController@index')->name('profile');
        Route::get('profile/edit', 'Frontend\ProfileController@edit')->name('profile.edit');
        Route::put('profile/update', 'Frontend\ProfileController@update')->name('profile.update');
        Route::put('profile/update/password', 'Frontend\ProfileController@changePassword')->name('profile.update.password');
        Route::get('profile/courses', 'Frontend\ProfileController@courses')->name('profile.courses');
        Route::get('profile/posts', 'Frontend\ProfileController@posts')->name('profile.posts');
        Route::get('profile/videos', 'Frontend\ProfileController@videos')->name('profile.videos');
        Route::get('profile/follow', 'Frontend\ProfileController@follow')->name('profile.follow');
    });
});
