<?php
namespace Admin\Controller;
use Common\Controller\AdminBaseController;

/**
 * 培训管理控制器
 */
class ManageController extends AdminBaseController{
	/**
	 *培训项目
	 */
	public function index(){

		$type=I("get.type")?I("get.type"):0;

		$data=array();

		for($i=0;$i<5;$i++){

			//获取对应状态状态的培训项目
			$assign=D('AdminProject')->getAll($i);

			$data[$i]=$assign;
		}
		
		/*进行中*/
		$this->assign("list0",$data[0]);
		/*草稿*/
		$this->assign("list1",$data[1]);
		/*待审核*/
		$this->assign("list2",$data[2]);
		/*已拒绝*/
		$this->assign("list3",$data[3]);
		/*已完成*/
		$this->assign("list4",$data[4]);
		
		$this->display();
	}






}
