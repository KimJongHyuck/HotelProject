<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<title>HOTEL PROJECT</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ page import="com.hotel.biz.VO.MemberVO" %>
<%@ page import="com.hotel.biz.DAO.JoinDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
	
	alert(ID+"님 환영합니다!");
	
	
}

function openIdChk(){
	
	var ID = document.getElementById("ID").value;
	console.log(ID);
	window.name = "parentForm";
	window.open("idCheck.do?ID="+ID,
			"chkForm","width=500, height=300, resizeable= no,");
	
	
}

</script>
<%@ include file="../include/menu.jsp" %>
	<div class="page-wrap" content="width=device-width, initial-scale=1">

		<!-- Nav -->
<nav id="nav">
<ul>
	<h1>
글로벌 호텔 회원가입
	</h1>
</ul>
</nav>
		<!-- Main -->
		<section id="main">

			<!-- Banner -->

			<!-- Gallery -->


			<!-- Contact -->
			<section id="contact">
				<!-- Social -->


				<!-- Form -->
				<div class="column">
					<form action="${path}/user/hoteljoin.do" onsubmit = 'return blankcheck()' name="join" id="join" method="get">
						<div class="field half first">
							<label>아이디</label> 
							<input name="ID" id="ID" type="text" placeholder="아이디">
							<button type="button" onclick="openIdChk()">중복확인</button> 
							<br>
							<br>
							<label for="PW">비밀번호</label> 
							<input name="PW" id="PW" type="password" placeholder="비밀번호"> 
							<br> 
							<br> 
							<label for="name">이름</label> 
							<input name="name" id="name" type="text" placeholder="이름"> 
							<br>
							<br>
							<label for="phone">전화번호</label> 
							<input name="phone" id="phone" type="text" placeholder="전화번호"> 
							<br>
							<br>
						 	<label for="email">이메일</label> 
							<input name="email" id="email" type="text" placeholder="이메일"> 
							<br>
							<br>
							<div class="field half"></div>
							<div class="field"></div>
							<input type="submit" value="가입">
							
					</form>
					
				</div>

			</section>

			<!-- Footer -->

		</section>
	</div>

	<!-- Scripts -->

</body>
</html>