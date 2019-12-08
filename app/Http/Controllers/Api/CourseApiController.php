<?php

namespace App\Http\Controllers\Api;

use App\Course;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CourseApiController extends Controller
{
    public function getCourses(){
        $courses = Course::orderBy('created_at','desc')->paginate(10);
        return response()->json($courses);
    }

    public function getCoursesByOwner($user_id){
        $courses = Course::where('user_id',$user_id)->orderBy('created_at','desc')->paginate(10);
        return response()->json($courses);
    }

    public function createCourse(Request $request){
        $course = Course::create($request->all());
        return response()->json($course,201);
    }
}
