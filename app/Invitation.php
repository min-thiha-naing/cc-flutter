<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Course;

class Invitation extends Model
{
    protected $fillable=['user_id','class_id','confirm_status'];

    public function course()
    {
        return $this->belongsTo(Course::class,'class_id','course_id');
    }
}
