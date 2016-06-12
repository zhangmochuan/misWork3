package com.dao;

public class GuitarDaoSqliteFactory implements IGuitarDaoFactory {
	@Override
	public IGuitarDao createIGDao() {
		return new GuitarSqliteDao();
	}

}
