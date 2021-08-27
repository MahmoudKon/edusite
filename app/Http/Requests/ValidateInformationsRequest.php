<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ValidateInformationsRequest extends FormRequest
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
            'name'  => 'required|string|min:3|max:30',
            'job'   => 'required|string|min:3|max:50',
            'bio'   => 'required|string|min:3|max:150',
            'image' => 'nullable|image|mimes:png,jpg,jpeg',
        ];
    }
}
