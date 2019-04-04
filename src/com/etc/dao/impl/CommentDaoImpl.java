package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.CommentDao;
import com.etc.entity.Comment;
import com.etc.entity.Orders;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

public class CommentDaoImpl implements CommentDao {

	@Override
	public PageData<Comment> queryComment(int page, int pageSize, int busId) {
		// TODO Auto-generated method stub
		String sql = "select t1.id id,t1.content content,t1.comDate comDate,t1.praise praise,t1.userId userId,t1.busId busId,t2.custName custName from comment t1,customers t2 where t1.userId=t2.userId and t1.busId=? order by t1.id desc";
		PageData<Comment> comment = (PageData<Comment>) BaseDao.getPage(sql, page, pageSize, Comment.class, busId);
		return comment;
	}

	/**
	 * 查询用户是否在这家店定过单
	 */
	@Override
	public boolean queryorder(int userId, int busId) {
		// TODO Auto-generated method stub
		String sql = "select * from orders where userId=? and busId=?";
		List<Orders> list = (List<Orders>) BaseDao.select(sql, Orders.class, userId, busId);
		if (list.size() > 0) {
			return true;
		} else {

			return false;
		}

	}

	@Override
	public boolean addComment(String content, String comDate, int praise, int userId, int busId) {
		// TODO Auto-generated method stub
		String sql="insert into comment(content,comDate,praise,userId,busId) values (?,?,?,?,?)";
		 
		return BaseDao.execute(sql, content,comDate,praise,userId,busId)>0;
	}

}
