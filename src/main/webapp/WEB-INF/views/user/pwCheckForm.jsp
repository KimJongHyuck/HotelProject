<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>


<script type="text/javascript">
function check(){
	
	if(confirm("정말 탈퇴하시겠습니까?")){
		
		if(confirm="예"){
			
		var ID = document.getElementById("ID").value;
		var PW = document.getElementById("PW").value;
			
		console.log(ID);
		console.log(PW);
		//DELETE문 컨트롤러 입력
		location.href="deleteuser.do?ID="+ID+'&PW='+PW;
		
		
		}
		
		
		
	} else {
		
		console.log("아니요");
		window.close();
		
	
	}
	
	
	
}


</script>

<h1>회원 탈퇴</h1>

회원 탈퇴 하려면 아이디와 패스워드를 다시 입력하세요.
<br>
<br>
<input type="text" name="ID" id="ID" >
<input type="password" name="PW" id="PW">
<p><button type="submit" onclick="check()">회원 탈퇴</button></p>


</body>
</html>