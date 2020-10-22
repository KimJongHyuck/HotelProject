package com.hotel.biz.DAO;


import com.hotel.biz.VO.MemberVO;

public interface JoinDAO {
	
	//회원 가입
	void joinhotel(MemberVO vo) throws Exception;

	
	//중복체크
	public String idCheck(String ID) throws Exception;
	
	
	//개인정보 수정
	public void updateuser(MemberVO vo) throws Exception;
	
	
	//회원탈퇴
	public void deleteuser(MemberVO vo)throws Exception;

}
