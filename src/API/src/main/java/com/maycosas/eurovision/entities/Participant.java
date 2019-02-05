package com.maycosas.eurovision.entities;

public class Participant {
	
	private Country country;
	private String name;
	private String song;
	
	public Country getCountry() {
		return country;
	}
	
	public void setCountry(Country country) {
		this.country = country;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getSong() {
		return song;
	}
	
	public void setSong(String song) {
		this.song = song;
	} 
	
}
