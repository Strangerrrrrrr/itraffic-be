<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('users', UserController::class);
    $router->resource('DriversLicense', DriversLicenseController::class);
    $router->resource('news', NewsController::class);
    $router->resource('DrivingLicense', DrivingLicenseController::class);
    $router->resource('Illegal', IllegalController::class);
});
