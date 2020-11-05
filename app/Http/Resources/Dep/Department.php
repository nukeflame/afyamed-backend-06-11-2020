<?php

namespace App\Http\Resources\Dep;

use Illuminate\Http\Resources\Json\JsonResource;

class Department extends JsonResource
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
            'depName' => $this->name,
            'isActive' => $this->is_active,
        ];
    }
}
