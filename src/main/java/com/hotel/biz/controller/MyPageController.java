package com.hotel.biz.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hotel.biz.VO.MemberVO;
import com.hotel.biz.service.LoginService;
import com.hotel.biz.service.MypageService;

@Controller
@RequestMapping("/user/*")
public class MyPageController {
	
	@Inject
	MypageService mypageService;
	
	@RequestMapping(value="mypageP.do", method = RequestMethod.GET )
	public String mypage(Model model,HttpServletRequest request,MemberVO vo) throws Exception {
		
		HttpSession session = request.getSession();
		
		String ID = (String) session.getAttribute("ID");
		System.out.println(ID);
		
		
		return "/user/mypage";
		
	}
	
	
}
