<?php 

namespace Admin\Model;

use Think\Model;

class CourseDetailModel extends Model{
	function update($id)
	{
		$data = $this->create();
		if ($data['id']) {
			$this->save($data);
		} else {
			if ($data['id']) {
				$data['id'] = $id;	
			}
			$id = $this->add($data);
		}
		
		if (empty($id)) {
			$this->error = '新增数据失败';
			return false;
		}
		return true;
	}
}