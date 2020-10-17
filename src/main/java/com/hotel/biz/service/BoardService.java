package com.hotel.biz.service;

import java.util.List;

import com.hotel.biz.VO.BoardVO;
import com.hotel.biz.common.Pagination;
import com.hotel.biz.common.Search;

public interface BoardService {
	// 게시물 목록 조회
	public List<BoardVO> getboardList(Search search) throws Exception;
	
	//총 게시글 개수 확인
	public int getBoardListCnt(Search search) throws Exception;
	
	//게시글 작성
	public void writerBoard(BoardVO vo) throws Exception;
	
	 // 게시물 상세내용 불러오기
    public BoardVO boardRead(int bno) throws Exception;

    // 게시물 수정 실행
    public void updateBoard(BoardVO bdto) throws Exception;
    
    // 게시물 삭제
    public void deleteBoard(int bno) throws Exception;
	
}
