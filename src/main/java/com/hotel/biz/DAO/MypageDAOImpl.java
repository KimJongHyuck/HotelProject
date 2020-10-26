package com.hotel.biz.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hotel.biz.VO.MemberVO;

@Repository
public class MypageDAOImpl implements MypageDAO {
	
	@Inject
	SqlSession sqlSession;
	private static String namespace = "com.hotel.biz.mapper.JoinMapper";
	
	@Override
	public List<MemberVO> mypage(MemberVO vo) {
		
		return sqlSession.selectList(namespace+".mypage",vo);
	}


}
