<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Client extends Model
{
    use SoftDeletes;
    
    /**
     * Get the hospitals that belongs to a client.
     */
    public function hospitals()
    {
        return $this->hasMany('App\Models\Hospital');
    }

    /**
     * Get the staff that belongs to a client.
     */
    public function sfaffs()
    {
        return $this->hasMany('App\Models\Staff', 'client_id', 'id');
    }

    public function modules()
    {
        return $this->belongsToMany('App\Models\Module', 'modules_permission', 'client_id', 'module_id')->withTimestamps();
    }
}
