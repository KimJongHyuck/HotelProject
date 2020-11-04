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


<link rel="stylesheet" href="/biz/resources/css/join.css" />
<style>
#btn{
left:110px;
}
#login{
left:-400px;
}
#register{
left:50px;
}
</style>
</head>
<body>
<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/login";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#id").val()==""){
					alert("아이디를 입력해주세요.");
					$("#id").focus();
					return false;
				}
				if($("#pass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#pass").focus();
					return false;
				}
				if($("#name").val()==""){
					alert("성명을 입력해주세요.");
					$("#name").focus();
					return false;
				}
				if($("#phone").val()==""){
					alert("핸드폰을 입력해주세요.");
					$("#phone").focus();
					return false;
				}
				if($("#email").val()==""){
					alert("이메일을 입력해주세요.");
					$("#email").focus();
					return false;
				}
				var idChkVal = $("#idChk").val();
				if(idChkVal == "N"){
					alert("중복확인 버튼을 눌러주세요.");
					return false;
				}else if(idChkVal == "Y"){
					$("#regForm").submit();
					$('#muModal').modal('show');
				}
			});
		})
		
		function fn_idChk(){
			$.ajax({
				url : "idChk",
				type : "post",
				dataType : "json",
				data : {"id" : $("#id").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 아이디입니다.");
					}else if(data == 0){
						$("#idChk").attr("value", "Y");
						alert("사용가능한 아이디입니다.");
					}
				}
			})
		}
	</script>

<%@ include file="../include/header.jsp" %>

			
<section id="loginfo">
		<div class="wrap">
            <div class="form-wrap" style="height: 700px;margin-top: 20px;">
            <br>
                <h1 align="center">REGISTER</h1>
                <div class="button-wrap">
                    <button type="button" class="togglebtn" onclick="location.href='${pageContext.request.contextPath}/member/loginpage.do'">LOG IN</button>
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="location.href='${pageContext.request.contextPath}/member/register1'">REGISTER</button>
                </div>
                 <div class="social-icons">
                    <img src="/biz/resources/images/fb.png" alt="facebook">
                    <img src="/biz/resources/images/tw.png" alt="twitter">
                    <img src="/biz/resources/images/gl.png" alt="google">
                </div>           
                   
                <form action="${pageContext.request.contextPath}/member/register" method="post" id="regForm">
           		     <label for="inp" class="inp">
                    <input type="text" id="id" name="id" class="input-field1" placeholder="&nbsp;" >
                    <span class="label">ID</span>
  		     	  	 <span class="focus-bg"></span>
					</label>
                    <button class="submit2" type="button" id="idChk" onclick="fn_idChk();" value="N">중복확인</button>
                    <label for="inp" class="inp"> 
                    <input type="password" class="input-field1" placeholder="&nbsp;" id="pass" name="pass">
                    <span class="label">password</span>
  		     	  	 <span class="focus-bg"></span>
					</label>
					 <label for="inp" class="inp"> 
                    <input type="text" class="input-field1" name="name"  id="name"  placeholder="&nbsp;">
                    <span class="label">name</span>
  		     	  	 <span class="focus-bg"></span>
					</label>
					<label for="inp" class="inp"> 
                    <input type="text" class="input-field1" name="phone"  id="phone"  placeholder="&nbsp;">
                    <span class="label">phone</span>
  		     	  	 <span class="focus-bg"></span>
					</label>
					<label for="inp" class="inp"> 
                    <input type="text" class="input-field1" name="email"  id="email"  placeholder="&nbsp;"> 
                    <span class="label">email</span>
  		     	  	 <span class="focus-bg"></span>
					</label>
                    <button class="submit1" type="submit" id="submit">REGISTER</button>
                </form>
                
                
            </div>
        </div>
	</section>
  

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



</body>
<%@ include file="../include/footer.jsp"%>
</html>