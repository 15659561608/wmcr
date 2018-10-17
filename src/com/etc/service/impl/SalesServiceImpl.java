package com.etc.service.impl;

import java.util.List;

import com.etc.dao.SalesDao;
import com.etc.dao.impl.SalesDaoImpl;
import com.etc.entity.Sales;
import com.etc.entity.SalesBusi;
import com.etc.services.SalesService;

public class SalesServiceImpl implements SalesService {
	private SalesDao sd=new SalesDaoImpl();
	@Override
	public List<SalesBusi> getSalesByBossId(int bossId) {
		// TODO Auto-generated method stub
		return sd.getSalesByBossId(bossId);
	}

	@Override
	public List<SalesBusi> getSalesByBusId(int busId) {
		// TODO Auto-generated method stub
		return sd.getSalesByBusId(busId);
	}

	@Override
	public List<SalesBusi> getHisSalesByBusId(int busId) {
		// TODO Auto-generated method stub
		return sd.getHisSalesByBusId(busId);
	}

	@Override
	public List<SalesBusi> getHisSalesByBossId(int bossId) {
		// TODO Auto-generated method stub
		return sd.getHisSalesByBossId(bossId);
	}

	@Override
	public boolean addSales(Sales s) {
		// TODO Auto-generated method stub
		return sd.addSales(s);
	}

	@Override
	public boolean delSales(int id) {
		// TODO Auto-generated method stub
		return sd.delSales(id);
	}

	@Override
	public boolean updateSales(Sales s, int id) {
		// TODO Auto-generated method stub
		return sd.updateSales(s, id);
	}

	@Override
	public List<SalesBusi> getSalesBySalId(int salId) {
		// TODO Auto-generated method stub
		return sd.getSalesBySalId(salId);
	}

}
