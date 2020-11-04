package com.hotel.biz.DAO;


import java.util.List;
import java.util.Map;

import com.hotel.biz.VO.MemberVO;

public interface JoinDAO {
	
	//회원 가입
	void joinhotel(MemberVO vo) throws Exception;
	
	// 로그인
	 public MemberVO login(MemberVO vo) throws Exception;
	// 업데이트
	 public Map<String, Object> member_update(Map<String, Object> member) throws Exception;
	// 삭제
	public void memberDelete(MemberVO vo) throws Exception;
	// 탈퇴 체크
	public int passChk(MemberVO vo) throws Exception;
	// 아이디 중복체크
	public int idChk(MemberVO vo) throws Exception;

	
	

}
