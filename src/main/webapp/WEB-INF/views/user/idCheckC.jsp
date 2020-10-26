<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

${result }
<c:if test="${result eq 0 }">
<script language="javascript">

alert("사용할 수 있는 아이디 입니다.");

window.close();



</script>

</c:if>

<c:if test="${result eq 1 }">
<script language="javascript">

alert("사용할 수 없는 아이디 입니다.");

window.close();

</script>

</c:if>

</body>
</html>