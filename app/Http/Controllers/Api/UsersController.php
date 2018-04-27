<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\Api\UserRequest;

class UsersController extends Controller
{
    public function store(UserRequest $request)
    {
        $captchaData = \Cache::get($request->captcha_key);

        // if (!$captchaData) {
        //     return $this->response->error('图片验证码已失效', 422);
        // }

        // if (!hash_equals($captchaData['code'], $request->captcha_code)) {
        //     // 验证错误就清除缓存
        //     \Cache::forget($request->captcha_key);
        //     return $this->response->errorUnauthorized('验证码错误');
        // }

        // 清除图片验证码缓存
        \Cache::forget($request->captcha_key);

        $user = User::create([
            'name' => $request->name,
            'password' => bcrypt($request->password),
            'phone' => $request->phone,
            'real_name' => $request->real_name,
            'identity' => $request->identity,
        ]);

        return $this->response->created();
    }
}
