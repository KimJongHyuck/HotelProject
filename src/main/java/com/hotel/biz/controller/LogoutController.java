package com.hotel.biz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/login/*")
public class LogoutController{

   @RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login/login";
	}
	
	
}
