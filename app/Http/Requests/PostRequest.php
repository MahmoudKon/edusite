<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PostRequest extends FormRequest
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
            'title'         => 'required|min:5|max:190',
            'desc'          => 'required|min:5|string',
            'category_id'   => 'required|exists:categories,id',
            'image'         => 'nullable|mimes:jpg,jpeg,png',
            'visibility'    => 'required|in:0,1',
            'tags'          => 'required|array|min:1|max:6',
        ];
    }
}
