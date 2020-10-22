package com.hotel.biz.controller;

import javax.inject.Inject;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hotel.biz.VO.MemberVO;
import com.hotel.biz.service.JoinService;
import com.hotel.biz.service.LoginService;


@Controller
@RequestMapping("/user/*")
public class JoinController {

	@Inject
	JoinService joinService;
	LoginService loginService;

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
	
	
	
	
	//회원가입 페이지 이동
	@RequestMapping(value = "joinpage.do", method = RequestMethod.GET)
	public String joinpage(MemberVO vo) throws Exception {
		return "user/join";
		
	}
	
	//아이디 중복 체크
	@RequestMapping(value="idCheck.do",method = RequestMethod.GET)
	public String idcheck(Model model, HttpServletRequest request, HttpSession session,MemberVO memberVO) throws Exception {
			
			String ID = request.getParameter("ID");
			System.out.println(ID);
			String chkresult = joinService.idCheck(ID);	
			model.addAttribute("result",chkresult);
			
			if(chkresult.equals("0")){
				
				System.out.println("중복 없음"+chkresult);
				model.addAttribute("success",chkresult);
				
			}else {
				
				System.out.println("중복 있음");
				model.addAttribute("fail",chkresult);
			}
			
			return "user/idCheckC";

		}

	//아이디 중복 체크 form으로 이동
	@RequestMapping(value = "MemberIdCheckAction.do", method = RequestMethod.GET)
	public String MemberIdCheckAction(MemberVO vo) throws Exception {
		return "user/IdCheckForm";
		
	}
	
	//개인정보 수정
	@RequestMapping(value="updateuser.do") 
	  public String updateuser(MemberVO vo) throws Exception {
		  
		  System.out.println("id값:"+vo.getID());
	  
		  joinService.updateuser(vo);
	  
		  return "login/loginC";
	  
	  }
	  
	//회원 탈퇴
	@RequestMapping(value="deleteuser.do")
	public String deleteuser(MemberVO vo,HttpServletRequest request,HttpSession session ) throws Exception {
		
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		
		  
		System.out.println("입력한값:"+ID);
		  
		joinService.deleteuser(vo);
		
		session.invalidate();
		  
		return "login/login";
		  
		  
		  
		  
	  }
	  
	//회원탈퇴용 비밀번호 체크 jsp 이동 
	@RequestMapping(value = "pwCheck.do")
	public String pwCheck(MemberVO vo,HttpServletRequest request,Model model,HttpSession session) throws Exception {
		
		System.out.println("pwCheck.do"+vo.getPW());
		session.getAttribute("loginChk");
		
		
		return "user/pwCheckForm";
		
	}
	  
	
	
	
}
	
