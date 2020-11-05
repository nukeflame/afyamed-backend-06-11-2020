<?php

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */

// private routes
Route::middleware('auth:api')->group(function () {
    Route::get('/user', 'Auth\UserController@index');
    Route::post('/check_password', 'Auth\UserController@check_password');
    Route::put('/user/{user}', 'Auth\UserController@update');
    Route::get('/user/uniqueNo', 'Auth\UserController@get_user_no');
    //users
    Route::get('/users', 'Api\UsersController@index');
    Route::post('/users', 'Api\UsersController@store');
    Route::post('/users/show', 'Api\UsersController@show');
    Route::resource('/clients', 'Api\ClientController');
    Route::resource('/hospitals', 'Api\HospitalController');
    //notifications
    Route::get('/notifications', 'Auth\UserController@notifications');
    Route::get('/notifications/click', 'Auth\UserController@click');
    Route::get('/notifications/clear', 'Auth\UserController@notifications_clear');
    Route::get('/notifications/mark_as_read', 'Auth\UserController@mark_as_read');
    Route::get('/unread_notifications', 'Auth\UserController@unread_notifications');
    //patients
    Route::get('/patients', 'Api\PatientController@index');
    Route::get('/patients/{patient}', 'Api\PatientController@show');
    Route::put('/patients/{patient}', 'Api\PatientController@update');
    Route::post('/patients', 'Api\PatientController@store');
    Route::delete('/patients/{id}', 'Api\PatientController@destroy');
    // customize_settings
    Route::get('/customize_settings', 'Api\CustomizeSettingController@index');
    Route::post('/customize_settings', 'Api\CustomizeSettingController@store');
    Route::get('/customize_settings/{setting}', 'Api\CustomizeSettingController@show');
    //consulations
    Route::get('/consultations', 'Api\ConsultationController@index');
    Route::post('/consultations', 'Api\ConsultationController@store');
    Route::get('/consultations/{consultation}', 'Api\ConsultationController@show');
    Route::delete('/consultations/{consultation}', 'Api\ConsultationController@destroy');
    //vitals
    Route::get('/medics', 'Api\MedicController@index');
    Route::post('/medics', 'Api\MedicController@store');
    Route::get('/medics/{medic}', 'Api\MedicController@show');
    //departments
    Route::resource('/departments', 'Api\DepController');
    //queues
    Route::get('/queues', 'Api\QueueController@index');
    Route::get('/queues/{queue}', 'Api\QueueController@show');
    Route::post('/queues', 'Api\QueueController@store');
    Route::put('/queues/{queue}', 'Api\QueueController@update');
    Route::delete('/queues/{queue}', 'Api\QueueController@destroy');
    //groups
    Route::resource('/groups', 'Api\GroupController');
    //positions
    Route::resource('/positions', 'Api\PositionController');
    Route::resource('/ids', 'Api\IdsController');
    //permission groups
    Route::get('/perm-groups', 'Api\PermGroupController@index');
    Route::get('/perm-groups/{perm}', 'Api\PermGroupController@show');
    Route::post('/perm-groups', 'Api\PermGroupController@store');
    Route::put('/perm-groups/{perm}', 'Api\PermGroupController@update');
    Route::delete('/perm-groups/{perm}', 'Api\PermGroupController@destroy');
    // hospital branches
    Route::post('/branches', 'Api\HospBranchController@index');
    Route::get('/branches/{branch}', 'Api\HospBranchController@show');
    //modules
    Route::resource('/modules', 'Api\ModuleController');
    //room status
    Route::get('/room_status', 'Api\RoomStatusController@index');
    Route::post('/room_status', 'Api\RoomStatusController@store');
    Route::put('/room_status/{room}', 'Api\RoomStatusController@update');
    Route::get('/room_status/login', 'Api\RoomStatusController@login');
    Route::get('/room_status/logout', 'Api\RoomStatusController@logout');
    //timeline
    Route::get('/timeline/{timeline}', 'Api\TimelineController@show');
    //documents
    Route::get('/documents/{document}', 'Api\DocumentController@show');
    Route::post('/documents', 'Api\DocumentController@store');
    Route::delete('/documents/{document}', 'Api\DocumentController@destroy');
    //search
    Route::post('/search/diagnosis', 'Api\SearchController@diagnosis');
    Route::post('/search/patients', 'Api\SearchController@patients');
    //occupations
    Route::get('/occupations', 'Api\OccupationController@index');
    //occupations
    Route::get('/towns', 'Api\TownController@index');
    //occupations
    Route::get('/countries', 'Api\CountryController@index');
    //patient_history
    Route::post('/patient_history', 'Api\PatientHistoryController@index');
    Route::post('/patient_history_values', 'Api\PatientHistoryValueController@index');
    Route::post('/patient_history/data', 'Api\PatientHistoryDataController@store');
    Route::get('/patient_history/data/{id}', 'Api\PatientHistoryDataController@show');
    //clinics
    Route::get('/clinics', 'Api\ClinicController@index');
});

// public routes
Route::post('/login', 'Auth\LoginController@index');
Route::post('/hospcode', 'Api\HospitalController@find');
