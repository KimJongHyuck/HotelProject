<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>   
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%

String id = request.getParameter("id");

/* MemberVO vo = new MemberVO();
vo.setId();

session.setAttribute("mypage", vo); */


%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../include/menu.jsp" />

<%-- <td>아이디: <input type ="text" value="<%=vo.getId()%>"></td> --%>

</body>
</html>