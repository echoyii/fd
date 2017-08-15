<?php 

namespace Admin\Model;

use Think\Model;

class LecturerModel extends Model{	
	
	/**
	 * 讲师新增或者更新
	 */
	public function update()
	{

		$data = $this->create();

		if (empty($data)) {
			$this->error = '数据异常';
			return false;
		}
		$data['uid'] = $_SESSION['user']['id'];

		//判断是否为外部讲师
		if (empty($data['user_id'])) {
			if (empty($data['name'])) {
				$this->error = '姓名不能为空';
				return false;
			}
		//内部讲师判断
		} else {

			$name = $this->gname($data['user_id']);
			if (empty($name)) {
				$this->error = '内部讲师不存在';
				return false;
			}
			if (empty($data['name'])) {
				$data['name'] = $name;
			}
			

		}

		$id = $data['id'];
		if (empty($id)) {
			//新增数据
			$result = $this->add($data);
		} else {
			//修改数据
			$result = $this->save($data);
		}

		return true;
	}

	/*
	 * 根据ID获取详情页
	 */
	public function detail($id)
	{
		$data = $this->find($id);
		return $data;
	}

	/**
	 * 根据用户ＩＤ获取用户名
	 */
	public function gname($uid)
	{
		$Model = M('users');
		$result = $Model->field('username')->where(['id' => $uid])->find();
		return $result['username'];
	}

	/**
	 * 获取分页展示数据
	 */
	public function getPage($type = 0, $p = 1)
	{
		$uid = $_SESSION['user']['id'];
		//获取内部讲师
		if ($type == 0) {
			$list = $this->where(['uid' => $uid, 'type' => $type])->page($p, $size)->select();
			foreach ($list as $k => $v) {
				$list[$k]['name'] = $this->gname($v['user_id']);
			}
			//预留获取部门
			//............

		}
		//获取外部讲师
		if ($type == 1) {
			$list = $this->where(['uid' => $uid, 'type' => $type])->page($p, $size)->select();
			//预留获取供应商
			//..........
		}

		return $list;

	}

	/**
	 * 获取分页总数
	 */
	public function getCount($type = 0)
	{
		$uid = $_SESSION['user']['id'];
		$count = $this
			->where(['uid' => $uid,
				 'type' => $type
				 ])
			->count();
		return $count;	
	}

	/**
	 *获取讲师详情
	 */
	public function getDetail()
	{
		$id = I('get.id');
		$uid = $_SESSION['user']['id'];

		$detail = $this
			->where([
			'uid' => $uid,
			'id' =>$id
			])
			->find();
		//获取工号
		$number = ['company_id' => '1234'];

		$data = array_merge($number, $detail);
		return $data;
	}
}