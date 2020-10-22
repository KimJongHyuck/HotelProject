package com.hotel.biz.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hotel.biz.DAO.MypageDAO;
import com.hotel.biz.VO.MemberVO;

@Service
public class MypageServiceImpl implements MypageService {
	
	private final MypageDAO mypageDAO;
	
	@Inject
	public MypageServiceImpl(MypageDAO mypageDAO) {
		
		this.mypageDAO = mypageDAO;
		
	}

	@Override
	public List<MemberVO> mypage(MemberVO vo) throws Exception {
		
		return mypageDAO.mypage(vo);
	}



}
