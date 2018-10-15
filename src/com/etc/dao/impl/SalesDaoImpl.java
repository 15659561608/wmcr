package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.SalesDao;
import com.etc.entity.Sales;
import com.etc.entity.SalesBusi;
import com.etc.util.BaseDao;

public class SalesDaoImpl implements SalesDao {

	@Override
	public List<SalesBusi> getSalesByBossId(int bossId) {
		// TODO Auto-generated method stub
		String sql="select * from sales s,businesses b where s.busId=b.id and b.bossId=? and s.state=0";
		return (List<SalesBusi>)BaseDao.select(sql, SalesBusi.class, bossId);
	}

	@Override
	public List<SalesBusi> getHisSalesByBossId(int bossId) {
		// TODO Auto-generated method stub
		String sql="select * from sales s,businesses b where s.busId=b.id and b.bossId=? and s.state=1";
		return (List<SalesBusi>)BaseDao.select(sql, SalesBusi.class, bossId);
	}

	@Override
	public boolean addSales(Sales s) {
		// TODO Auto-generated method stub
		String sql="insert into sales values(null,?,?,?,?,?)";
		return BaseDao.execute(sql, s.getTitle(),s.getDiscount(),0,s.getBusId(),s.getContent())>0;
	}

	@Override
	public boolean delSales(int id) {
		// TODO Auto-generated method stub
		String sql="update sales set state=1 where salId=?";
		return BaseDao.execute(sql, id)>0;
	}

	@Override
	public boolean updateSales(Sales s,int id) {
		// TODO Auto-generated method stub
		String sql="update sales set title=?,discount=?,content=? where salId=?";
		return BaseDao.execute(sql, s.getTitle(),s.getDiscount(),s.getContent(),id)>0;
	}

	@Override
	public List<SalesBusi> getSalesByBusId(int busId) {
		// TODO Auto-generated method stub
		String sql="select * from sales s,businesses b where s.busId=b.id and s.busId=? and s.state=0";
		return (List<SalesBusi>)BaseDao.select(sql, SalesBusi.class, busId);
	}

	@Override
	public List<SalesBusi> getHisSalesByBusId(int busId) {
		// TODO Auto-generated method stub
		String sql="select * from sales s,businesses b where s.busId=b.id and s.busId=? and s.state=1";
		return (List<SalesBusi>)BaseDao.select(sql, SalesBusi.class, busId);
	}

	@Override
	public List<SalesBusi> getSalesBySalId(int salId) {
		// TODO Auto-generated method stub
		String sql="select * from sales s,businesses b where s.busId=b.id and s.salId=?";
		return (List<SalesBusi>)BaseDao.select(sql, SalesBusi.class, salId);
	}

}
