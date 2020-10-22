package com.hotel.biz.controller;



import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping("login.do")
	public String login(MemberVO vo,HttpSession session,HttpServletRequest request,Model model) throws Exception {
		
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		
		System.out.println(ID);
		System.out.println(PW);
		
		// 값이 있는지 없는지 확인하는 기준
		
		MemberVO loginChk = loginService.login(ID,PW);
		
		System.out.println("loginChk값:"+loginChk);
		
		
		
		// 있는지 없는지 확인
		if(loginChk != null) {
		
			model.addAttribute("loginChk",loginChk);
			session.setAttribute("loginChk", loginChk);
			System.out.println("로그인 성공");
			
			return "login/loginC";
			
		} else {
			
			System.out.println("로그인 실패");
			return "login/login";
			
			
		}
		
	}
	
	 
	
	
	
	
	
	
	
	
	
	
	
	
}
