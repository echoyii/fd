<?php
namespace Common\Model;
use Common\Model\BaseModel;
/**
 * ModelName
 */
class AdminProjectModel extends BaseModel{



    /*获取所有的培训项目*/
    public function getAll($i,$condition){

        $map=array();

        if(!empty($condition)){

            $condition="%" . $condition . "%";

            $map['project_name|class_name|project_description']=array('like',$condition);
            
            
        }


        
        $map["type"]=$i;

        $count=$this->where($map)->count();

        $Page=new \Think\Page($count,4);

        $Page->type=$i;

        $Page->setConfig('prev','上一页');

        $Page->setConfig('next','下一页');

        $show=$Page->show();

        $list = $this->where($map)->limit($Page->firstRow.','.$Page->listRows)->select();

       
        
        $assign=array(
            "show"=>$show,
            "list"=>$list
                );

        return $assign;
        
    }

    /*保存新建培训项目*/

    public function createProject($data){

        
        $result=$this->data($data)->add();

        return $result;




    }
   



}
