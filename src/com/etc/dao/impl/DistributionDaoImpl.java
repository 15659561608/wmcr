package com.etc.dao.impl;

import java.sql.Connection;
import java.util.List;

import com.etc.dao.DistributionDao;
import com.etc.entity.Distribution;
import com.etc.util.BaseDao;

public class DistributionDaoImpl implements DistributionDao {

	@Override
	public Boolean addDis(Distribution d,Connection conn) {
		// TODO Auto-generated method stub
		String sql="INSERT INTO distribution (disTime, remarks, disId, ordId,name,phone,address) VALUES (?,?,?,?,?,?,?)";
		return BaseDao.execute(sql, conn, d.getDisTime(),d.getRemarks(),d.getDisId(),d.getOrdId(),d.getName(),d.getPhone(),d.getAddress())>0;
	}

	@Override
	public Distribution getDisByOrderId(int ordId) {
		// TODO Auto-generated method stub
		String sql="select * from distribution where ordId=?";
		List<Distribution> list=(List<Distribution>)BaseDao.select(sql, Distribution.class, ordId);
		if(list.size()>0) {
			return list.get(0);
		}
		return null;
	}

}
