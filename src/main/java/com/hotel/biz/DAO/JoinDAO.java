package com.hotel.biz.DAO;

import java.util.List;

import com.hotel.biz.VO.MemberVO;
import com.sun.javafx.collections.MappingChange.Map;

public interface JoinDAO {
	
	//회원 가입
	void joinhotel(MemberVO vo) throws Exception;

	
	//중복체크
	public String idCheck(String id) throws Exception;
	

	


}
