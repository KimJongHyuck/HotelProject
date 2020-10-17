package com.hotel.biz.DAO;

import com.hotel.biz.VO.MemberVO;

public interface LoginDAO {
	
	public MemberVO login(MemberVO vo) throws Exception;

	
}
