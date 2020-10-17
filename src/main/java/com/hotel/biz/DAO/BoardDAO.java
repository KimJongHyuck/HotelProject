package com.hotel.biz.DAO;

import java.util.List;

import com.hotel.biz.VO.BoardVO;
import com.hotel.biz.common.Search;

public interface BoardDAO {
	
	//게시글 목록 보기
	public List<BoardVO> getBoardList(Search search) throws Exception;
	
	//총 게시글 개수 확인
	public int getBoardListCnt(Search search) throws Exception;
	
	//게시판 조회수
	public void boardHit(int bno) throws Exception;

	//게시글 작성
	public void writerBoard(BoardVO vo) throws Exception;
	
	// 게시물 상세내용 불러오기
    public BoardVO boardRead(int bno) throws Exception;
    
    // 게시물 수정
    public void boardUpdate(BoardVO vo) throws Exception;
    
    // 게시물 삭제
    public void boardDelete(int bno) throws Exception;
}
