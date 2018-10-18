package com.etc.dao.impl;

import com.etc.dao.CommentDao;
import com.etc.entity.Comment;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

public class CommentDaoImpl implements CommentDao {

	@Override
	public PageData<Comment> queryComment(int page, int pageSize, int busId) {
		// TODO Auto-generated method stub
		String sql="select * from comment where busId=?";
		PageData<Comment> comment=(PageData<Comment>) BaseDao.getPage(sql, page, pageSize, Comment.class, busId);
		return comment;
	}

}
