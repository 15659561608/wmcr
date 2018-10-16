package com.etc.dao;
/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月16日 下午2:43:57
* 
*/

import java.util.List;

import com.etc.entity.BusiNameL;

public interface BusiNameLDao {
     List< BusiNameL>  queryBusiName(String account);
}
