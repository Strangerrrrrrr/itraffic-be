<?php

namespace App\Admin\Controllers;

use App\Models\User;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class UserController extends Controller
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

            $content->header('用户管理');
            $content->description('管理用户信息');

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

            $content->header('编辑用户信息');
            $content->description('编辑用户信息');

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
            $content->description('内部添加新用户');

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
        return Admin::grid(User::class, function (Grid $grid) {
            $grid->paginate(20);

            $grid->id('ID')->sortable();
            $grid->column('name', '用户名');
            $grid->column('real_name', '真实姓名');
            $grid->column('sex', '性别');
            $grid->column('identity', '身份证');
            $grid->column('phone', '联系方式');

            $grid->column('identity_image', '身份证照片')->image('http://localhost:8000/uploads/', 100, 100);
            
            $grid->column('status', '审核状态');

            $grid->created_at('注册时间');
            $grid->updated_at('更新时间');

            // filter($callback)方法用来设置表格的简单搜索框
            $grid->filter(function ($filter) {
                $filter->like('name', '用户名');
                // 设置created_at字段的范围查询
                // $filter->between('created_at', 'Created Time')->datetime();
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
        return Admin::form(User::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->text('name', '姓名');
            $form->text('real_name', '真实姓名');
            $form->radio('sex', '性别')->options(['男' => '男', '女'=> '女'])->default('男');
            $form->text('identity', '身份证');
            $form->text('phone', '联系方式');
            $form->image('identity_image', '身份证图片');
            $form->radio('status', '审核通过')->options(['已认证' => '是', '未认证' => '否'])->default('未认证');

            $form->display('created_at', '创建时间');
            $form->display('updated_at', '更新时间');
        });
    }
}
