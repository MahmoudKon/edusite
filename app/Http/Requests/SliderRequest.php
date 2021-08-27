<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SliderRequest extends FormRequest
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
            'name'              => 'required|string|min:3|max:50|unique:sliders,name,' . $this->id,
            'slices.*.title'    => 'required|string|min:3|max:100',
            'slices.*.desc'     => 'required|string|min:3|max:100',
            'slices.*.image'    => 'required_without:id|mimes:jpg,jpeg,png',
        ];
    }
}
