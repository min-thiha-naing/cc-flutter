<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::namespace('Api')->group(function(){
    Route::get('courses','CourseApiController@getCourses');
    Route::get('assignments/{course_id}','AssignmentApiController@getAssignments');
    Route::post('assignment/store','AssignmentApiController@createAssignment');

    Route::get('submissions/assignment/{assignment_id}','SubmissionApiController@getSubmissionByAssignment');
    Route::post('submissions/assignment/store','SubmissionApiController@storeSubmission');

    Route::post('submission/store','SubmissionApiController@createFileByStudent');
    Route::get('course/{teacher_id}','CourseApiController@getCoursesByOwner');
    Route::post('course/store', 'CourseApiController@createCourse');

    //user api
    Route::get('users','UserController@getAllUsers');
    Route::post('invites','InvitationController@makeInvites');

    Route::get('check-invites/{user_id}','InvitationController@checkInvites');
    Route::post('invite-confirm','InvitationController@inviteConfirm');
});

