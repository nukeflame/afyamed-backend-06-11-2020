<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PatientHistoryValue extends Model
{
    public function patientHistory()
    {
        return $this->belongsTo('App\PatientHistory');
    }
}
