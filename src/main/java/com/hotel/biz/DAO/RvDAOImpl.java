package com.hotel.biz.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;

@Repository
public class RvDAOImpl implements RvDAO{
	
	@Inject
	SqlSession sqlSession;

	private static String namespace = "com.hotel.biz.mapper.RvMapper";
	
	@Override
	public List<Room_infoVO> getlistRm() throws Exception {
		return sqlSession.selectList(namespace+".RmList");
	}
	
	@Override
	public List<Rv_infoVO> getlistRv() throws Exception {
		return sqlSession.selectList(namespace+".RvList");
	}

	@Override
	public void writeRv(Rv_infoVO rv) throws Exception {
		sqlSession.insert(namespace+".RvWriter",rv);
		
	}

	@Override
	public List<Rv_infoVO> readRv(int rvno) throws Exception {
		return sqlSession.selectList(namespace+".RvRead",rvno);
	}

	@Override
	public void updateRv(Rv_infoVO rv) throws Exception {
		sqlSession.update(namespace+".RvUpdate", rv);
	}

	@Override
	public void deleteRv(int rvno) throws Exception {
        sqlSession.delete(namespace+".RvDelete", rvno);
	}

	@Override
	public void checkonRoom(int rno) throws Exception {
		sqlSession.update(namespace+".RoomCheckOn",rno);
	}

	@Override
	public void checkoffRoom(int rno) throws Exception {
		sqlSession.update(namespace+".RoomCheckOff",rno);
	}
}
