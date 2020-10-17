package com.hotel.biz.VO;

public class MemberVO {
	
	private int m_num;            
	private String ID;        
	private String PW;                    
	private String name;                  
	private String phone;                 
	private String address;               
	private String email;
	
	public MemberVO() {
	}
	
	public MemberVO(int m_num, String iD, String pW, String name, String phone, String address, String email) {
		this.m_num = m_num;
		ID = iD;
		PW = pW;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.email = email;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPW() {
		return PW;
	}
	public void setPW(String pW) {
		PW = pW;
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
