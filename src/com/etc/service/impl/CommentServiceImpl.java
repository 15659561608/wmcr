package com.etc.service.impl;

import com.etc.dao.CommentDao;
import com.etc.dao.impl.CommentDaoImpl;
import com.etc.entity.Comment;
import com.etc.services.CommentService;
import com.etc.util.PageData;

public class CommentServiceImpl implements CommentService {
	CommentDao cd=new CommentDaoImpl();
	@Override
	public PageData<Comment> queryComment(int page, int pageSize, int busId) {
		// TODO Auto-generated method stub
		return cd.queryComment(page,pageSize, busId);
	}
	@Override
	public boolean queryorder(int userId, int busId) {
		// TODO Auto-generated method stub
		return cd.queryorder(userId, busId);
	}
	@Override
	public boolean addComment(String content, String comDate, int praise, int userId, int busId) {
		// TODO Auto-generated method stub
		return cd.addComment(content, comDate, praise, userId, busId);
	}

}
