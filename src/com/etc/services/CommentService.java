package com.etc.services;

import com.etc.entity.Comment;
import com.etc.util.PageData;

public interface CommentService {

	PageData<Comment> queryComment(int page, int pageSize,int busId);

}
