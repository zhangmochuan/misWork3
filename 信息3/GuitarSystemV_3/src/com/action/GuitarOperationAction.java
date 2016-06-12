package com.action;

import java.util.List;

import com.domain.Guitar;
import com.domain.Inventory;
import com.opensymphony.xwork2.Action;

public class GuitarOperationAction {
	
	Inventory inventory = new Inventory();
	private Guitar guitar;
	private List<Guitar> guitars;
	

	public String addGuitar() {
		int i = inventory.addGuitar(guitar.getSerialNumber(), guitar.getPrice(), guitar.getSpec());
		return i > 0 ? Action.SUCCESS : Action.ERROR;
	}
	
	
	
	public String searchGuitar() {
		guitars = inventory.searchGuitar("unused");
		return guitars.size() > 0 ? Action.SUCCESS : Action.ERROR;
	}
	
	
	
	public String delGuitar() {
		int i = inventory.delGuitar(guitar.getSerialNumber());
		return i > 0 ? Action.SUCCESS : Action.ERROR;
	}

	
	
	public Inventory getInventory() {
		return inventory;
	}
	
	
	public void setInventory(Inventory inventory) {
		this.inventory = inventory;
	}
	
	
	public Guitar getGuitar() {
		return guitar;
	}
	
	
	public void setGuitar(Guitar guitar) {
		this.guitar = guitar;
	}

	
	
	public List<Guitar> getGuitars() {
		return guitars;
	}
	
	
	public void setGuitars(List<Guitar> guitars) {
		this.guitars = guitars;
	}
}
