package com.hotel.biz.controller;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.biz.DAO.JoinDAO;
import com.hotel.biz.VO.MemberVO;
import com.hotel.biz.service.JoinService;
import com.hotel.biz.service.LoginService;


@Controller
@RequestMapping("/user/*")
public class JoinController {

	@Inject
	JoinService joinService;

	@RequestMapping(value="hoteljoin.do", method = RequestMethod.GET )
	public String joinhotel(MemberVO vo,HttpSession session,Model model) throws Exception {
		
		System.out.println("이름값:"+vo.getName());
		System.out.println("ID:"+vo.getID());
		
		if(vo.getName() == null || vo.getName() == "") {
			
			return "user/join";
			
		}else {
			
			joinService.joinhotel(vo);
			
			return "mainPage";		
		
			}
		}
	
	//아이디 중복 체크
	
	
	//페이지 이동
	@RequestMapping(value = "joinpage.do", method = RequestMethod.GET)
	public String joinpage(MemberVO vo) throws Exception {
		return "user/join";
		
	}

	@RequestMapping(value="idCheck.do",method = RequestMethod.GET)
	public String idcheck(Model model, HttpServletRequest request, HttpSession session,MemberVO memberVO) throws Exception {
			
			String id = request.getParameter("id");
			System.out.println(id);
			String chkresult = joinService.idCheck(id);	
			model.addAttribute("result",chkresult);
			
			if(chkresult.equals("0")){
				
				System.out.println("중복 없음"+chkresult);
				
			}else {
				
				System.out.println("중복 있음");
			}
			
			return "user/idCheckC";

		}

	
	@RequestMapping(value = "MemberIdCheckAction.do", method = RequestMethod.GET)
	public String MemberIdCheckAction(MemberVO vo) throws Exception {
		return "user/IdCheckForm";
		
	}
	
	
	
}
	
