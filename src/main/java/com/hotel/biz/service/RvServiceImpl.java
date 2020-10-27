package com.hotel.biz.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hotel.biz.DAO.RvDAO;
import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;

@Service
public class RvServiceImpl implements RvService{
	@Inject
	RvDAO rvDAO;

	@Override
	public List<Room_infoVO> getlistRm() throws Exception {
		return rvDAO.getlistRm();
	}
	
	@Override
	public List<Rv_infoVO> getlistRv() throws Exception {
		return rvDAO.getlistRv();
	}

	@Override
	public void writeRv(Rv_infoVO rv) throws Exception {
		rvDAO.writeRv(rv);
	}

	@Override
	public List<Rv_infoVO> readRv(int rvno) throws Exception {
		return rvDAO.readRv(rvno);
	}

	@Override
	public void updateRv(Rv_infoVO rv) throws Exception {
		rvDAO.updateRv(rv);
	}

	@Override
	public void deleteRv(int rvno) throws Exception {
		rvDAO.deleteRv(rvno);
	}

	@Override
	public void checkonRoom(int rno) throws Exception {
		rvDAO.checkonRoom(rno);
	}

	@Override
	public void checkoffRoom(int rno) throws Exception {
		rvDAO.checkoffRoom(rno);
	}
}
