package com.etc.dao.impl;

import com.etc.dao.CommentDao_czd;
import com.etc.dao.CustomersDao_czd;
import com.etc.entity.Comment_czd;
import com.etc.entity.Customers;
import com.etc.util.BaseDao;
import com.etc.util.PageData;


public class CommentDaoImpl_czd implements CommentDao_czd {

	@Override
	public PageData<Comment_czd> queryCommentByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		String sql = "SELECT comment.id,users.account,businesses.busiName,comment.praise,comment.content,comment.comDate FROM comment INNER JOIN users ON comment.userId = users.id INNER JOIN businesses ON comment.busId = businesses.id WHERE CONCAT(users.account,businesses.busiName) LIKE ? order by id ";
				
	PageData<Comment_czd> pd = BaseDao.getPage(sql,page, pageSize, Comment_czd.class,"%"+keywords+"%" );
	return pd ;
	}

	@Override
	public boolean deleteCommentById(int comId) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM comment WHERE id = ?";
		return BaseDao.execute(sql,comId)>0;
	}

	

	
}
