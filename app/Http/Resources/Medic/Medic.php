<?php

namespace App\Http\Resources\Medic;

use Illuminate\Http\Resources\Json\JsonResource;
use  App\Http\Resources\Staff\Staff as StaffResource;

class Medic extends JsonResource
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
            'staff' => new StaffResource($this->staff),
        ];
    }
}
