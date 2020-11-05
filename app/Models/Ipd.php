<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ipd extends Model
{
    protected $table = "ipd_details";
    
    public function patient()
    {
        return $this->belongsTo('App\Models\Patient');
    }
}
