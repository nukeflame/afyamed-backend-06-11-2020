<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    public function staff()
    {
        return $this->hasMany('App\Models\Staff');
    }

    public function room_status()
    {
        return $this->hasMany('App\Models\RoomStatus', 'room_id');
    }

    public function to_queue()
    {
        return $this->hasMany('App\Models\Queue', 'to');
    }

    public function from_queue()
    {
        return $this->hasMany('App\Models\Queue', 'from');
    }

    public function patients()
    {
        return $this->hasMany('App\Models\Patient');
    }
}
