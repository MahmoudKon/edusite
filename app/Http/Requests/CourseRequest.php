<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CourseRequest extends FormRequest
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
            'title'         => 'required|min:5|max:50',
            'price'         => 'nullable|numeric|min:1',
            'discount'      => 'nullable|numeric|min:1|max:100',
            'start_date'    => 'required_with:discount|required_with:end_date|nullable|date',
            'end_date'      => 'required_with:discount|required_with:start_date|nullable|date|after_or_equal:start_date',
            'desc'          => 'required|min:5|string',
            'category_id'   => 'required|exists:categories,id',
            'image'         => 'required_without:id|mimes:jpg,jpeg,png',
            'visibility'    => 'required|in:0,1',
        ];
    }
}
