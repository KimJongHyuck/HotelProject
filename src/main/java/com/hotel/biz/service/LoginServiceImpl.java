package com.hotel.biz.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hotel.biz.DAO.LoginDAO;
import com.hotel.biz.VO.MemberVO;


@Service
public class LoginServiceImpl implements LoginService {

	private final LoginDAO loginDAO;
	
	@Inject
	public LoginServiceImpl(LoginDAO loginDAO) {
		
		this.loginDAO = loginDAO;
		
	}
	

	@Override
	public MemberVO login(String ID,String PW) throws Exception {
		
		return loginDAO.login(ID, PW);
		
	}


	
	 
	 


	


}
