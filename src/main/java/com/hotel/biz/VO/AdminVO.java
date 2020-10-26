package com.hotel.biz.VO;

import java.util.Date;

public class AdminVO {
	private int m_num;            
	private String id;        
	private String pw;   
	private String name;                  
	private String phone;                 
	private String email;
	private Date regdate;
	private int rv_num;
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getRv_num() {
		return rv_num;
	}
	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}
	@Override
	public String toString() {
		return "AdminVO [m_num=" + m_num + ", id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone
				+ ", email=" + email + ", regdate=" + regdate + ", rv_num=" + rv_num + "]";
	}
	

	
}
