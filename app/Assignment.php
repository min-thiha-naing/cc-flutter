<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Assignment extends Model
{
    protected $fillable=['assignment_name','deadline','description'];
    public function teacher()
    {
        return $this->belongsTo(User::class,'teacher_id');
    }
    public function student()
    {
        return $this->belongsTo(User::class,'student_id');
    }

}
