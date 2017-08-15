<?php 

namespace Admin\Model;

use Think\Model;

class CourseModel extends Model
{
	public $_validate = [
	['course_name', 'require', '课程名不能为空'],
	['course_cat_id', 'require', '请选择分类'],
	['course_time', 'require', '课程时长不能为空']
	];

	public function update()
	{
		$data = $this->create();
		$data['course_cover'] = json_encode($data['course_cover']);
		if (empty($data)) {
			return false;
		}
		$detail = D('CourseDetail');
		if (empty($data['id'])) {
			$id = $this->add();
			$detail = $detail->update($id);
			if (empty($detail)) {
				$this->delete($id);
			}
		} else {
			$id = $data['id'];
			$this->save();
			$detail = $detail->update();
			if (empty($detail)) {
				$this->delete($id);
			}
		}

		
		
		return true;
	}

	public function detail($id)
	{
		$total = $this->find($id);

		if (!is_array($total)) {
			$this->error = '文章不存在';
			return false;
		}

		$info = M('course_detail');
		$info_detail = $info->find($id);
		$data = array_merge($total, $info_detail);
		return $data;
	}

	public function getChapter($id)
	{
		if (empty($id)) {
			$this->error = '章节不存在';
			return false;
		}

		$chapter = M('course_chapter');
		$chapter_detail = $chapter->find($id);

		return $chapter;
	}
}