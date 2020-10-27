package com.hotel.biz.DAO;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hotel.biz.VO.AdminVO;
import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;
import com.hotel.biz.common.Criteria;
import com.hotel.biz.common.Search;
import com.hotel.biz.common.SearchCriteria;

@Repository
public class AdminPageDAOImpl implements AdminPageDAO {

	@Inject
	SqlSession sqlSession;

	private static String namespace = "com.hotel.biz.mapper.AdminPageMapper";

	// 목록 불러오기
	@Override
	public List<AdminVO> getMemberList(SearchCriteria criteria) throws Exception {
		
		return sqlSession.selectList(namespace + ".AdminList", criteria); // BoardMaper의 id 값
	}
	// 멤버 총 수 구하기
	@Override
	public int totalCnt(Criteria criteria) {
		return sqlSession.selectOne(namespace + ".totalCnt", criteria);
	}
	// 예약정보
	@Override
	public List<Rv_infoVO> getRv_infoList(int rv_num) throws Exception {

		return sqlSession.selectList(namespace + ".checklist", rv_num); // BoardMaper의 id 값
	}
	// 룸 정보
	@Override
	public List<Room_infoVO> getRoom_infoList(int r_num) throws Exception {

		return sqlSession.selectList(namespace + ".roomlist", r_num); // BoardMaper의 id 값
	}
	// 룸 업데이트
	@Override
	public Map<String, Object> getRoom_update(Map<String, Object> room) throws Exception {

		return sqlSession.selectOne(namespace + ".roomUpdate", room); // BoardMaper의 id 값
	}

}
