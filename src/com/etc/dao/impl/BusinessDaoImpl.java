package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.BusinessDao;
import com.etc.entity.Businesses;
import com.etc.util.BaseDao;

public class BusinessDaoImpl implements BusinessDao {

	@Override
	public List<Businesses> getBusinesses() {
		// TODO Auto-generated method stub
		String sql="select * from businesses where state<>2";
		return (List<Businesses>)BaseDao.select(sql, Businesses.class);
	}

	@Override
	public boolean addBusinesses(Businesses b) {
		// TODO Auto-generated method stub
		String sql="INSERT INTO businesses (busiName, phone, address, avgCost, licence, lat, lon,  des, typeId, bossId, cityId) VALUES ( ?,?,?,?,?,?,?,?,?,?,?)";
		return BaseDao.execute(sql,b.getBusiname(),b.getPhone(),b.getAddress(),b.getLicence(),b.getLat(),b.getLon(),b.getDes(),b.getTypeid(),b.getBossid(),b.getCityid())>0;
	}

	@Override
	public boolean updateBusinesses(Businesses b) {
		// TODO Auto-generated method stub
		String sql="update businesses set busiName=?,phone=?,address=?,avgCost=?,licence=?,salNum=?,lat=?,lon=?,starPrice=?,disFee=?,onlinePay=?,isReserve=?,isBusiness=?,des=?,"
				+ "typeId=?,bossId=?,cityId=?,praise=?,nag=?,state=? where id=?";
		return BaseDao.execute(sql,b.getBusiname(),b.getAddress(),b.getAvgcost(),b.getLicence(),b.getSalnum(),b.getLat(),b.getLon(),b.getStarprice(),b.getDisfee(),b.getOnlinepay(),b.getIsreserve(),b.getIsbusiness(),b.getDes(),b.getTypeid(),
				b.getBossid(),b.getCityid(),b.getPraise(),b.getNag(),b.getState(),b.getId())>0;
	}

}
