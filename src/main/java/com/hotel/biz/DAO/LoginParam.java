package com.hotel.biz.DAO;

import com.hotel.biz.VO.MemberVO;

public class LoginParam {

	String ID = "";
	String PW = "";
	
	public LoginParam(String ID, String PW) {
		this.ID = ID;
		this.PW = PW;
	}

	public LoginParam(MemberVO vo) {
	}

	public String getID() {
		return ID;
	}

	public String getPW() {
		return PW;
	}

	
	
	

}
