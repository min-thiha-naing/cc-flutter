<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Submission extends Model
{
    protected $fillable=['user_id','assignment_id','course_id','score','status','remark','submitted_file'];

    public function student()
    {
        return $this->belongsTo(User::class,'student_id');
    }
    public function assignment()
    {
        return $this->belongsTo(User::class,'assignment_id');
    }

}
