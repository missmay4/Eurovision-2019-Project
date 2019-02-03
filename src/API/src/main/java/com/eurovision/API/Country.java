package com.eurovision.API;

import java.util.ArrayList;

public class Country {
	
	private final ArrayList<String> countries;

	public Country(ArrayList<String> countries) {
		
		this.countries = countries;
	}

	public ArrayList<String> getCountries() {
		return countries;
	}

}
