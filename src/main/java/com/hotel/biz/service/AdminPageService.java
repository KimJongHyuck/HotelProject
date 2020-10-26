package com.hotel.biz.service;

import java.util.List;
import java.util.Map;



import com.hotel.biz.VO.AdminVO;
import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;
import com.hotel.biz.common.Search;



public interface AdminPageService {
	// 게시물 목록 조회
	public List<AdminVO> getMemberList() throws Exception;
	
	//총 게시글 개수 확인
//	public int getMemberListCnt(Search search) throws Exception;

	public AdminVO adminRead(int m_num) throws Exception;

	public List<Rv_infoVO> getRv_infoList(int rv_num) throws Exception;

	public List<Room_infoVO> getRoom_infoList(int r_num) throws Exception;
	
	public Map<String, Object> getRoom_update(Map<String, Object> param) throws Exception;

}
