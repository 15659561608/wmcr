package com.etc.dao;


import com.etc.entity.Comment_czd;
import com.etc.util.PageData;


public interface CommentDao_czd {
//2018年10月13日13:54:38 CZD    查询评论
	PageData<Comment_czd>queryCommentByPage(int page,int pageSize,String keywords);
	boolean deleteCommentById(int comId);
	
}
