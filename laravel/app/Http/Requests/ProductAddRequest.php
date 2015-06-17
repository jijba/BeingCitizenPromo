<?php namespace App\Http\Requests;

use App\Http\Requests\Request;

class ProductAddRequest extends Request {

	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize()
	{
		return false;
	}

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules()
	{
		return [
			'pname' => 'required|max:40',
                  'price' => 'required',
                  'quantity' => 'required|integer'
		];
	}

}
