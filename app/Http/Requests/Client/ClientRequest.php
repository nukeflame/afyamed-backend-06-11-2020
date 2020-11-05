<?php

namespace App\Http\Requests\Client;

use Illuminate\Foundation\Http\FormRequest;
use App\Http\Controllers\Traits\HasPermission;

class ClientRequest extends FormRequest
{
    use HasPermission;
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // if ($this->hasRole(['admin','superadmin'])) {
        //     return true;
        // }
        // else {
        //     return false;
        // }

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
            'surname' => 'required|min:3|max:50',
            'other_names' => 'required|min:3|max:50',
            'id_type' => 'required',
            'id_no' => 'required|min:3|max:50|unique:clients,id_no,'. $this->id,
            'client_email' => 'required|email|unique:users,email,'. $this->userId,
            'password' => 'nullable|confirmed|min:6',
            'phone' => 'required',
            'hospital_name' => 'required',
            'hospital_code' => 'required',
            'telephone' => 'required',
            'hospital_email' => 'nullable|email',
            'address' => 'required',
            'location' => 'required',
            'role' => 'required',

        ];
    }

    public function messages()
    {
        return [
            'surname.required' => 'This field is required.',
            'other_names.required' => 'This field is required.',
            'id_type.required' => 'This field is required.',
            'id_no.required' => 'This field is required.',
            'id_no.unique' => 'This number already in use.',
            'client_email.required' => 'This field is required.',
            'password.required' => 'This field is required.',
            // 'password.confirmed' => 'Password Mismatch!Retype again.',
            'phone.required' => 'This field is required.',
            'hospital_name.required' => 'This field is required.',
            'hospital_code.required' => 'This field is required.',
            'telephone.required' => 'This field is required.',
            'hospital_email.required' => 'This field is required.',
            'address.required' => 'This field is required.',
            'location.required' => 'This field is required.',
            'role.required' => 'This field is required.',
        ];
    }
}
