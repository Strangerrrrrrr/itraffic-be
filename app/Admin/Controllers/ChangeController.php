<?php

namespace App\Admin\Controllers;

use App\Models\Change;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class ChangeController extends Controller
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

            $content->header('预约换证管理');
            $content->description('管理预约换证');

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

            $content->header('编辑换证信息');
            $content->description('编辑换证信息');

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

            $content->header('新增预约信息');
            $content->description('新增预约信息');

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
        return Admin::grid(Change::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->column('name', '姓名');
            $grid->column('identity', '身份证');
            $grid->column('vehicle_type', '准驾车型');
            $grid->column('phone', '联系方式');
            $grid->created_at();
            $grid->updated_at();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Change::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('name', '姓名');
            $form->text('identity', '身份证');
            $form->text('vehicle_type', '准驾车型');
            $form->text('phone', '联系方式');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
