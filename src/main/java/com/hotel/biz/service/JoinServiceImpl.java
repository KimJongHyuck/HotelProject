package com.hotel.biz.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.biz.DAO.JoinDAO;
import com.hotel.biz.VO.MemberVO;
import com.sun.javafx.collections.MappingChange.Map;


@Service
public class JoinServiceImpl  implements JoinService{
	
	private JoinDAO joinDAO;
	
	@Inject
	public JoinServiceImpl(JoinDAO joinDAO) {
		
		this.joinDAO = joinDAO;
		
	}

	
	@Override
	public void joinhotel(MemberVO vo) throws Exception {
		
		joinDAO.joinhotel(vo);
		
	}
	
	@Override
	public String idCheck(String ID) throws Exception {
		
		return joinDAO.idCheck(ID);
		
	}

	 @Override 
	  public void updateuser(MemberVO vo) throws Exception {
	  
		 joinDAO.updateuser(vo);
	  
	  }


	@Override
	public void deleteuser(MemberVO vo) throws Exception {
		
		joinDAO.deleteuser(vo);
		
	}







}
