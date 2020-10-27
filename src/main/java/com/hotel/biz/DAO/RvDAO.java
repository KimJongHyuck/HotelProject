package com.hotel.biz.DAO;

import java.util.List;

import com.hotel.biz.VO.rv_info;
import com.hotel.biz.VO.room_infoVO;

public interface RvDAO {
	
	//방 조회
	public List<room_infoVO> getlistRm() throws Exception;
	
	//예약 목록 조회
	public List<rv_info> getlistRv() throws Exception;
			
	//예약 추가
	public void writeRv(rv_info rv) throws Exception;
			
	//예약 상세내용 불러오기
	public List<rv_info> readRv(int rvno) throws Exception;

	//예약 수정
	public void updateRv(rv_info rv) throws Exception;
		    
	//예약 삭제
	public void deleteRv(int rvno) throws Exception;
	
	//방 체크 온
	public void checkonRoom(int rno) throws Exception;
		
	//방 체크 오프
	public void checkoffRoom(int rno) throws Exception;
}
