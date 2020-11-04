package com.hotel.biz.DAO;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hotel.biz.VO.MemberVO;

@Repository
public class JoinDAOImpl implements JoinDAO {

	@Inject
	SqlSession sqlSession;
	private static String namespace = "com.hotel.biz.mapper.JoinMapper";

	@Override
	public void joinhotel(MemberVO vo) throws Exception {
		sqlSession.insert(namespace + ".HotelJoin", vo);

	}


	@Override
	public MemberVO login(MemberVO vo) throws Exception {

		return sqlSession.selectOne(namespace + ".login", vo);

	}
	
	@Override
	public Map<String, Object> member_update(Map<String, Object> member) throws Exception {
		
		return sqlSession.selectOne(namespace + ".userUpdate", member);
	}
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		
		sqlSession.selectOne(namespace + ".userDelete", vo);
	}

	
	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = sqlSession.selectOne(namespace + ".passChk", vo);
		return result;
	}
	
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = sqlSession.selectOne(namespace +".idChk", vo);
		return result;
	}
}
