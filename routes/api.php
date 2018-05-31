<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

$api = app('Dingo\Api\Routing\Router');

$api->version('v1', [
    'namespace' => 'App\Http\Controllers\Api',
    'middleware' => 'serializer:array'
],function($api) {
    $api->get('version', function() {
        return response('this is version v1');
    });

    $api->group([
        'middleware' => 'api.throttle',
        'limit' => config('api.rate_limits.sign.limit'),
        'expires' => config('api.rate_limits.sign.expires'),
    ], function($api) {
        // 游客可以访问的接口
        
        // 用户注册
        $api->post('users', 'UsersController@store')
            ->name('api.users.store');
        // 图片验证码
        // $api->post('captchas', 'CaptchasController@store')
        // ->name('api.captchas.store');
        // 登录
        $api->post('authorizations', 'AuthorizationsController@store')
        ->name('api.authorizations.store');
        // 刷新token
        $api->put('authorizations/current', 'AuthorizationsController@update')
        ->name('api.authorizations.update');
        // 删除token
        $api->delete('authorizations/current', 'AuthorizationsController@destroy')
        ->name('api.authorizations.destroy');

        // 违章查询
        $api->post('illegal/search', 'IllegalController@search')
        ->name('api.illegal.search');

        // 考场地区
        $api->post('examcenter/search', 'ExamCenterController@search')
        ->name('api.examcenter.search');
       

        // 交规宣传
        $api->get('publicboard/show', 'PublicBoardController@show')
        ->name('api.publicboard.show');
        // 新闻
        $api->get('news', 'PublicBoardController@news')
        ->name('api.publicboard.news');       
    

        // 上传身份证
        $api->post('user/identity', 'UsersController@identity')
        ->name('api.user.identity');


        // 需要 token 验证的接口
        $api->group(['middleware' => 'api.auth'], function($api) {
            // 当前登录用户信息
            $api->get('user', 'UsersController@me')
                ->name('api.user.show');
            $api->patch('user', 'UsersController@update')
                ->name('api.user.update');
                


            // 驾驶证业务
            $api->get('driverslicense/show','DriversLicenseController@show')
                ->name('api.driversLicense.show');
            // 修改地址
            $api->post('driverslicense/address', 'DriversLicenseController@address')
                ->name('api.driverslicense.address');
            // 修改密码
            $api->post('users/pass', 'UsersController@pass')
                ->name('api.users.pass');
                
            // 行驶证业务
            $api->get('drivinglicense/show','DrivingLicenseController@show')
                ->name('api.drivingLicense.show');

            // 申诉
             $api->post('complain/store','ComplainController@store')
                ->name('api.complain.store');

            // 存储准考证
             $api->post('admission/store','AdmissionController@store')
             ->name('api.admission.store');

             // 调出准考证
             $api->get('admission/show','AdmissionController@show')
             ->name('api.admission.show');

             // 储存预约换证
             $api->post('change/store','ChangeController@store')
             ->name('api.change.store');

             // 调出换证信息
             $api->get('change/show','ChangeController@show')
             ->name('api.change.show');

             // 存储安检预约
             $api->post('check/store','CheckController@store')
             ->name('api.check.store');

             // 储存安检基础信息
             $api->post('check/storeBasicInfo','CheckController@storeBasicInfo')
             ->name('api.check.store.basicinfo');

             // 储存安检时间信息
             $api->post('check/storeTimeInfo','CheckController@storeTimeInfo')
             ->name('api.check.store.timeinfo');

             // 存储安检地点
             $api->post('check/storeSiteInfo','CheckController@storeSiteInfo')
             ->name('api.check.store.siteinfo');

             // 调出安检信息
             $api->get('check/show','CheckController@show')
             ->name('api.check.show');
             
             //调出安检信息数组
             $api->get('check/showAll','CheckController@showAll')
             ->name('api.check.showAll');

             // 存储确认安检
             $api->post('check/storeFinishInfo','CheckController@storeFinishInfo')
             ->name('api.check.store.finishinfo');
        });
    });
});

