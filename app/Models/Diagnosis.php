<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Diagnosis extends Model
{
    public function consultation()
    {
        return $this->hasMany('App\Models\Consulatation');
    }
}
