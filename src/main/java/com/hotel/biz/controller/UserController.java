
package com.hotel.biz.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hotel.biz.VO.MemberVO;
import com.hotel.biz.service.JoinService;

@Controller
@RequestMapping("/member/*")
public class UserController {

	@Inject
	JoinService joinService;

	// 회원가입 get
	@RequestMapping(value = "/register1", method = RequestMethod.GET)
	public String getRegister() throws Exception {

		return "user/register";
	}

	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {

		int result = joinService.idChk(vo);
		try {
			if(result == 1) {
				return "/member/register1";
			}else if(result == 0) {
				joinService.joinhotel(vo);
			}
			// 요기에서~ 입력된 아이디가 존재한다면 -> 다시 회원가입 페이지로 돌아가기 
			// 존재하지 않는다면 -> register
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/member/loginpage.do";
		
	}
	// 로그인 페이지 이동
	@RequestMapping("loginpage.do")
	public String loginpage() {

		return "user/login";

	} 

	// 로그인
	@RequestMapping(value = "/login")
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {

		HttpSession session = req.getSession();
		MemberVO login = joinService.login(vo);

		if (login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		} else {
			session.setAttribute("member", login);
		}

		return "index";
	}
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	//업데이트 페이지 이동
	@RequestMapping("/updateView")
	public String update(HttpSession session, MemberVO vo,HttpServletRequest req) throws Exception{
		
		
		  MemberVO member = (MemberVO) session.getAttribute("member");

		  session.setAttribute("member", member);
		
		return "user/myPage";
	}
	// 업데이트
	@ResponseBody
	@RequestMapping("/update")
	public Map<String, Object> memberUpdate(HttpSession session,
			@RequestParam(value = "id")String id,
			@RequestParam(value = "pass")String pass,
			@RequestParam(value = "name")String name,
			@RequestParam(value = "phone")String phone,
			@RequestParam(value = "email")String email) throws Exception{
		
		Map<String, Object> member = new HashMap<>();
		member.put("id", id);
		member.put("pass", pass);
		member.put("name", name);
		member.put("phone", phone);
		member.put("email", email);
		
		System.out.println(member);
		Map<String, Object> ss = joinService.member_update(member);
		
		return ss;
	}

	// 회원 탈퇴 post
		@RequestMapping(value="/Delete", method = RequestMethod.POST)
		public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
			
			// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
			MemberVO member = (MemberVO) session.getAttribute("member");
			// 세션에있는 비밀번호
			String sessionPass = member.getPass();
			// vo로 들어오는 비밀번호
			String voPass = vo.getPass();
			
			if(!(sessionPass.equals(voPass))) {
				rttr.addFlashAttribute("msg", false);
				return "redirect:/member/memberDeleteView";
			}
			joinService.memberDelete(vo);
			session.invalidate();
			return "redirect:/";
		}
		
		// 패스워드 체크
		@ResponseBody
		@RequestMapping(value="/passChk", method = RequestMethod.POST)
		public int passChk(MemberVO vo) throws Exception {
			int result = joinService.passChk(vo);
			return result;
		}
		// 아이디 중복 체크
		@ResponseBody
		@RequestMapping(value="/idChk", method = RequestMethod.POST)
		public int idChk(MemberVO vo) throws Exception {
			int result = joinService.idChk(vo);
			return result;
		}

}
