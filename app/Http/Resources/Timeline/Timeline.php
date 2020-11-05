<?php

namespace App\Http\Resources\Timeline;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Medic\Medic as MedicResource;
use Carbon\Carbon;

class Timeline extends JsonResource
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
            'medic' => new MedicResource($this->medic),
            'medicId' => $this->medic_id,
            'nameType' => $this->name_type,
            'content' => $this->content,
            'createdAt' => Carbon::parse($this->created_at)->format('d M, Y')
        ];
    }
}
