<?php
namespace Admin\Controller;
use Common\Controller\AdminBaseController;
use \Think\Controller;

/**
 * 后台首页控制器
 */
class PublicController extends Controller{
	/**
	 * 加载首页头部部分
	 */
	public function header(){

			// 分配菜单数据
		$nav_data=D('AdminNav')->getTreeData('level','order_number,id');
		//获取未发送的消息通知数目
		$messages=D('AdminMessage')->countMessage($_SESSION['user']['id']);


		$assign=array(
			'data'=>$nav_data,
			'messages'=>$messages
			);
		
		$this->assign($assign);
	    
	    $this->display();
	}

	/**
	 * 加载尾部部分
	 */
	public function footer(){
	    
	    $this->display();
	}








}
