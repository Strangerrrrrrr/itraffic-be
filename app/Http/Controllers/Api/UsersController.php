<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\Api\UserRequest;
use App\Transformers\UserTransformer;
class UsersController extends Controller
{
    public function store(UserRequest $request)
    {
        // $captchaData = \Cache::get($request->captcha_key);

        // if (!$captchaData) {
        //     return $this->response->error('图片验证码已失效', 422);
        // }

        // if (!hash_equals($captchaData['code'], $request->captcha_code)) {
        //     // 验证错误就清除缓存
        //     \Cache::forget($request->captcha_key);
        //     return $this->response->errorUnauthorized('验证码错误');
        // }

        // 清除图片验证码缓存
        // \Cache::forget($request->captcha_key);

        $user = User::create([
            'name' => $request->name,
            'password' => bcrypt($request->password),
            'phone' => $request->phone,
            'real_name' => $request->real_name,
            'identity' => $request->identity,
        ]);

        return $this->response->item($user, new UserTransformer())
        ->setMeta([
            'access_token' => \Auth::guard('api')->fromUser($user),
            'token_type' => 'Bearer',
            'expires_in' => \Auth::guard('api')->factory()->getTTL() * 60 * 60
        ])
        ->setStatusCode(201);
    }

    public function me()
    {
        return $this->response->item($this->user(), new UserTransformer());
    }

    public function identity (Request $request) {
        $identity_image = $request->file('identity_image')->store('identity_image');
        // $identity_image = 'storage/' . substr($identity_image, 7);

        $user = User::find($request->user_id);
        $user->identity_image = $identity_image;
        $user->status = '审核中';
        $user->save();

        return $user;
    }

    public function pass(Request $request) {
        $UsersInfo = User::find($this->user()->id);
        $UsersInfo->password = bcrypt($request->password);
        $UsersInfo->save();
        return $UsersInfo;
    }
}
