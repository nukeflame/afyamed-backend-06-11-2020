<?php

namespace App\Http\Resources\Patient;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\User\User as UserResource;
use App\Http\Resources\Staff\Staff as StaffResource;
use App\Http\Resources\Opd\OpdCollection;
use App\Http\Resources\Allergy\AllergyCollection;
use Carbon\Carbon;

class Patient extends JsonResource
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
            'otherNames' => $this->othernames,
            'surname' => $this->surname,
            'patientNo' => $this->uniq_id,
            'idNo' => $this->id_no,
            'avatar' => $this->avatar,
            'gender' => $this->sex,
            'age' => $this->age,
            'address' => $this->location,
            'phone' => $this->phone,
            'telephone' => $this->telephone,
            'nationality' => $this->nationality,
            'email' => $this->email,
            'idType' => $this->id_type,
            'dob' => $this->dob,
            'months' => $this->months,
            'weeks' => $this->weeks,
            'years' => $this->years,
            'refNo' => '9000',
            'residence' => $this->residence,
            'town' => $this->town,
            'postalAddress' => $this->postalAddress,
            'emergRelation' => $this->emerg_relationship,
            'emergName' => $this->emerg_name,
            'emergContacts' => $this->emerg_contacts,
            'postalCode' => $this->postalCode,
            'streetRoad' => $this->streetRoad,
            'location' => $this->location,
            'allergies' => new AllergyCollection($this->allergies),
            'entryDate' => $this->adm_date !== null ? Carbon::parse($this->adm_date)->format('d/m/Y g:i:s a'): "",
            'regUser' => new StaffResource($this->registerdBy),
            'userDetails' => new UserResource($this->user),
            // 'userDetails' => new UserResource($this->user),
            'createdAt' => $this->created_at,
            'updatedAt' => $this->updated_at,
            //UserResource
            'value' => $this->surname,
            'name' => $this->surname,
            'fullname' => $this->surname  . " " . $this->othernames,
        ];
    }
}
