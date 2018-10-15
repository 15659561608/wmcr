package com.etc.service.impl;

import com.etc.dao.CommentDao_czd;
import com.etc.dao.impl.CommentDaoImpl_czd;
import com.etc.entity.Comment_czd;
import com.etc.services.CommentService_czd;
import com.etc.util.PageData;


public class CommentServiceImpl_czd implements CommentService_czd {
	private CommentDao_czd cdc = new CommentDaoImpl_czd();

	@Override
	public PageData<Comment_czd> getCommentByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return cdc.queryCommentByPage(page, pageSize, keywords);
	}

	@Override
	public boolean deleteCommentById(int comId) {
		// TODO Auto-generated method stub
		return cdc.deleteCommentById(comId);
	}



}
