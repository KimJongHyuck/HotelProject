package com.hotel.biz.service;

import java.util.List;

import com.hotel.biz.VO.MemberVO;

public interface JoinService {
	
	void joinhotel(MemberVO vo) throws Exception;

	String idCheck(String id) throws Exception;

	 
}
