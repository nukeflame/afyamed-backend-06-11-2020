<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PatientHistory extends Model
{
    public function hospitals()
    {
        return $this->belongsToMany('App\Models\Hospital', 'hospital_patient_histories');
    }

    public function patientHistoryValues()
    {
        return $this->hasMany('App\Models\PatientHistoryValue');
    }
}
