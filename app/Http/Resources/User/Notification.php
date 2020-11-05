<?php

namespace App\Http\Resources\User;

use Illuminate\Http\Resources\Json\JsonResource;

class Notification extends JsonResource
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
            'type' => $this->type,
            'notifiableType' => $this->notifiable_type,
            'notifiableId' => $this->notifiable_id,
            'data' => $this->data,
            'readAt' => $this->read_at,
            'createdAt' => $this->created_at,
            'data' => $this->data,
        ];
    }
}

