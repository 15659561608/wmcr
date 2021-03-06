package com.etc.dao;

import com.etc.entity.Comment;
import com.etc.util.PageData;

public interface CommentDao {

	PageData<Comment> queryComment(int page, int pageSize, int busId);

	boolean queryorder(int userId,int busId);
	
	boolean addComment(String content,String comDate,int praise,int userId,int busId);
}
