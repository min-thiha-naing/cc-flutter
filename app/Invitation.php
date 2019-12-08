<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Invitation extends Model
{
    protected $fillable=['user_id','class_id','confirm_status'];
}
