<?php

namespace App\Http\Resources\Opd;

use Illuminate\Http\Resources\Json\ResourceCollection;

class OpdCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return parent::toArray($request);
    }
}
