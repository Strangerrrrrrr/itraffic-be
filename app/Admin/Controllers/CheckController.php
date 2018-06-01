<?php

namespace App\Admin\Controllers;

use App\Models\Check;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class CheckController extends Controller
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

            $content->header('安检信息管理');
            $content->description('管理安检信息');

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

            $content->header('编辑安检信息');
            $content->description('编辑安检信息');

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

            $content->header('新增安检信息');
            $content->description('新增安检信息');

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
        return Admin::grid(Check::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->column('user_id', '用户ID');
            $grid->column('name', '姓名');
            $grid->column('license', '牌照');
            $grid->column('type', '车辆型号');
            $grid->column('book_date', '预约时间');
            $grid->column('book_time', '预约时段');
            $grid->column('region', '地区');
            $grid->column('exam_room', '地点');
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
        return Admin::form(Check::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('name', '姓名');
            $form->text('user_id', '用户ID');
            $form->text('license', '牌照');
            $form->radio('type', '车辆型号')->options(['小型车' => '小型车', '中型车' => '中型车','挂车' => '挂车'])->default('小型车');
            $form->date('book_date', '预约日期');
            $form->radio('book_time', '预约时间')->options(['am' => '上午', 'pm' => '下午'])->default('am');
            $form->text('region', '地区');
            $form->text('exam_room', '地点');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
