<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Timeline extends Model
{
    public function patient()
    {
        return $this->belongsTo('App\Models\Patient');
    }

    public function medic()
    {
        return $this->belongsTo('App\Models\Medic');
    }
}
