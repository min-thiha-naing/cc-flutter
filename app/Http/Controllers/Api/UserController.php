<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class UserController extends Controller
{
    public function getAllUsers(){
        $users = User::where('role_id','!=',1)->orderBy('name','asc')->paginate(20);
        return response()->json($users);
    }
}
