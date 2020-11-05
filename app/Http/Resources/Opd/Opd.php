<?php

namespace App\Http\Resources\Opd;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Patient\Patient as PatientResource;
use Carbon\Carbon;
use App\Http\Resources\Medic\Medic as MedicResource;
use App\Http\Resources\Consultation\Consultation as ConsultationResource;

class Opd extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return arrayA
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'opdNo' => $this->opd_no,
            'visitId' =>  str_pad($this->id, 4, "0", STR_PAD_LEFT),
            'dateOfVisit' => $this->appointment_date,
            'medic' => new MedicResource($this->medic),
            'consultation' => new  ConsultationResource($this->consultation),
            'patient' => new PatientResource($this->patient),
        ];
    }
}
