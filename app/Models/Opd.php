<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Opd extends Model
{
    protected $table = "opd_details";
    protected $fillable = ['patient_id','opd_no'];
    
    public function patient()
    {
        return $this->belongsTo('App\Models\Patient');
    }

    public function consultation()
    {
        return $this->hasOne('App\Models\Consultation');
    }

    public function medic()
    {
        return $this->belongsTo('App\Models\Medic');
    }
}
