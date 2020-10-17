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



function com() {
	
	alert("회원가입 완료!");
	
};

function blankcheck(ID){
	
	console.log("function 테스트");
	console.log(ID);
	
	if(ID == ""){
		
		alert("아이디를 입력해 주세요.");
		document.join.ID.focus();
		
	}
	
}

function openIdChk(){
	
	var id = document.getElementById("ID").value;
	console.log(id);
	window.name = "parentForm";
	window.open("idCheck.do?id="+id,
			"chkForm","width=500, height=300, resizeable= no");
	
}

</script>
<%@ include file="../include/menu.jsp" %>
	<div class="page-wrap" content="width=device-width, initial-scale=1">

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><h1>
						호텔 이름
						</h1></li>
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
					<h3>회원 가입</h3>
					<form action="${path}/user/hoteljoin.do" name="join" id="join" method="get">
						<div class="field half first">
							<label>아이디</label> 
							<input name="ID" id="ID" type="text" placeholder="아이디">
							<button type="button" onclick="openIdChk()">중복확인</button> 
							<br>
							<label for="PW">비밀번호</label> 
							<input name="PW" id="PW" type="password" placeholder="비밀번호"> 
							<br> 
							<!-- <label for="pw2">비밀번호 확인</label> 
							<input name="pw2" id="pw2" type="password" placeholder="비밀번호 확인">
							<br> --> 
							<label for="name">이름</label> 
							<input name="name" id="name" type="text" placeholder="이름"> 
							<br>
							
							<label for="phone">전화번호</label> 
							<input name="phone" id="phone" type="text" placeholder="전화번호"> 
							<br>
							
							<label for="address">주소</label> 
							<input name="address" id="address" type="text" placeholder="주소"> 
							<br>
							
							<!-- <label for="email">이메일</label> 
							<input name="email" id="email" type="text" placeholder="이메일"> 
							<br> -->
							
<!-- 						<div class="bir_wrap">
							<div class="join_row join_birthday">
								<h3 class="join_title">
									<label for="yy">생년월일</label>
								</h3>
								<div class="bir_wrap">
									<div class="bir_yy">
										<span class="ps_box"> 
										<input type="text" id="yy" name="yy"
										placeholder="년(4자)" aria-label="년(4자)" class="int"
										maxlength="4">
										</span>
									</div>
								<div class="bir_mm">
									<span class="ps_box"> 
									<select id="mm" name="mm" class="sel" aria-label="월">
											<option value="">월</option>
											<option value="01">1</option>
											<option value="02">2</option>
											<option value="03">3</option>
											<option value="04">4</option>
											<option value="05">5</option>
											<option value="06">6</option>
											<option value="07">7</option>
											<option value="08">8</option>
											<option value="09">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>
									</span>
								</div>
										<div class=" bir_dd">
											<span class="ps_box"> 
											<input type="text" id="dd" name="dd"
											placeholder="일" aria-label="일" class="int" maxlength="2">
											<label for="dd" class="lbl"></label>
											</span>
										</div>
									</div>
								</div>
								<br> <label for="gender">성별</label> <select id="gender"
									name="gender" class="sel" aria-label="성별">
									<option value="" selected="">성별</option>
									<option value="M" name="M">남자</option>
									<option value="F" name="F">여자</option>
									<option value="U">선택 안함</option>
								</select>

							</div> -->
							<div class="field half"></div>
							<div class="field"></div>
							<ul class="actions">
								<input value="회원가입" class="button" type="submit" onclick="com()">
							</ul>
					</form>
					
				</div>

			</section>

			<!-- Footer -->

		</section>
	</div>

	<!-- Scripts -->

</body>
</html>