package com.hotel.biz.service;

import java.util.List;
import java.util.Map;



import com.hotel.biz.VO.AdminVO;
import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;
import com.hotel.biz.common.Criteria;
import com.hotel.biz.common.Search;
import com.hotel.biz.common.SearchCriteria;

public interface AdminPageService {
	
	// 멤버 리스트 
	public List<AdminVO> getMemberList(SearchCriteria criteria) throws Exception;
	//총 게시글 개수 확인
	int totalCnt(Criteria criteria);
	// 예약 정보 리스트
	public List<Rv_infoVO> getRv_infoList(int rv_num) throws Exception;
	// 룸 정보 리스트
	public List<Room_infoVO> getRoom_infoList(int r_num) throws Exception;
	// 룸 업데이트
	public Map<String, Object> getRoom_update(Map<String, Object> param) throws Exception;
	// 룸 삭제
	//public void roomDelete(int r_num) throws Exception;	

}
