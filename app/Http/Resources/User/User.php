<?php

namespace App\Http\Resources\User;

use App\Models\Role;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Models\Staff;
use App\Models\Hospital;
use App\Models\RoomStatus;
use App\Http\Resources\Module\ModuleCollection;
use App\Http\Resources\Hospital\Hospital as HospitalResource;
use  App\Http\Resources\Staff\Staff as StaffResource;
use App\Http\Resources\Role\RoleCollection;
use App\Http\Resources\Dep\RoomStatus as RoomStatusResource;

class User extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $hospital = Hospital::where('client_id', $this->staff->client_id)->first();
        $perms = Role::find(1)->permissions;
        $status = [];
        if ($this->room_status !== null) {
            foreach ($this->room_status as $r) {
                array_unshift($status, new RoomStatusResource($r));
            }
        }
        $miniSignOut = count($status) > 0 ? $status[0]->mini_sign_out : 0;

        return [
            'id' => $this->id,
            'hospId' => $hospital->id,
            'staff' => new StaffResource($this->staff),
            'uniqId' => $this->uniqId,
            'idNo' => $this->id_no,
            'username' => $this->username,
            'email' => $this->email,
            'avatar' => $this->avatar,
            'accessLevel' => $this->acc_level,
            'isActive' => $this->is_active,
            'roles' => $this->roles,
            'hospital' => new HospitalResource($hospital),
            'hospBranchId' => $this->staff->branch_id,
            'deptId' => $this->staff->department_id,
            'userModules' => $perms,
            'miniSignOut' =>  $miniSignOut,
            'roles' =>  $this->roles,
            'createdAt' => $this->created_at,
        ];
    }
}
