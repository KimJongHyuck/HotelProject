<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@page import="com.hotel.biz.VO.MemberVO"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="org.springframework.ui.Model"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">

function blankcheck(){
	
	var ID = document.getElementById("ID").value;
	var PW = document.getElementById("PW").value;
	var name = document.getElementById("name").value;
	var phone = document.getElementById("phone").value;
	var email = document.getElementById("email").value;
	
	console.log("function 테스트");
	console.log(ID);
	
	if(ID == ""){
		
		alert("아이디를 입력해 주세요.");
		document.join.ID.focus();
		return false;
		
	}
	if (PW == ""){
		
		alert("비밀번호를 입력해 주세요.");
		document.join.PW.focus();
		return false;
		
	}
	if (name == ""){
		
		alert("이름를 입력해 주세요.");
		document.join.name.focus();
		return false;
		
	}
	if (phone == ""){
		
		alert("전화번호를 입력해 주세요.");
		document.join.phone.focus();
		return false;
		
	}
	if (email == ""){
		
		alert("이메일를 입력해 주세요.");
		document.join.email.focus();
		return false;
		
	}
	
	
	
}
	
</script>



	<jsp:include page="../include/menu.jsp" />
	<h1>마이페이지</h1>
	<form action="${path}/biz/user/updateuser.do" name="join" id="join" onsubmit = 'return blankcheck()' method="get">
	아이디: <input type="text" value=${loginChk.ID } name="ID" id="ID" placeholder=${loginChk.ID } readonly>
	<br>
	<br>
	비밀번호: <input type="password" name="PW" id="PW" placeholder=${loginChk.PW }>
	<br>
	<br>
	이름: <input type="text" name="name" id="name" placeholder=${loginChk.name }>
	<br>
	<br>
	이메일: <input type="text" name="email" id="email" placeholder=${loginChk.email }>
	<br>
	<br>
	전화번호: <input type="text" name="phone" id="phone" placeholder=${loginChk.phone }>
	<br>
	<br>
	<input class="button "type="submit" value="수정"></button>
	</form>
	<form action="${path}/biz/user/pwCheck.do" method="get">
	<br>
	<input type="submit" value="회원탈퇴" >
	</form>
	<!--${path}/biz/user/deleteuser.do  -->
</body>
</html>