package com.service;

import java.io.IOException;
import java.util.List;
import java.util.Properties;

import com.dao.GuitarDaoMySqlFactory;
import com.dao.GuitarDaoSqliteFactory;
import com.dao.IGuitarDao;
import com.dao.IGuitarDaoFactory;
import com.domain.Guitar;
import com.domain.GuitarSpec;

public class GuitarServiceDB implements IGuitarService {
	private static Properties pros = new Properties();
	private static IGuitarDaoFactory sql;
	static {
		try {
			pros.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("db.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	private static IGuitarDao choiceDB() {
		String DB = pros.getProperty("usingDB");
		if (DB.equals("sqlite")) {
			sql = new GuitarDaoSqliteFactory();
			IGuitarDao guitarDao = sql.createIGDao();
			return guitarDao;
		} else if (DB.equals("mysql")) {
			sql = new GuitarDaoMySqlFactory();
			IGuitarDao guitarDao = sql.createIGDao();
			return guitarDao;
		} else {
			return null;
		}
	}

	IGuitarDao guitarDao = choiceDB();
	

	@Override
	public int addGuitar(String serialNumber, double price, GuitarSpec spec) {
		int i = guitarDao.addGuitar(serialNumber, price, spec);
		return i;
	}

	@Override
	public List<Guitar> searchGuitar(String serialNumber) {
		List<Guitar> list = guitarDao.searchGuitar(serialNumber);
		return list;
	}

	@Override
	public int delGuitar(String serialNumber) {
		int i = guitarDao.delGuitar(serialNumber);
		return i;
	}

}
