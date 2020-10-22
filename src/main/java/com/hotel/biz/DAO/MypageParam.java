package com.hotel.biz.DAO;

public class MypageParam {
	
	String ID = "";
	String PW = "";
	String name = "";
	String phone = "";
	String address = "";
	String email = "";
	
	public MypageParam(String ID, String PW, String name, String phone, String address, String email ) {
		
		this.ID = ID;
		this.PW = PW;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.email = email;
		
		
	}

	public String getId() {
		return ID;
	}

	public void setID(String ID) {
		this.ID = ID;
	}

	public String getPW() {
		return PW;
	}

	public void setPw(String PW) {
		this.PW = PW;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	
	
	
	


}
