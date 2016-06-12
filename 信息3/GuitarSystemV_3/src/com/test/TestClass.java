package com.test;

import java.util.List;

import com.domain.Guitar;
import com.domain.GuitarSpec;
import com.domain.Inventory;

public class TestClass {
	public static void main(String[] args) {
		GuitarSpec guitarSpec = new GuitarSpec("builder","model","type","backWood","topkWood");
		Inventory inventory = new Inventory();
		System.out.println("Ìí¼Ó");
		inventory.addGuitar("01", 100.00, guitarSpec);
		List<Guitar> list = inventory.searchGuitar("no");
		for (Guitar guitar : list) {
			System.out.println(guitar.getSerialNumber()+"-->"+guitar.getPrice());
		}
		inventory.delGuitar("01");
		System.out.println("É¾³ý");
		List<Guitar> list2 = inventory.searchGuitar("no");
		for (Guitar guitar : list2) {
			System.out.println(guitar.getSerialNumber()+"-->"+guitar.getPrice());
		}
	}
}
