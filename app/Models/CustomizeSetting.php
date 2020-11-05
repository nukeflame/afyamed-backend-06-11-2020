<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomizeSetting extends Model
{
    public function user()
    {
        return $this->belongsToMany('App\User', 'user_customizes', 'customize_id', 'user_id');
    }
}
