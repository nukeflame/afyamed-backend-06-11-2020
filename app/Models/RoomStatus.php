<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RoomStatus extends Model
{
    protected $table = 'room_status';

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function department()
    {
        return $this->belongsTo('App\Models\Department', 'room_id');
    }

    public function branch()
    {
        return $this->belongsTo('App\Models\HospitalBranch', 'branch_id');
    }
}
