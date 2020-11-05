<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PermGroup extends Model
{
    protected $table = "permission_groups";

    public function categories()
    {
        return $this->hasMany('App\Models\PermCategory', 'perm_group_id', 'id');
    }
}
