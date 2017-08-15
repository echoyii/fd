<?php 

namespace Admin\Controller;

use Common\Controller\AdminBaseController;

class CourseController extends AdminBaseController{
	/**
	 *课程新增展示页
	 */
	public function courseAdd()
	{
		$category = $this->getCategory();
		$lecturer = $this->getLecturer();
		$this->assign('category', $category);
		$this->assign('lecturer', $lecturer);
		$this->display('addcourse');
	}

	/**
	 *课程编辑页面
	 */
	public function courseEdit()
	{
		$id = I('get.id');
		//$id = 2;
		if (empty($id)) {
			$this->error('页面不存在');
		}
		$course = D('Course');
		$detail = $course->detail($id);
		$category = $this->getCategory();
		$lecturer = $this->getLecturer();
		$this->assign('category', $category);
		$this->assign('lecturer', $lecturer);
		$this->assign('detail', $detail);
		$this->display('course/addcourse');
	}

	public function update()
	{
		if (IS_POST) {
			$course = D('Course');
			$res = $course->update();
			if ($res) {
				$this->success('成功');	
			}
			
		}

	}

	public function getCategory()
	{
		$category = M('course_category');
		$result = $category->select();
		return $result;
	}

	public function getLecturer()
	{
		$lecturer = M('lecturer');
		$result = $lecturer->select();
		return $result;
	}

	  public function addChapter()
	    {
	        $name = I('post.name');
	        $src = I('post.src');


	        $chapter = M('course_chapter');
	        $data = [
	            'name' => $name,
	            'src' => $src
	        ];
	        $id = $chapter->add($data);
	        $new = [
	            'id' => $id,
	            'name' => $name,
	            'src' => $src
	        ];
	        $this->ajaxReturn($new, 'json');
	    }

	    public function delChapter()
	    {
	    	if (IS_AJAX) {
	    		$id = I('post.id');
	    		$chapter = M('course_chapter');
	    		$res = $chapter->delete($id);
	    		if ($res) {
	    			echo '200';
	    		} else {
	    			echo '300';
	    		}
	    	} 
	    }

	    

	      public function courseCategory()
	    {
	        $list = M('course_category');
	        $category = $list->select();

	        $catage = tree($category);
	        $new = [];
	        for ($i = 0; $i < count($catage) / 2; $i++) {
	            $new[$i]['cat_name'] = $catage[2 * $i];
	            $new[$i]['id'] = $catage[2 * $i + 1]['id'];
	        }

	        $categoryDefault = [ ];
	        foreach ($category as $k => $v) {
	            $categoryDefault[$v['id']] = $v['pid'];
	        }
	        $this->assign('categoryDefault', $categoryDefault);
	        $this->assign('catage', $new);
	        $this->display('category');
	    }

	    public function tree()
	    {
	        if (IS_AJAX) {
	            echo '1';
	        }
	        if (IS_GET) {
	            $id = I('get.id');
	        }
	        $list = M('course_category');
	        $category = $list->select();
	        $pid = ' ';
	        $name = ' ';
	        foreach ($category as $k => $v) {
	            if ($v['id'] == $id) {
	                $pid = $v['pid'];
	                $name = $v['cat_name'];
	            }
	        }
	        $catage = tree($category);
	        $new = [];
	        for ($i = 0; $i < count($catage) / 2; $i++) {
	            $new[$i]['cat_name'] = $catage[2 * $i];
	            $new[$i]['id'] = $catage[2 * $i + 1]['id'];
	        }
	        $this->assign('pid', $pid);
	        $this->assign('name', $name);
	        $this->assign('catage', $new);
	        $this->display('editcategory');

	    }

	    public function delCategory()
	    {
	        if (IS_GET) {
	            $id = I('get.id');
	            $category = M('course_category');
	            if ($category->delete($id)) {
	                $this->success('删除成功');
	            } else {
	                $this->error('分类不存在');
	            }
	        }
	    }

	    public function addCategory()
	    {
	        if (IS_AJAX) {
	            $pid = I('post.pid');
	            $name = I('post.name');
	            $data = [
	                'pid' => $pid,
	                'cat_name' => $name
	            ];
	            $category = M('course_category');
	            if ($category->add($data)) {
	                echo '成功';
	                exit;
	            }
	        } else {
	            echo "请求错误";
	        }
	    }

}