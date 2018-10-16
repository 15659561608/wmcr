package com.etc.service.impl;

import java.util.List;

import com.etc.dao.impl.BusiNameLDaoImpl;
import com.etc.entity.BusiNameL;
import com.etc.services.BusiNameLService;

/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月16日 下午2:49:13
* 
*/

public class BusiNameLServiceImpl implements BusiNameLService {
    BusiNameLDaoImpl bndi=new BusiNameLDaoImpl();
	@Override
	public List<BusiNameL> getBusiName(String account) {
		// TODO Auto-generated method stub
		return bndi.queryBusiName(account);
	}

}
