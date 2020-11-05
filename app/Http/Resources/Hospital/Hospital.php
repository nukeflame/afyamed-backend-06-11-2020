<?php

namespace App\Http\Resources\Hospital;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Hospital\HospitalBranchCollection;
use App\Http\Resources\Client\Client as ClientResource;

class Hospital extends JsonResource
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
            'hospId' => $this->hospital_id,
            'hospCode' => $this->hospital_code,
            'hospName' => $this->hospital_name,
            'hospEmail' =>  $this->email,
            'address' =>  $this->address,
            'location' =>  $this->location,
            'telephone' =>  $this->telephone,
            'hospUrl' =>  $this->hospital_url,
            'isActive' =>  $this->is_active,
            'hospBranches' => new HospitalBranchCollection($this->branches),
            'client' => new ClientResource($this->client),
            //select search
            'value' => $this->id,
            'label' => $this->hospital_name,
        ];
    }
}
