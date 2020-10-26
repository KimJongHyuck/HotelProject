package com.hotel.biz.DAO;

import java.util.List;
import java.util.Map;



import com.hotel.biz.VO.AdminVO;
import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;
import com.hotel.biz.common.Search;


public interface AdminPageDAO {

	// 게시글 목록 보기
	public List<AdminVO> getMemberList() throws Exception;
//	public int getMemberListCnt(Search search) throws Exception;
	
	
	public AdminVO adminRead(int m_num) throws Exception;
	public List<Rv_infoVO> getRv_infoList(int rv_num) throws Exception;
	public List<Room_infoVO> getRoom_infoList(int r_num) throws Exception;
	public Map<String, Object> getRoom_update(Map<String, Object> room) throws Exception;
	

}
