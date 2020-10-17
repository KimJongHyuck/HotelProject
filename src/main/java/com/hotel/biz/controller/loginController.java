package com.hotel.biz.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hotel.biz.VO.BoardVO;
import com.hotel.biz.VO.MemberVO;
import com.hotel.biz.service.LoginService;


@Controller
@RequestMapping("/login/*")
public class loginController {
	
	@Inject
	LoginService loginService;
	
	@RequestMapping("loginpage")
	public String loginpage() {
		return "login/login";
		
	}
	
	@RequestMapping(value="login.do", method = RequestMethod.POST)
	public void login(MemberVO vo,HttpSession session,HttpServletRequest request,Model model) throws Exception {
		  
		 MemberVO memberVO = loginService.login(vo);
		 
		 if(memberVO == null) {
			 return;
		 }
		 
		 model.addAttribute("member",memberVO);
	}
}
