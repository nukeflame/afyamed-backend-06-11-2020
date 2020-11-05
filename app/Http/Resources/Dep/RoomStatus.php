<?php

namespace App\Http\Resources\Dep;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Dep\Department as DepResource;
use App\Http\Resources\User\User as UserResource;
use App\Http\Resources\Hospital\HospitalBranch as HospitalBranchResource;

class RoomStatus extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return cored
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'user' => new UserResource($this->user),
            'room' => new DepResource($this->department),
            'branch' => new HospitalBranchResource($this->branch),
            'signInAt' => $this->sign_in_at,
            'miniSignOut' => $this->mini_sign_out,
            'statusId' => $this->status_id,
            'signOutAt' => $this->sign_out_at,
        ];
    }
}
