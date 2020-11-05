<?php

namespace App\Http\Resources\Consultation;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Consultation\Consultation as ConsultationResource;
use App\Http\Resources\Medication\Medication as MedicationResource;

class Consultation extends JsonResource
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
            'title' => $this->title,
            'clinicalSummary' => $this->clinical_summary,
            'medications' => $this->medications,
            // 'diagnoses' => new  ConsultationResource($this->diagnoses),
            'diagnoses' => $this->diagnoses
        ];
    }
}
