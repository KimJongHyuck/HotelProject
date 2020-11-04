<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>HOTEL PROJECT</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel='stylesheet'
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




<link rel="stylesheet" href="${path}/biz/resources/css/myPage.css" />
<script type="text/javascript" src="${path}/biz/resources/js/myPage.js"></script>

	<%@ include file="../include/header.jsp"%>
</head>



<body>

	<div class="table-wrapper" style="margin-top: 90px;">
		<div class="form-wrap">
			<br>
			<h1 align="center">MYPAGE</h1>
			<div class="button-wrap">
				<div id="btn"></div>
			</div>
			<div class="social-icons"></div>
			<form action="${pageContext.request.contextPath}/member/Delete" method="post" id="delForm">
			
				<label for="inp" class="inp" style="margin-top:20px;">
					 <input type="text" value=${member.id } name="id" id="id" readonly>
					 <span class="label">아이디</span>
  		     	  	 <span class="focus-bg"></span>
				</label>
				<label for="inp" class="inp">
					<input type="password" name="pass" id="pass" placeholder="&nbsp;">
					 <span class="label">비밀번호</span>
  		     	  	 <span class="focus-bg"></span>
				</label>
				<label for="inp" class="inp">
					 <input type="text" class="form-control item" value=${member.name } name="name" id="name">	
					 <span class="label">이름</span>
  		     	  	 <span class="focus-bg"></span>
				</label>
				<label for="inp" class="inp">
					  <input type="text"	class="form-control item" value=${member.phone } name="phone" id="phone">	
					 <span class="label">연락처</span>
  		     	  	 <span class="focus-bg"></span>
				</label>
				<label for="inp" class="inp">
					  <input type="text" class="form-control item" value=${member.email } name="email" id="email">
					 <span class="label">이메일</span>
  		     	  	 <span class="focus-bg"></span>
				</label>
				
			
				<!-- <button class="btn btn-success" type="submit" id="submit">회원정보수정</button> -->
				<br><br>
			</form>
			<div style="float:right;">
			<button type="button" class="btn btn-success" onclick="update();" > 회원정보수정</button>
				<button type="button" class="btn btn-success" onclick="remove();" > 회원탈퇴</button>
				</div>
			<!-- <button class="btn btn-success" type="submit" id="submit1">회원정보수정</button> -->
				
				
			
				<!-- <div class="form-group">
                <button type="button" class="btn btn-block create-account" id="submit">회원탈퇴</button> -->
            </div>
		</div>
<div id="muModal" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE876;</i>
				</div>				
				<h4 class="modal-title">수정 완료!</h4>	
			</div>
			<div class="modal-body">
				<p class="text-center">수정 데이터를 확인해보세요.!</p>
			</div>
			<div class="modal-footer">
				<button class="btn btn-success btn-block" data-dismiss="modal">OK</button>
			</div>
		</div>
	</div>
</div>     
<div id="meModal2" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE876;</i>
				</div>				
				<h4 class="modal-title">탈퇴 완료!</h4>	
			</div>
			<div class="modal-body">
				<p class="text-center">다음에 또 만나요.!</p>
			</div>
			<div class="modal-footer">
				<button class="btn btn-success btn-block" data-dismiss="modal">OK</button>
			</div>
		</div>
	</div>
</div>     
</body>
</html>