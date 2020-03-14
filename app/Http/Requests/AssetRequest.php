<?php

namespace App\Http\Requests;

use App\Asset;
use App\User;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class AssetRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return auth()->check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'id' => [
                'required', Rule::unique((new Asset)->getTable())->ignore($this->route()->asset->id ?? null)
            ],
            'user_id' => [
                'required', 'exists:'.(new User)->getTable().',id'
            ]
        ];
    }

    /**
     * Get the validation attributes that apply to the request.
     *
     * @return array
     */
    public function attributes()
    {
        return [
            'user_id' => 'user'
        ];
    }
}