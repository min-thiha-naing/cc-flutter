<?php


namespace App\Http\Controllers\Api;

use App\Submission;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SubmissionApiController extends Controller
{
    public function getSubmissionByAssignment($assignment_id)
    {
        $files = Submission::where('assignment_id',$assignment_id)->with('student')->paginate(10);
        return response()->json($files);
    }
    public function createFileByStudent(Request $request)
    {
        $file = Submission::create($request->all());
        return response()->json($file);
    }
}
