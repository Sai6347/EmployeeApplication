package com.aita;

public class UserAddress 
{
	private String houseno;
	private String street;
	private String city;
	private String state;
	private String mobile;
	private String sId;
	public UserAddress() {
		// TODO Auto-generated constructor stub
	}
	public UserAddress(String houseno, String street, String city, String state, String mobile,String sId) {
		super();
		this.houseno = houseno;
		this.street = street;
		this.city = city;
		this.state = state;
		this.mobile = mobile;
		this.sId = sId;
	}
	public String getHouseno() {
		return houseno;
	}
	public void setHouseno(String houseno) {
		this.houseno = houseno;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	@Override
	public String toString() {
		return "UserAddress [houseno=" + houseno + ", street=" + street + ", city=" + city + ", state=" + state
				+ ", mobile=" + mobile + ", sId=" + sId + "]";
	}
	
	
}
