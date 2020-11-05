<?php

namespace App\Http\Resources\Client;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Hospital\HospitalCollection;
use App\Http\Resources\Module\ModuleCollection;

class Client extends JsonResource
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
            'surname' => $this->surname,
            'otherName' => $this->other_names,
            'phone' => $this->phone,
            'role' => $this->role,
            'email' => $this->email,
            'idType' => $this->id_type,
            'idNo' => $this->id_no,
            'userId' => $this->user_id,
            'regBy' => $this->reg_by,
            'fullname' => $this->other_names. ' '. $this->surname,
            'modulePerms' => new ModuleCollection($this->modules),
            // 'hospitals' => new HospitalCollection($this->hospitals)
        ];
    }
}
