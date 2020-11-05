<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class HospitalBranch extends Model
{
    use SoftDeletes;

    /**
     * Get the branch that owns the hospital.
     */
    public function hospital()
    {
        return $this->belongsTo('App\Models\Hospital');
    }

    /**
     * Get the branch that owns the hospital.
     */
    public function users()
    {
        return $this->hasMany('App\User');
    }

    /**
     * Get the branch that owns the hospital.
     */
    public function room_status()
    {
        return $this->hasMany('App\Models\RoomStatus');
    }
}
