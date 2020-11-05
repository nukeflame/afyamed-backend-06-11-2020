<?php

namespace App\Http\Resources\Staff;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Dep\Department as DepResource;

class Staff extends JsonResource
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
            'surname' => $this->surname,
            'fullname' => $this->othernames . ' ' . $this->surname,
            'fatherName' => $this->father_name,
            'mainBranch' => $this->main_branch,
            'department' => new DepResource($this->department),
        ];
    }
}
