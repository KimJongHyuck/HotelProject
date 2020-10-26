package com.hotel.biz.service;

import com.hotel.biz.VO.MemberVO;

public interface JoinService {
	
	void joinhotel(MemberVO vo) throws Exception;

	String idCheck(String ID) throws Exception;

	public void updateuser(MemberVO vo) throws Exception;
	
	public void deleteuser(MemberVO vo) throws Exception;
	
	
}
