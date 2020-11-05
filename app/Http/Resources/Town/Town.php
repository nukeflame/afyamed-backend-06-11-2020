<?php

namespace App\Http\Resources\Town;

use Illuminate\Http\Resources\Json\JsonResource;

class Town extends JsonResource
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
            //
            'value' => $this->id,
            'label' => $this->name
        ];
    }
}
