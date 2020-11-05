<?php

namespace App\Http\Requests\Role;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class RoleRequest extends FormRequest
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
            'slug' => 'required|min:3',
            // 'slug' => 'required|min:3|unique:roles,slug,' . $this->id,
            'role' => 'required|min:3',
            'isActive' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'slug.required' => 'This field is required.',
            'role.required' => 'This field is required.',
            'isActive.required' => 'This field is required.',
        ];
    }
}
