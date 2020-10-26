package com.hotel.biz.DAO;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import com.hotel.biz.VO.AdminVO;
import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;
import com.hotel.biz.common.Search;


@Repository
public class AdminPageDAOImpl implements AdminPageDAO {

	@Inject
	SqlSession sqlSession;

	private static String namespace = "com.hotel.biz.mapper.AdminPageMapper";

	// 게시글 목록 불러오기
	@Override
	public List<AdminVO> getMemberList() throws Exception {

		return sqlSession.selectList(namespace + ".AdminList"); // BoardMaper의 id 값
	}
//	@Override
//	public int getMemberListCnt(Search search) throws Exception {
//		return sqlSession.selectOne(namespace+".getMemberListCnt",search);
//	}
	// 게시글 보기
	@Override
	public AdminVO adminRead(int m_num) throws Exception {
		return sqlSession.selectOne(namespace + ".AdminRead", m_num);
	}

	@Override
	public List<Rv_infoVO> getRv_infoList(int rv_num) throws Exception {

		return sqlSession.selectList(namespace + ".checklist", rv_num); // BoardMaper의 id 값
	}

	@Override
	public List<Room_infoVO> getRoom_infoList(int r_num) throws Exception {

		return sqlSession.selectList(namespace + ".roomlist", r_num); // BoardMaper의 id 값
	}
	
	@Override
	public Map<String, Object> getRoom_update(Map<String, Object> room) throws Exception {

		return sqlSession.selectOne(namespace + ".roomUpdate", room); // BoardMaper의 id 값
	}
	
	
}
