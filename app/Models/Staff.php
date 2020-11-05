<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    protected $table = "staff";
 
    /**
     * Get the client that owns the hospital.
     */
    public function client()
    {
        return $this->belongsTo('App\Models\Client');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function hospital()
    {
        return $this->belongsTo('App\Models\Hospital');
    }

    public function department()
    {
        return $this->belongsTo('App\Models\Department');
    }

    public function medics()
    {
        return $this->hasMany('App\Models\Medic');
    }
}
