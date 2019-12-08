<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    protected $fillable=['usernmae','password','email','fullname','gender','date_of_birth'];
}
