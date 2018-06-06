<?php

namespace App\Admin\Controllers;

use App\models\DrivingLicense;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class DrivingLicenseController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('行驶证管理');
            $content->description('管理行驶证信息');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('行驶证信息');
            $content->description('管理行驶证');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('新增用户');
            $content->description('添加新的驾驶证信息');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(DrivingLicense::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->column('real_name', '真实姓名');
            $grid->column('identity', '身份证号');
            $grid->column('license', '车牌');
            $grid->column('engineID', '发动机号');
            $grid->column('vin', '车架号');
            $grid->column('register_time', '申请时间');
            $grid->column('safe_check', '安检情况');
            $grid->filter(function ($filter) {
                $filter->like('real_name', '真实姓名');
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(DrivingLicense::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('real_name', '真实姓名');
            $form->text('identity', '身份证号');
            $form->text('license', '车牌');
            $form->text('engineID', '发动机号');
            $form->text('vin', '车架号');
            $form->date('register_time', '申请时间');
            $form->radio('safe_check', '安检情况')->options(['1' => '是', '0'=> '否']);
        });
    }
}
