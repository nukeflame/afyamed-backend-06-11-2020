<?php

namespace App\Http\Resources\Role;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\User\UserCollection;
use App\Http\Resources\Perm\CategoryCollection;

class Role extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'slug' => $this->slug,
            'isActive' => $this->is_active,
            // 'users' => new UserCollection($this->users),
            'permissions' => new CategoryCollection($this->permissions),
            // 'rolesPerms' => $this->permissions,
        ];
    }
}
