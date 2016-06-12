package com.dao;

import java.util.List;

import com.domain.Guitar;
import com.domain.GuitarSpec;

public interface IGuitarDao {
	public int addGuitar(String serialNumber, double price,
            GuitarSpec spec);
	
	public List<Guitar> searchGuitar(String serialNumber);
	
	public int delGuitar(String serialNumber);
	
}
