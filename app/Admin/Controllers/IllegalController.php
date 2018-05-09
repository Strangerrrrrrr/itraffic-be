<?php

namespace App\Admin\Controllers;

use App\Models\Illegal;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class IllegalController extends Controller
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

            $content->header('header');
            $content->description('description');

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

            $content->header('header');
            $content->description('description');

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

            $content->header('header');
            $content->description('description');
   
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
        return Admin::grid(Illegal::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->column('license', '车牌号码');
            $grid->column('engineID', '发动机号');
            $grid->column('location', '地址');
            $grid->column('illegal_id', '违章代码');
            $grid->column('status', '状态');
            $grid->column('pay_image', '付款照片')->image('http://localhost:8000/uploads/', 100, 100);
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
        return Admin::form(Illegal::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('license', '车牌号码');
            $form->text('engineID', '发动机号');
            $form->text('location', '地址');
            $form->text('illegal_id', '违章代码');
            $form->radio('status', '状态')->options(['待确认' => '待确认', '审核中'=> '审核中'])->default('待确认');
            $form->image('pay_image', '身份证图片');
            
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
