package com.hotel.biz.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;

import com.hotel.biz.DAO.BoardDAO;
import com.hotel.biz.VO.BoardVO;
import com.hotel.biz.common.Search;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	BoardDAO boardDao;

	@Override
	public List<BoardVO> getboardList(Search search) throws Exception {
		return boardDao.getBoardList(search); 
	}
	
	@Override
	public int getBoardListCnt(Search search) throws Exception {
		return boardDao.getBoardListCnt(search);
	}
	
	//게시글 작성
	@Transactional
	@Override
	public void writerBoard(BoardVO vo) throws Exception {
		// 게시글 입력처리
		boardDao.writerBoard(vo);
    
	}
	
	// 게시물 상세내용 불러오기
    @Override
    public BoardVO boardRead(int bno) throws Exception {
			boardDao.boardHit(bno);
        return boardDao.boardRead(bno);
    }
    
    //게시글 수정 
    @Override
    public void updateBoard(BoardVO vo) throws Exception {
    	boardDao.boardUpdate(vo);	
    }
    // 게시물 삭제
    @Override
    public void deleteBoard(int bno) throws Exception {
        boardDao.boardDelete(bno);
    }
	
}
