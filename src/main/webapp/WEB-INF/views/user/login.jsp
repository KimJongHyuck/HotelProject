<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="/biz/resources/css/join.css" />
</head>
<body>

	<section id="contact">
		<div class="wrap">
			<div class="form-wrap">
				<br>
				<h1 align="center">LOG IN</h1>
				<div class="button-wrap">
					 <div id="btn"></div>
					<button type="button" class="togglebtn"
						onclick="location.href='${pageContext.request.contextPath}/member/loginpage.do'">LOG
						IN</button>
					<button type="button" class="togglebtn"
						onclick="location.href='${pageContext.request.contextPath}/member/register1'">REGISTER</button>
				</div>
				<div class="social-icons">
					<img src="/biz/resources/images/fb.png" alt="facebook"> <img
						src="/biz/resources/images/tw.png" alt="twitter"> <img
						src="/biz/resources/images/gl.png" alt="google">
				</div>
				
				
					
				<form action="${pageContext.request.contextPath}/member/login.do" method="POST">
					
					<label for="inp" class="inp">
					<input type="text" class="inp" placeholder="&nbsp;" id="id" name="id">
					 <span class="label">아이디</span>
  		     	  	 <span class="focus-bg"></span>
					</label>
					<label for="inp" class="inp">
					<input type="password" class="inp" placeholder="&nbsp;" id="pass" name="pass">	 
					 <span class="label">비밀번호</span>
  		     	  	 <span class="focus-bg"></span>
					</label>	
						
					<div style="float:center;">
					<button class="submit">Login</button>
					</div>
				</form>


			</div>
		</div>
		
	
	</section>
</body>
</html>