<?php 
namespace Admin\Controller;

use Common\Controller\BaseController;

class NewsController extends BaseController
{
	/**
	 *资讯列表页
	 */
	public function page()
	{
		//设置分页大小
		$size = 1;
		$model = M('news');
		$User = M('users');
		$news = $model->page($_GET['p'], $size)->select();

		//关联用户表获取用户名
		foreach ($news  as $k => $v) {
			$name = $User->field('username')->find($v['uid']);
			$news[$k]['username'] = $name['username'];
		}

		//分页
		$count = $model->count();
		$Page = new \Think\Page($count,$size);
		$show = $Page->show();

		$this->assign('page', $show);
		$this->assign('news', $news);
		$this->display('list');
	}

	/**
	 *资讯展示页面
	 */
	public function show()
	{
		$id = I('get.id');
		if (empty($id)) {
			$this->error('请传入正确的数据');
		}
		$model = M('news');
		$data = $model->find($id);
		$uid = $data['uid'];
		$User = M('users');
		$username = $User->field('username')->find($uid);
		$info = array_merge($username,$data);
		$this->assign('info', $info);
		$this->display('show');
	}

	/**
	 *新增页面展示页
	 */
	public function add()
	{
		$this->display('add');
	}

	/**
	 *编辑展示页
	 */
	public function edit()
	{
		$id = I('get.id');
		$new = M('news');
		$news_detail = $new->find($id);
		$this->assign('detail', $news_detail);
		$this->display('add');
	}

	/**
	 *单个删除
	 */
	public function delone()
	{
		if (IS_GET) {
			$id = I('get.id');
			if (empty($id)) {
				$this->error('数据不存在');
			}
			$new = M('news');
			$res = $new->delete($id);

			if (!$res) {
				$this->error('数据异常');
			}
			$this->success('删除成功');
		}
	}

	/**
	 *删除操作
	 */
	public function del($id) 
	{
		$new = M('news');
		$res = $new->delete($id);
		if ($res) {
			$this->redirect('News/page');
		}
	}

	/**
	 *批量删除
	 */
	public function multidel()
	{
		if (IS_POST) {
			foreach (I('post.checkbox') as $k => $v) {
				$this->del($v);	
			}
			$this->redirect('Ｎews/page');
		}
	}

	/**
	 *数据增加或修改
	 */
	public function update()
	{
		if (IS_POST) {
			$title = I('post.title');
			$content = I('post.content');
			$id = I('post.id');

			if (empty($title)) {
				$this->error('标题不能为空');
			} 

			if (empty($content)) {
				$this->error('内容不为空');
			}
			$time = time();
			$uid = $_SESSION['user']['id'];
			$data = [
				'title' => $title,
				'content' => $content,
				'create_time' =>$time,
				'uid' => $uid
			];
			
			$news = M('news');
			if (!empty($id)) {
				$news->where(['id'=>$id])->save($data);

			} else{
				$news->add($data);
			}
			$this->success('成功');
		}
	}


}