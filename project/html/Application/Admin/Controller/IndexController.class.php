<?php
namespace Admin\Controller;
use Common\Controller\AdminBaseController;

/**
 * 后台首页控制器
 */
class IndexController extends AdminBaseController{
	/**
	 * 首页
	 */
	public function index(){

		// 分配菜单数据
		$nav_data=D('AdminNav')->getTreeData('level','order_number,id');
		//获取未发送的消息通知数目
		$messages=D('AdminMessage')->countMessage($_SESSION['user']['id']);

		/*导航位置*/
		$location="融易典首页";

		$assign=array(
			'data'=>$nav_data,
			'messages'=>$messages,
			"location"=>$location
			);
		
		$this->assign($assign);
	    
	    $this->display();
		
	}
	/**
	 * elements
	 */
	public function elements(){

		$this->display();
	}
	


	/**
	 * 加载尾部部分
	 */
	public function footer(){
	    
	    $this->display("Public:header");
	}







}
