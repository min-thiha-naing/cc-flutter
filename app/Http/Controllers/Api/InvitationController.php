<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Invitation;

class InvitationController extends Controller
{
    public function makeInvites(Request $request){
        $invited_users = $request->users;

        foreach($invited_users as $invited_user){
            $invite = Invitation::create([
                'user_id' => $invited_users->id,
                'class_id' => $request->course_id,
                'confirm_status' => "no",
            ]);
        }

        return response()->json(['status' => 'Invitation Created'],201);
    }

    public function checkInvites($user_id){
        $invites = Invitation::where('user_id',$user_id)->with('course')->orderBy('created_at','desc')->paginate(20);
        return response()->json($invites);
    }

    public function inviteConfirm(Request $request)
    {
        $invite = Invitation::create([
            'user_id' => $request->user_id,
            'class_id' => $request->course_id,
            'confirm_status' => $request->status
        ]);

        return response()->json($invite,201);
    }
}
