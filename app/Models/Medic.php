<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Medic extends Model
{
    public function staff()
    {
        return $this->belongsTo('App\Models\Staff');
    }

    public function opd()
    {
        return $this->hasMany('App\Models\Opd');
    }

    public function timeline()
    {
        return $this->hasMany('App\Models\Timeline');
    }

    // public function medic()
    // {
    //     return $this->hasMany('App\Models\Timeline');
    // }
}
