<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\Api\UserRequest;

class UsersController extends Controller
{
    public function store(UserRequest $request)
    {
        $user = User::create([
            'name' => $request->name,
            'password' => bcrypt($request->password),
            'phone' => $request->phone,
            'real_name' => $request->real_name,
            'identity' => $request->identity,
        ]);

        return $this->response->created();
    }

    public function test()
    {
        return $this->response->array(['test_message' => 'store verification code']);
    }
}
