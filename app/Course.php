<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $fillable = ['course_name','course_title','description'];
    public function teacher()
    {
        return $this->belongsTo(User::class,'teacher_id');
    }
}
