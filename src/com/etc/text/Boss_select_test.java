package com.etc.text;

import java.util.List;

import com.etc.entity.Boss;
import com.etc.service.impl.BossServiceImpl_czd;
import com.etc.services.BossService_czd;

public class Boss_select_test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BossService_czd bsc = new BossServiceImpl_czd();
		/*Boss b = new Boss();
		b.setAccount("15655555555");
		b.setPwd("132456");
		boolean flag =bsc.registerBoss(b);
		System.out.println(flag);*/
		String acc = "1111111111111111";
		List<Boss> list = bsc.isExis(acc);
		System.out.println(list);
		
	}

}
