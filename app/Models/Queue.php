<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Queue extends Model
{
    public function patient()
    {
        return $this->belongsTo('App\Models\Patient');
    }

    public function to_room()
    {
        return $this->belongsTo('App\Models\Department', 'to');
    }

    public function from_room()
    {
        return $this->belongsTo('App\Models\Department', 'from');
    }

    public function user()
    {
        return $this->belongsTo('App\User', 'queued_by');
    }
}
