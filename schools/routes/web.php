<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/course', 'HomeController@getInsert')->name('course');
Route::post('/course', 'HomeController@postInsert');
Route::get('/listcouse','HomeController@getListcouse')->name('listcouse');
Route::get('/listbaigiang/{id}','HomeController@getListbaigiang')->name('listbaigiang/{id}');
Route::get('/listChapter/{id}','HomeController@getListChapter')->name('listChapter/{id}');

Route::get('/contentchapter/{id}','HomeController@getContentChapter')->name('contentchapter/{id}');
Route::post('/contentchapter/{id}','HomeController@postContentChapter');
Route::get('/deleteCourse/{id}','HomeController@deleteCouse')->name('deleteCourse/{id}');

Route::get('/listExam/{id}','HomeController@listExam')->name('listExam/{id}');
Route::get('/listthreads/{id}','HomeController@listthreads')->name('listthreads/{id}');
Route::post('/listthreads/{id}','HomeController@postthreades')->name('listthreads/{id}');

Route::get('/getLearning','HomeController@getLearning')->name('getLearning');