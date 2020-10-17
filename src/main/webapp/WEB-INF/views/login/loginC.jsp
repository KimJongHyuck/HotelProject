<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>   
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import ="com.hotel.biz.DAO.JoinDAO, com.hotel.biz.VO.MemberVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<% String id = request.getParameter("ID"); 

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../include/menu.jsp" />

<%=id %>님 환영합니다. 

 <script>
        alert("아이디와 비밀번호를 확인해주세요.");
        self.location = "/login/login";
    </script>

<br><br>
<a href="logout.do">로그아웃</a>
<br><br>
<a href="mypage.do">마이페이지</a>
</body>
</html>