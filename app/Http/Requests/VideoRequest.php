<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VideoRequest extends FormRequest
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
            'title'         => 'required|min:3|max:190|',
            'desc'          => 'required|string|min:5',
            'file'          => 'required_if:type,file|nullable|mimes:mp4,mov,ogg|file|max:100000',
            'url'           => 'required_if:type,url|nullable|url',
            'type'          => 'required|in:file,url',
            'course_id'     => 'required|exists:courses,id',
            'tags'          => 'required|array|min:1|max:6',

        ];
    }

    public function messages()
    {
        return [
            'file.required_if' => 'Please upload video.',
            'url.required_if' => 'Please get url video.'
        ];
    }
}
