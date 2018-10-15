package com.etc.services;

import com.etc.entity.Comment_czd;

import com.etc.util.PageData;

public interface CommentService_czd {
	/**
	 *  分页模糊查询
	 * @param page
	 * @param pageSize
	 * @param keywords
	 * @return
	 */
	PageData<Comment_czd> getCommentByPage(int page,int pageSize,String keywords);
	/**
	 * 删除评论      通过ID
	 * @param comId   评论编号
	 * @return
	 */
	public boolean deleteCommentById( int comId);
}
