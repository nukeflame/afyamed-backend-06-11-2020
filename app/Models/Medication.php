<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Medication extends Model
{
    public function consultation()
    {
        return $this->belongsTo('App\Models\Consultation');
    }
}
