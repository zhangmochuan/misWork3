package com.dao;

public class GuitarDaoMySqlFactory implements IGuitarDaoFactory {
	@Override
	public IGuitarDao createIGDao() {
		return new GuitarMySqlDao();
	}

}
