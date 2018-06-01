<?php

namespace App\Admin\Controllers;

use App\Models\User;
use App\Models\DriversLicense;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class DriversLicenseController extends Controller
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

            $content->header('驾驶证管理');
            $content->description('管理驾驶证信息');

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

            $content->header('编辑驾驶证信息');
            $content->description('编辑驾驶证信息');

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

            $content->header('新增驾驶证');
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
        return Admin::grid(DriversLicense::class, function (Grid $grid) {
            $grid->paginate(20);

            $grid->id('ID')->sortable();
            $grid->column('identity', '身份证号');
            $grid->column('real_name', '真实姓名');
            $grid->column('vehicle_type', '驾驶证类型');
            $grid->column('grade', '剩余分数');
            $grid->column('created_at', '领证时间');
            $grid->column('effective_time', '有效时间');
            $grid->column('updated_at', '更新时间');
            $grid->column('address', '家庭住址');

            // filter($callback)方法用来设置表格的简单搜索框
            $grid->filter(function ($filter) {
                $filter->like('real_name', '姓名');
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
        return Admin::form(DriversLicense::class, function (Form $form) {
            $form->display('id', 'ID');
            // $form->display('identity', '身份证号');
            $form->text('identity', '身份证号');
            $form->text('real_name', '真实姓名');
            $form->radio('vehicle_type', '驾驶证类型')->options(['A1' => 'A1', 'A2'=> 'A2','A3'=> 'A3','B1'=> 'B1','B2'=> 'B2','C1'=> 'C1','C2'=> 'C2','C3'=> 'C3','C4'=> 'C4'])->default('C1');
            $form->text('grade', '剩余分数');
            $form->text('effective_time', '有效时间');
            $form->text('address', '家庭住址');

        });
    }
}
