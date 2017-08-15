<?php
namespace Home\Controller;
use Think\Controller;
use Think\Verify;

	class PublicController extends Controller {
		
		/**
	    *生成验证码
	    *@return [type] [description]
	    */
	    public function verify(){

	        $config=array('fontSize'    =>    12,
	                       'length'     =>    4,        
	                       'useNoise'   =>    false,
	                       'imageW'     =>86,
	                       'imageH' =>40
	                     );

	        $Verify = new \Think\Verify($config);

	        $Verify->entry();

	    }

	    /**
	    *短信发送
	    *@return [type] [description]
	    */
	    public function sendMessage(){

	    	Vendor('Sms.Sms');

	    	$Sms = new \Sms();

			$mobile=I('post.mobile');

			$sendCode=rand(10000,99999);

			$txt="您的验证码为".$sendCode.",2分钟内输入有效。请勿将信息泄露给其他人";

			$result=$Sms->send_sms($mobile,$txt);

			if(substr($result, 0, 1)!=0){

				$data=array("code"=>0,"message"=>"短信验证码发送失败，请重新发送");

				$this->ajaxReturn($data);
			
			}else{

				$data=array("code"=>0,"message"=>"短信验证码发送成功，请稍后！");

				session("sendCode",$sendCode);

				$this->ajaxReturn($data);

			}
		}

	





	}

?>