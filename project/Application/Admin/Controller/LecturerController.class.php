<?php 	
namespace Admin\Controller;

use Common\Controller\BaseController;

class LecturerController extends BaseController
{
	/**
	 *讲师列表展示页
	 */
	public function page()
	{	
		//获取页码
		$p = I('get.p');

		//每页大小
		$size = 1;

		//讲师类型
		$type = I('get.type');

		//获取讲师列表
		$Model = D('Lecturer');
		$list = $Model->getPage($type, $p);
		$count = $Model->getCount($type);
		//分页
		$Page = new \Think\Page($count, $size);
		$show = $Page->show();

		$this->assign('list', $list);
		$this->assign('show', $show);
		if ($type == 0) {
			$this->display('page_inside');
		} else {
			$this->display('page_outside');
		}
	}

	public function pagelist()
	{
		$this->display('page');
	}

	/**
	 *新增讲师展示页
	 */
	public function add()
	{
		if (IS_POST) {
			$this->update();
			exit;
		}
		$user = $this->getName();
		$this->assign('user', $user);
		$this->display('new');
	}

	/**
	 *新增或编辑数据操作
	 */
	public function update()
	{

		$Model = D('Lecturer');
		$id = $Model->update();
		if ($id) {
			$this->success('成功');
		} else {
			$this->error($Model->getError());
		}
	}

	/**
	 *编辑展示页
	 */
	public function edit()
	{
		$id = I('get.id');
		$Model = D('Lecturer');
		$detail = $Model->detail($id);
		$user = $this->getName();
		$this->assign('user', $user);
		$this->assign('detail', $detail);
		$this->display('new');
	}

	/**
	  *获取用户名
	  */
	public function getName()
	{
		$User = M('users');
		$data = $User->field('id,username')->select();	
		return $data;
	}

	/**
	 *讲师详情页
	 */
	public function detail()
	{
		
		$Lecturer = D('Lecturer');
		$detail = $Lecturer->getDetail();
		$this->assign('detail', $detail);
		$this->display();
	}

	/**
	 *讲师详情列表页
	 */
	public function detailList()
	{
		$id = I('get.id');
		

		$this->display('detail_list');
	}

}