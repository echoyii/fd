<?php 

namespace Admin\Controller;

use Think\Controller;

class FileController extends Controller{
	  public function upload()
	    {

	        if (IS_POST) {
	            $config = array(
	                'maxSize' => 3145728,
	                'savePath' => '',
	                 'rootPath'     => './Public/',
	                'saveName' => array('uniqid', ''),
	                'exts' => array('jpg', 'gif', 'png', 'jpeg'),
	                'autoSub' => true,
	                'subName' => array('date', 'Ymd'),
	            );
	            $upload = new \Think\Upload($config);

	            $info = $upload->upload();

	            if (!$info) {
	                $this->error($upload->getError());
	            } else {

	                $src = ['src' => $info['download']['savepath'] . $info['download']['savename']];
	                $this->ajaxReturn($src, 'json');
	            }
	        } else {
	            echo '失败';

	        }
	    }
}