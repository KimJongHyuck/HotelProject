package com.hotel.biz.service;

import java.util.List;

import com.hotel.biz.VO.MemberVO;

public interface LoginService {
	
	public MemberVO login(String ID, String PW) throws Exception;
	
	
	
}
