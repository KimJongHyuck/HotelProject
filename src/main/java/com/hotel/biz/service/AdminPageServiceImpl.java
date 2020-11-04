package com.hotel.biz.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import com.hotel.biz.DAO.AdminPageDAO;
import com.hotel.biz.VO.AdminVO;
import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;
import com.hotel.biz.common.Criteria;
import com.hotel.biz.common.Search;
import com.hotel.biz.common.SearchCriteria;


@Service
public class AdminPageServiceImpl implements AdminPageService {

	@Inject
	AdminPageDAO adminPageDAO;

	@Override
	public List<AdminVO> getMemberList(SearchCriteria criteria) throws Exception {
		return adminPageDAO.getMemberList(criteria);
	}
	
	@Override
	public int totalCnt(Criteria criteria) {
		return adminPageDAO.totalCnt(criteria);
	}

	@Override
	public List<Rv_infoVO> getRv_infoList(int rv_num) throws Exception {
		return adminPageDAO.getRv_infoList(rv_num);
	}

	@Override
	public List<Room_infoVO> getRoom_infoList(int r_num) throws Exception {
		return adminPageDAO.getRoom_infoList(r_num);
	}
	

	@Override
	public Map<String, Object> getRoom_update(Map<String, Object> param) throws Exception {
		return adminPageDAO.getRoom_update(param);
	}
	
//	@Override
//	public void roomDelete(int r_num) throws Exception{
//		adminPageDAO.roomDelete(r_num);
//	}
	
}
