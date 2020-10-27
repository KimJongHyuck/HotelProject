package com.hotel.biz.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hotel.biz.DAO.RvDAO;
import com.hotel.biz.VO.room_infoVO;
import com.hotel.biz.VO.rv_info;

@Service
public class RvServiceImpl implements RvService{
	@Inject
	RvDAO rvDAO;

	@Override
	public List<room_infoVO> getlistRm() throws Exception {
		return rvDAO.getlistRm();
	}
	
	@Override
	public List<rv_info> getlistRv() throws Exception {
		return rvDAO.getlistRv();
	}

	@Override
	public void writeRv(rv_info rv) throws Exception {
		rvDAO.writeRv(rv);
	}

	@Override
	public List<rv_info> readRv(int rvno) throws Exception {
		return rvDAO.readRv(rvno);
	}

	@Override
	public void updateRv(rv_info rv) throws Exception {
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
