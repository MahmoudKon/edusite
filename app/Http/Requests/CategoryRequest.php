<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
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
            'name'       => 'required|min:5|max:190|unique:categories,name,' . $this->id . '|unique:categories,slug,' . $this->id,
            'order'      => 'required|integer|between:1,1000000|unique:categories,order,' . $this->id,
            'visibility' => 'required|in:0,1',
        ];
    }
}
