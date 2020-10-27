package com.hotel.biz.DAO;

import java.util.List;

import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;

public interface RvDAO {
	
	//방 조회
	public List<Room_infoVO> getlistRm() throws Exception;
	
	//예약 목록 조회
	public List<Rv_infoVO> getlistRv() throws Exception;
			
	//예약 추가
	public void writeRv(Rv_infoVO rv) throws Exception;
			
	//예약 상세내용 불러오기
	public List<Rv_infoVO> readRv(int rvno) throws Exception;

	//예약 수정
	public void updateRv(Rv_infoVO rv) throws Exception;
		    
	//예약 삭제
	public void deleteRv(int rvno) throws Exception;
	
	//방 체크 온
	public void checkonRoom(int rno) throws Exception;
		
	//방 체크 오프
	public void checkoffRoom(int rno) throws Exception;
}
