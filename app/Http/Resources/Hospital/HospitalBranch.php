<?php

namespace App\Http\Resources\Hospital;

use Illuminate\Http\Resources\Json\JsonResource;

class HospitalBranch extends JsonResource
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
            'hospName' => $this->branch_name,
            'hospCode' => $this->branch_code,
            'hospId' => $this->hospital_id,
            'hospEmail' =>  $this->branch_email,
            'address' =>  $this->branch_address,
            'location' =>  $this->branch_location,
            'telephone' =>  $this->branch_telephone,
            'hospUrl' =>  $this->branch_telephone,
            'isActive' =>  $this->branch_is_active,
            //select search
            'value' => $this->id,
            'label' => $this->branch_name,
        ];
    }
}
