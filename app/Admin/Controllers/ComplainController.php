<?php

namespace App\Admin\Controllers;

use App\Models\Complain;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class ComplainController extends Controller
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

            $content->header('用户申诉管理');
            $content->description('管理用户申诉');

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

            $content->header('编辑');
            $content->description('编辑');

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
        return Admin::grid(Complain::class, function (Grid $grid) {
            $grid->paginate(20);
            $grid->id('ID')->sortable();
            $grid->column('illegal_info_id', '违章信息ID');
            $grid->column('content', '内容');
            $grid->column('picture_1', '认证照片')->image('http://localhost:8000/uploads/', 100, 100);
            $grid->column('status', '状态');
            $grid->column('response', '回复内容');
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
        return Admin::form(Complain::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->radio('status', '状态')->options([
                '申诉中' => '申诉中', 
                '申诉失败'=> '申诉失败' ,
                '申诉成功'=> '申诉成功',
                '未申诉'=> '未申诉',
            ]);
            $form->editor('response', '回复内容');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
