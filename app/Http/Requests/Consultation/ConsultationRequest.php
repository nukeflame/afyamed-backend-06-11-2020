<?php

namespace App\Http\Requests\Consultation;

use Illuminate\Foundation\Http\FormRequest;

class ConsultationRequest extends FormRequest
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
                'medicId' => 'required',
                'appointDate' => 'required',
                'title' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'medicId.required' => 'Medic field is required.',
            'appointDate.required' => 'Date field is required.',
            'title.required' => 'Title field can not be empty.',
        ];
    }
}
