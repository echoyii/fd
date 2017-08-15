<?php 

namespace Admin\Controller;

use Common\Controller\AdminBaseController;

class AuditController extends AdminBaseController{
	/**
	 *
	 */
	public function audit(){
       show_verify();
        
    
  }
  public function check(){
  	$code = I('code');
  	if(check_verify($code)){
          echo '验证码正确';
	}
  }

  public function test(){
         import("Org.Nx.AjaxPage");// 导入分页类  注意导入的是自己写的AjaxPage类

          $credit = M('users');
          $count = $credit->count(); //计算记录数
          $limitRows = 1; // 设置每页记录数
       
        $p = new \AjaxPage($count, $limitRows,"user1"); //第三个参数是你需要调用换页的ajax函数名
        $limit_value = $p->firstRow . "," . $p->listRows;
       
        $data1 = $credit->order('id desc')->limit($limit_value)->select(); // 查询数据
        $page1 = $p->show(); // 产生分页信息，AJAX的连接在此处生成

        $this->assign('list1',$data1);
        $this->assign('page1',$page1);  
        $this->display('audit');
     }

     public function test2(){
     	 import("Org.Nx.AjaxPage");// 导入分页类  注意导入的是自己写的AjaxPage类
     	  $credit2 = M('admin_project');
        $count = $credit2->count(); //计算记录数
        $limitRows = 5; // 设置每页记录数
        $p = new \AjaxPage($count, $limitRows,"user2"); //第三个参数是你需要调用换页的ajax函数名
        $limit_value = $p->firstRow . "," . $p->listRows;
       
        $data2 = $credit2->limit($limit_value)->select(); // 查询数据
        // print_r($data2);
        $page2 = $p->show(); // 产生分页信息，AJAX的连接在此处生成

        $this->assign('list2',$data2);
        $this->assign('page2',$page2);

       $this->display('audit');
     }
}


