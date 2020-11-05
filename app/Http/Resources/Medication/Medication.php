<?php

namespace App\Http\Resources\Medication;

use Illuminate\Http\Resources\Json\JsonResource;

class Medication extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return parent::toArray($request);
    }
}
