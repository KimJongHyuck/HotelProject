package com.hotel.biz.DAO;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hotel.biz.VO.MemberVO;


@Repository
public class LoginDAOImpl implements LoginDAO {

	private static String namespace = "com.hotel.biz.mapper.JoinMapper";
	private SqlSession sqlSession;
	
	@Inject
	public LoginDAOImpl(SqlSession sqlSession) {
		
		this.sqlSession = sqlSession;
		
	}


	@Override
	public MemberVO login(MemberVO vo) throws Exception {
	
		return sqlSession.selectOne(namespace+".login",vo);
	}
	

}
