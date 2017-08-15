<?php
namespace Admin\Controller;
use Common\Controller\AdminBaseController;
use \Think\Controller;


/**
 * 后台首页控制器
 */
class PublicController extends AdminBaseController{

	
	public function submit(){

		$post=I("post.");

		if (!empty($_FILES)) {
            //图片上传设置
            $config = array(   
                'maxSize'    =>    3145728, 
                'savePath'   =>    '/',
                'rootPath'   =>    './Upload/photo',
                'saveName'   =>    array('uniqid',''), 
                'exts'       =>    array('jpg', 'gif', 'png', 'jpeg'),  
                'autoSub'    =>    true,   
                'subName'    =>    array('date','Ymd')
            );

            $upload = new \Think\Upload($config);// 实例化上传类

			$images = $upload->upload();

			if(!$images){

				$this->error($upload->getError());
			
			}else{

				$project_covers="/Upload/photo". $images['project_covers']['savepath'] . $images['project_covers']['savename'];

				$photo="./Upload/photo". $images['project_covers']['savepath'] . $images['project_covers']['savename'];

				//保存图片路径

				$photosPath="./Upload/photo/".$images['project_covers']['savename'];

				$image = new \Think\Image(); 

				$image->open("$photo");

				$image->thumb(271,188)->save("$photosPath");

				$post["project_covers"]=substr_replace($photosPath,"",0,1);

				$result=D("AdminProject")->createProject($post);

				if(!$result){

					$this->error("项目保存失败","Admin/Manage/create","2");
				}else{

					$this->success("创建成功");
				}
			
			}

           

        }

	}










}