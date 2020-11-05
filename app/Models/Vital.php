<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Vital extends Model
{
    public function patients()
    {
        return $this->belongsToMany('App\Models\Patient', 'patient_vitals');
    }
}
