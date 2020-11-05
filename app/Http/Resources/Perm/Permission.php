<?php

namespace App\Http\Resources\Perm;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Perm\CategoryCollection as CatCollection;

class Permission extends JsonResource
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
            'isActive' => $this->is_active,
            'sortOrder' => $this->sort_order,
            'categories' => new CatCollection($this->categories),
        ];
    }
}
