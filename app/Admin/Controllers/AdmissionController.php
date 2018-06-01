<?php

namespace App\Admin\Controllers;

use App\Models\Admission;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class AdmissionController extends Controller
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

            $content->header('准考证信息');
            $content->description('管理准考证信息');

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

            $content->header('编辑准考证信息');
            $content->description('编辑准考证信息');

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

            $content->header('新增准考证信息');
            $content->description('新增准考证信息');

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
        return Admin::grid(Admission::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->column('user_id', '用户ID');
            $grid->column('region', '地区');
            $grid->column('exam_room', '考点');
            $grid->column('bookdate', '时间');
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
        return Admin::form(Admission::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('user_id', '用户ID');
            $form->text('region', '地区');
            $form->text('exam_room', '考点');
            $form->date('bookdate', '时间');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
