<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Module extends Model
{
    public function clients()
    {
        return $this->belongsToMany('App\Models\Client', 'modules_permission', 'module_id', 'client_id')->withTimestamps();
    }
}
