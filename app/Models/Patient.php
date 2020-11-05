<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Patient extends Model
{
    use SoftDeletes;

    /**
     * Get the user that owns the patient.
     */
    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function registerdBy()
    {
        return $this->belongsTo('App\Models\Staff', 'reg_by');
    }

    public function town()
    {
        return $this->belongsTo('App\Models\Town');
    }

    public function opd()
    {
        return $this->hasMany('App\Models\Opd');
    }

    public function ipd()
    {
        return $this->hasOne('App\Models\Ipd');
    }

    public function queues()
    {
        return $this->hasMany('App\Models\Queue');
    }

    public function vitals()
    {
        return $this->belongsToMany('App\Models\Staff', 'patient_vitals');
    }

    public function consultation()
    {
        return $this->hasMany('App\Models\Consultation');
    }

    public function timeline()
    {
        return $this->hasMany('App\Models\Timeline');
    }

    public function allergies()
    {
        return $this->hasMany('App\Models\Allergy');
    }

    public function patientHistory()
    {
        return $this->hasMany('App\Models\PatientHistoryData');
    }

    
}
