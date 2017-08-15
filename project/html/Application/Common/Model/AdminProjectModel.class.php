<?php
namespace Common\Model;
use Common\Model\BaseModel;
/**
 * ModelName
 */
class AdminProjectModel extends BaseModel{



    /*获取所有的培训项目*/
    public function getAll($type=0){

        $map=array();

        $map["type"]=$type;

        $count=$this->where($map)->count();

        $Page=new \Think\Page($count,4);

      

        $Page->setConfig('prev','上一页');

        $Page->setConfig('next','下一页');

        $show=$Page->show();

        $pattern='href\=\"([a-zA-z0-9\/]{5,}\.html)\" '; 

        var_dump($a);die;

        $list = $this->where($map)->limit($Page->firstRow.','.$Page->listRows)->select();

        $assign=array(
            "show"=>$show,
            "list"=>$list
                );

        return $assign;
        
    }
   



}
