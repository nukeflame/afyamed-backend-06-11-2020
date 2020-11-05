<?php

namespace App\Http\Resources\Patient;

use Illuminate\Http\Resources\Json\JsonResource;
use Carbon\Carbon;

class PatientHistoryData extends JsonResource
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
            'historyData' => json_decode($this->history),
            'date' => Carbon::parse($this->date)->format('Y-m-d g:i:s a'),
            'medic' => $this->medic_id,
            'location' => $this->location,
            'isCompleted' => $this->is_completed ? 1 : 0,
            'patientId' => $this->patient_id,
            'patientHistory' => $this->patient_history_id,
        ];
    }
}
