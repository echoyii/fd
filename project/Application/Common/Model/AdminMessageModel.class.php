<?php
namespace Common\Model;
use Common\Model\BaseModel;
/**
 * 菜单操作model
 */
class AdminMessageModel extends BaseModel{

	/*或者未发送的消息通知数目*/

	public function countMessage($uid=null){

		$map=array();
		$map['uid']=$uid;
		$map['is_delete']=0;
		$map["status"]=0;

		$messages = M('AdminMessage')->alias('a')->join(' LEFT JOIN think_users  as  b  on b.id = a.uid')->select();

		return $messages;
	}


}
