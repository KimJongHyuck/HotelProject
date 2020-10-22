package com.hotel.biz.DAO;



import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hotel.biz.VO.MemberVO;

@Repository
public class JoinDAOImpl implements JoinDAO {
	
	private SqlSession sqlSession;
	private static String namespace = "com.hotel.biz.mapper.JoinMapper";
	
	@Inject
	public JoinDAOImpl(SqlSession sqlSession) {
		
		this.sqlSession = sqlSession;
		
	}
	
	
	@Override
	public void joinhotel(MemberVO vo) throws Exception {
		sqlSession.insert(namespace+ ".HotelJoin",vo);
		
	}
	
	@Override
	public String idCheck(String ID) throws Exception{
		
		return sqlSession.selectOne(namespace+ ".idCheck",ID);
		
	}
	
	@Override 
	  public void updateuser(MemberVO vo) throws Exception {
		  
		  sqlSession.update(namespace+ ".updateuser",vo); 
	  
	  
	  }


	@Override
	public void deleteuser(MemberVO vo) throws Exception {
		
		sqlSession.delete(namespace+ ".deleteuser",vo);
		
	}
	




}
