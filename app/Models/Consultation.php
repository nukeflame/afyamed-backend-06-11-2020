<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Consultation extends Model
{
    public function opd()
    {
        return $this->belongsTo('App\Models\Opd');
    }

    public function patient()
    {
        return $this->belongsTo('App\Models\Patient');
    }

    public function diagnosis()
    {
        return $this->belongsTo('App\Models\Diagnosis');
    }

    public function medications()
    {
        return $this->hasMany('App\Models\Medication');
    }
}
