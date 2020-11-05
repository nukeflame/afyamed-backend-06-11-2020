<?php

namespace App\Http\Requests\User;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
            // 'slug' => 'required|min:3|unique:roles,slug,' . $this->id,
            'username' => 'required|min:3',
            'email' => 'required|email|unique:users,email,' . $this->id,
            'password' => 'required|confirmed|min:6|max:32',
            'idNo' => 'required|min:8',
        ];
    }
}
