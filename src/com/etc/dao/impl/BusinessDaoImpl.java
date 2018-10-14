package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.BusinessDao;
import com.etc.entity.Businesses;
import com.etc.entity.BusinessesCity;
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
		String sql="INSERT INTO businesses (busiName, phone, address, licence, lat, lon, typeId, bossId, cityId) VALUES ( ?,?,?,?,?,?,?,?,?)";
		return BaseDao.execute(sql,b.getBusiName(),b.getPhone(),b.getAddress(),b.getLicence(),b.getLat(),b.getLon(),b.getId(),b.getBossId(),b.getCityId())>0;
	}

	@Override
	public boolean updateBusinesses(Businesses b) {
		// TODO Auto-generated method stub
		String sql="update businesses set busiName=?,phone=?,address=?,avgCost=?,licence=?,lat=?,lon=?,starPrice=?,disFee=?,onlinePay=?,isReserve=?,isBusiness=?,des=?,"
				+ "typeId=?,cityId=?,state=? where id=?";
		return BaseDao.execute(sql,b.getBusiName(),b.getAddress(),b.getAvgCost(),b.getLicence(),b.getLat(),b.getLon(),b.getStarPrice(),b.getDisFee(),b.getOnlinePay(),b.getIsReserve(),b.getIsBusiness(),b.getDes(),b.getId(),
				b.getCityId(),b.getState(),b.getId())>0;
	}

	@Override
	public List<BusinessesCity> getBusinesses(int bossId) {
		// TODO Auto-generated method stub
		String sql="select * from businesses,city where businesses.cityId=city.id and bossId=? and state<>2";
		return (List<BusinessesCity>)BaseDao.select(sql, BusinessesCity.class,bossId);
	}

	@Override
	public boolean updateBusiForString(String op,int value,int id) {
		// TODO Auto-generated method stub
		String sql="";
		if(op.equals("isReserve")) {
			sql="update businesses set isReserve=? where id=?";
		}else if(op.equals("isBusiness")) {
			sql="update businesses set isBusiness=? where id=?";
		}else if(op.equals("onlinePay")) {
			sql="update businesses set onlinePay=? where id=?";
		}else {
			return false;
		}
		return BaseDao.execute(sql, value,id)>0;
	}

}
