<?php

namespace App\Http\Requests\Patient;

use Illuminate\Foundation\Http\FormRequest;

class PatientRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'surname' => 'required|min:3',
            'othernames' => 'required',
            'phone' => 'nullable|min:10|unique:patients,phone',
            'idNo' => 'nullable|unique:patients,id_no',
            'dob' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'surname.required' => 'This field is required.',
            'othernames.required' => 'This field is required.',
            'phone.required' => 'This field is required.',
            'idNo.required' => 'This field is required.',
            'dob.required' => 'This field is required.',
        ];
    }
}
