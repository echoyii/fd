<?php
namespace Home\Controller;
use Think\Controller;
use \Org\Util\Rbac;
class RegisterController extends Controller {
   
	  /**
    *注册显示页面
    *@return [type] [description]
    */
    public function register(){

        $this->display();

    }

    /**
     * 注册动作
     * @return [type] [description]
     */
    public function signup(){
        
        $code = I('post.code');

        if($code!=session("sendCode")){
        	
        	$data=array("code"=>0,"message"=>"验证码不正确");

        	$this->ajaxReturn($data);

        }

		$username=I("post.username");

        $password=I("post.password");

        $mobile=I("post.mobile");

        $number=I("post.number");

        $map=array();

        $map["phone"]=$mobile;

         //验证账号密码
        $data=M('Users')->where($map)->find();

        if(!empty($data)){

            $data=array("code"=>1 ,"message"=>"该手机号码已经注册!");

            $this->ajaxReturn($data);

        }

        

		$data = array(
            'username' => $username,
            'password' => md5($password),
            'phone'   => $mobile,
            "number"   =>$number,
            "register_time"=>time()
            );
        $status = M('Users')->add($data);
       
        if($status){

            $data=array("code"=>3,"message"=>"注册成功，等待跳转！");

            $this->ajaxReturn($data);

        }else{
            
            $data=array("code"=>3,"message"=>"注册失败，请重新注册");

            $this->ajaxReturn($data);
        }
    }


}