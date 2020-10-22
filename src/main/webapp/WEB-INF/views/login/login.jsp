<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%@ include file="../include/menu.jsp" %>

<form action="${path}/login/login.do" method="post">
<h1>로그인</h1>

	<p>
		<label for="ID">아이디</label>
		<input type="text" id="ID" name="ID"/>
	</p>
	<p>
		<label for="PW">비밀번호</label>
		<input type="password" id="PW" name="PW"/>
	</p>	
	<p><button type="submit">로그인</button></p>
	<button type="button" onclick="location.href='${path}/user/joinpage.do' ">회원가입</button>

</form>
    
    
</body>
</html>