<?php

namespace App\Http\Controllers\Api;

use App\Assignment;
use App\File;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AssignmentApiController extends Controller
{
    //assignment from course owner
    public function getAssignments($class_id){
        $assignments = Assignment::where('course_id',$class_id)->paginate(10);
        return response()->json($assignments,200);
    }

    //course owner create assignment
    public function createAssignment(Request $request)
    {
        $assignment = Assignment::create($request->all());
        return response()->json($assignment,201);
    }

    //report to assignment , seen by owner
    // public function getFilesByAssinment($assignment_id)
    // {
    //     $files = Submission::where('assignment_id',$assignment_id)->with('student')->paginate(10);
    //     return response()->json($files);
    // }



}
