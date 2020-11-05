<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    /**
     * The users that belong to the role.
     */
    public function users()
    {
        return $this->belongsToMany('App\User', 'user_roles');
    }

    public function permissions()
    {
        return $this->belongsToMany('App\Models\PermCategory', 'roles_permissions')->withPivot('hosp_branch_id', 'can_view', 'can_create', 'can_edit', 'can_delete')->withTimestamps();
    }

    public function hospitals()
    {
        return $this->belongsToMany('App\Models\Hospital', 'hospital_roles')->withPivot('is_active')->withTimestamps();
    }
}
