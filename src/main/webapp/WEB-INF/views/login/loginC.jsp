<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>   
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import ="com.hotel.biz.DAO.JoinDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<% 

String ID = request.getParameter("ID"); 
String PW = request.getParameter("PW");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../include/menu.jsp" />
<form action = "../user/mypageP.do">
<h1><%=ID %>님 환영합니다.</h1>
<br>
<br>
<input type="submit" value="마이페이지">
<br>
<br>
<button type="button" onclick="location.href='${path}/biz/login/logout.do' ">로그아웃</button>

</form>

</body>
</html>