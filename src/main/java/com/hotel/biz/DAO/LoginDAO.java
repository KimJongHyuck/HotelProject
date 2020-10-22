package com.hotel.biz.DAO;


import com.hotel.biz.VO.MemberVO;

public interface LoginDAO {
	
	public MemberVO login(String ID, String PW) throws Exception;
	
	

	
}
