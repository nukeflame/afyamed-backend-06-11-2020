<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PermCategory extends Model
{
    protected $table = "permission_categories";

    public function roles()
    {
        return $this->belongsToMany('App\Models\Role', 'roles_permissions')->withPivot('hosp_branch_id', 'can_view', 'can_create', 'can_edit', 'can_delete')->withTimestamps();
    }
}
