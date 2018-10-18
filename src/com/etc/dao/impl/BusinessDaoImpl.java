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
		String sql="select * from businesses";
		return (List<Businesses>)BaseDao.select(sql, Businesses.class);
	}
	@Override
	public List<BusinessesCity> getAllBusinesses() {
		// TODO Auto-generated method stub
		String sql="select b.id,b.busiName,b.phone,b.address,b.avgCost,b.licence,b.salNum,b.lat,b.lon,b.starPrice,b.disFee,b.onlinePay,b.isReserve,b.isBusiness,b.des,b.typeId,b.bossId,b.cityId,b.praise,b.nag,b.state,b.logo,b.regDate,c.cityName,t.title from businesses"
				+ " b,city c,type t where b.cityId=c.id and b.typeId=t.id";
		return (List<BusinessesCity>)BaseDao.select(sql, BusinessesCity.class);
	}
	@Override
	public boolean addBusinesses(Businesses b) {
		// TODO Auto-generated method stub
		String sql="INSERT INTO businesses (busiName, phone, address,avgCost, licence, lat, lon, starPrice,disFee,onlinePay,isReserve,logo,isBusiness,typeId,cityId,state,regDate,des, bossId) VALUES ( ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		return BaseDao.execute(sql,b.getBusiName(),b.getPhone(),b.getAddress(),b.getAvgCost(),b.getLicence(),b.getLat(),b.getLon(),b.getStarPrice(),b.getDisFee(),b.getOnlinePay(),b.getIsReserve(),b.getLogo(),b.getIsBusiness(),b.getTypeId(),b.getCityId(),b.getState(),b.getRegDate(),b.getDes(),b.getBossId())>0;
	}

	@Override
	public boolean updateBusinesses(Businesses b) {
		// TODO Auto-generated method stub
		String sql="update businesses set busiName=?,phone=?,address=?,avgCost=?,licence=?,lat=?,lon=?,logo=?,starPrice=?,disFee=?,onlinePay=?,isReserve=?,isBusiness=?,"
				+ "typeId=?,cityId=?,state=?,regDate=?,des=? where id=?";
		return BaseDao.execute(sql,b.getBusiName(),b.getPhone(),b.getAddress(),b.getAvgCost(),b.getLicence(),b.getLat(),b.getLon(),b.getLogo(),b.getStarPrice(),b.getDisFee(),b.getOnlinePay(),b.getIsReserve(),b.getIsBusiness(),b.getTypeId(),
				b.getCityId(),b.getState(),b.getRegDate(),b.getDes(),b.getId())>0;
	}

	@Override
	public List<BusinessesCity> getBusinesses(int bossId) {
		// TODO Auto-generated method stub
		String sql="select b.id,b.busiName,b.phone,b.address,b.avgCost,b.licence,b.salNum,b.lat,b.lon,b.starPrice,b.disFee,b.onlinePay,b.isReserve,b.isBusiness,b.des,b.typeId,b.bossId,b.cityId,b.praise,b.nag,b.state,b.logo,b.regDate,c.cityName,t.title from businesses"
				+ " b,city c,type t where b.cityId=c.id and b.typeId=t.id and b.bossId=?";
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

	@Override
	public List<BusinessesCity> getBusinessesById(int id) {
		// TODO Auto-generated method stub
		String sql="select b.id,b.busiName,b.phone,b.address,b.avgCost,b.licence,b.salNum,b.lat,b.lon,b.starPrice,b.disFee,b.onlinePay,b.isReserve,b.isBusiness,b.des,b.typeId,b.bossId,b.cityId,b.praise,b.nag,b.state,b.logo,b.regDate,c.cityName,t.title from businesses b,city c,type t"
				+ " where b.cityId=c.id and b.typeId=t.id and b.id=?";
		
		return (List<BusinessesCity>)BaseDao.select(sql, BusinessesCity.class,id);
	}
	@Override
	public List<BusinessesCity> getPassBusinesses() {
		// TODO Auto-generated method stub
		String sql="select b.id,b.busiName,b.phone,b.address,b.avgCost,b.licence,b.salNum,b.lat,b.lon,b.starPrice,b.disFee,b.onlinePay,b.isReserve,b.isBusiness,b.des,b.typeId,b.bossId,b.cityId,b.praise,b.nag,b.state,b.logo,b.regDate,c.cityName,t.title from businesses"
				+ " b,city c,type t where b.cityId=c.id and b.typeId=t.id and b.state=1";
		return (List<BusinessesCity>)BaseDao.select(sql, BusinessesCity.class);
	}
	@Override
	public List<BusinessesCity> getOnBusinesses() {
		// TODO Auto-generated method stub
		String sql="select b.id,b.busiName,b.phone,b.address,b.avgCost,b.licence,b.salNum,b.lat,b.lon,b.starPrice,b.disFee,b.onlinePay,b.isReserve,b.isBusiness,b.des,b.typeId,b.bossId,b.cityId,b.praise,b.nag,b.state,b.logo,b.regDate,c.cityName,t.title from businesses"
				+ " b,city c,type t where b.cityId=c.id and b.typeId=t.id and b.state=1 and b.isBusiness=1";
		return (List<BusinessesCity>)BaseDao.select(sql, BusinessesCity.class);
	}
	@Override
	public List<BusinessesCity> getPassBusinessesByType(int id) {
		// TODO Auto-generated method stub
		String sql="select b.id,b.busiName,b.phone,b.address,b.avgCost,b.licence,b.salNum,b.lat,b.lon,b.starPrice,b.disFee,b.onlinePay,b.isReserve,b.isBusiness,b.des,b.typeId,b.bossId,b.cityId,b.praise,b.nag,b.state,b.logo,b.regDate,c.cityName,t.title from businesses"
				+ " b,city c,type t where b.cityId=c.id and b.typeId=t.id and b.state=1 and t.id=?";
		return (List<BusinessesCity>)BaseDao.select(sql, BusinessesCity.class,id);
	}
 
	@Override
	public List<Businesses> getBusName(int id) {
		// TODO Auto-generated method stub
		return (List<Businesses>) BaseDao.select("SELECT * from businesses where businesses.bossId = ?",Businesses.class,id);
	}
}
