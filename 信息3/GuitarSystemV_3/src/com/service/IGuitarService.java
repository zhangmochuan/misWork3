package com.service;

import java.util.List;

import com.domain.Guitar;
import com.domain.GuitarSpec;

public interface IGuitarService {
	public int addGuitar(String serialNumber, double price,
	          GuitarSpec spec) ;
	public List<Guitar> searchGuitar(String serialNumber);
	public int delGuitar(String serialNumber) ;
}
