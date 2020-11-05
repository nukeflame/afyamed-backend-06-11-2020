<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Hospital extends Model
{
    use softDeletes;
    public function patientHistories()
    {
        return $this->belongsToMany('App\Models\PatientHistory', 'hospital_patient_histories');
    }

    
    /**
     * Get the hospital that owns the branches.
     */
    public function branches()
    {
        return $this->hasMany('App\Models\HospitalBranch');
    }

    /**
     * Get the hospital that belongs the user.
     */
    public function users()
    {
        return $this->hasMany('App\User');
    }

    /**
     * Get the client that owns the hospital.
     */
    public function client()
    {
        return $this->belongsTo('App\Models\Client');
    }

    /**
     * Get the client that owns the hospital.
     */
    
    public function staffs()
    {
        return $this->hasMany('App\Models\Staff');
    }

    public function roles()
    {
        return $this->belongsToMany('App\Models\Role', 'hospital_roles')->withPivot('is_active')->withTimestamps();
    }
}
