<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Town extends Model
{
    public function patients()
    {
    	return $this->hasMany('App\Models\Patient');
    }
}
