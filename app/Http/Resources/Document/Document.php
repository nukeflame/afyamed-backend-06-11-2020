<?php

namespace App\Http\Resources\Document;

use Illuminate\Http\Resources\Json\JsonResource;

class Document extends JsonResource
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
            'id' =>$this->id,
            'fileName' =>$this->file_name,
            'fileSize' =>$this->file_size,
            'fileType' =>$this->file_type,
            'data' =>$this->data,
            'width' =>$this->width,
            'height' =>$this->height,
            'patient' =>$this->patient,
        ];
    }
}
