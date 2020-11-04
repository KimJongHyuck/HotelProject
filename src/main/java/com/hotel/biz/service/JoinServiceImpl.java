package com.hotel.biz.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hotel.biz.DAO.JoinDAO;
import com.hotel.biz.VO.MemberVO;

@Service
public class JoinServiceImpl implements JoinService {

	@Inject
	JoinDAO joinDAO;

	@Override
	public void joinhotel(MemberVO vo) throws Exception {

		joinDAO.joinhotel(vo);

	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {

		return joinDAO.login(vo);

	}

	@Override
	public Map<String, Object> member_update(Map<String, Object> member) throws Exception {
		return joinDAO.member_update(member);
	}

	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		joinDAO.memberDelete(vo);
	}

	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = joinDAO.passChk(vo);
		return result;
	}
	// 아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = joinDAO.idChk(vo);
		return result;
	}

}
