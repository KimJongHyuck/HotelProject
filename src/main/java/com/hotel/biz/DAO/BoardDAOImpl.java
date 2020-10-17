package com.hotel.biz.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hotel.biz.VO.BoardVO;
import com.hotel.biz.common.Search;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	SqlSession sqlSession;
	
	private static String namespace = "com.hotel.biz.mapper.BoardMapper";
	
	//게시글 목록 불러오기
	@Override
	public List<BoardVO>getBoardList(Search search) throws Exception {
		
		return sqlSession.selectList(namespace+".BoardList", search); //BoardMaper의 id 값
	}
	
	//총 게시글 개수 확인
	@Override
	public int getBoardListCnt(Search search) throws Exception {
		return sqlSession.selectOne(namespace+".getBoardListCnt",search);
	}
	// 게시판 조회수
	@Override
	public void boardHit(int bno) throws Exception {
		sqlSession.update(namespace+".boardHit",bno);
	}
	
	
	//게시글 글쓰기
	@Override
	public void writerBoard(BoardVO vo) throws Exception {
		sqlSession.insert(namespace+".BoardWriter",vo);
		
	}
	//게시글 보기
	@Override
	public BoardVO boardRead(int bno) throws Exception {
		return sqlSession.selectOne(namespace+".BoardRead", bno);
    }
	
	//게시글 수정
	@Override
    public void boardUpdate(BoardVO vo) throws Exception {
        sqlSession.update(namespace+".BoardUpdate", vo);
    }
	
	//게시글 삭제 
    @Override
    public void boardDelete(int bno) throws Exception {
        sqlSession.delete(namespace+".BoardDelete", bno);
    }
	

}
