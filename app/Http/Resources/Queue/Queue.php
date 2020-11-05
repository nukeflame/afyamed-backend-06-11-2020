<?php

namespace App\Http\Resources\Queue;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Dep\Department as DepResource;
use App\Http\Resources\Patient\Patient as PatientResource;
use Carbon\Carbon;
use  App\Http\Resources\User\User as UserResource;


class Queue extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // $opdNo = $this->patient;
        $opdNo = "000002";
        
        return [
            'id' => $this->id,
            'queueNo' => $this->queue_no,
            'dateIn' => Carbon::parse($this->timestamp_in)->format('g:i:s a'),
            'patientName' => $this->patient_name,
            'fromRoom' => new DepResource($this->from_room),
            'toRoom' => new DepResource($this->to_room),
            'note' => $this->note,
            'scheme' => $this->scheme_id,
            'clinic' => $this->clinic_id,
            'duration' => $this->duration,
            'queuedBy' => new UserResource($this->user),
            'opdNo' => $opdNo,
            'patient' => new PatientResource($this->patient),
        ];
    }
}
