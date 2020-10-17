<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ include file="../include/header.jsp"%>
<script>

function check(f) {
		
	return confirm("삭제하시겠습니까?");
		
}
</script>
</head>
<body>
    <%@ include file="../include/menu.jsp" %>
    <h2>board_read 페이지입니다.</h2>
    <a href="${path}/board/writer_page">글쓰기</a>
    <table border="1">
        <th> 정보 </th>
        <th> 데이터 </th>
        <tr>
            <td>작성일자</td>
            <td><fmt:formatDate value="${data.b_regdate}" pattern="yyyy-MM-dd HH:mm" />
            </td>
        </tr>
        <tr>
            <td>글번호</td><td>${data.b_num}</td>
        </tr>
        <tr>
            <td>글제목</td><td>${data.b_title}</td>
        </tr>
        <tr>
            <td>글내용</td><td>${data.b_content}</td>
        </tr>
        <tr><td>글쓴이</td><td>${data.b_writer}</td></tr>
        <tr><td>조회수</td><td>${data.b_hit}</td></tr>
      
        <div class="inputArea">
 		<label for="b_img">이미지</label>
		 <p>원본 이미지</p>
			 <img src="${pageContext.request.contextPath}/${data.b_img}" class=""/>
		 <p>썸네일</p>
		 	<img src="${pageContext.request.contextPath}/${data.b_Thumbimg}" class=""/>
		</div>
        
    </table>
	<a href="${path}/board/list.do" class="btn btn-primary">목록</a>
 	<c:if test="${login.ID == data.b_writer}">
  	<a href="${path}/board/updatepage?bno=${data.b_num}">수정</a>
    <a href="${path}/board/delete.do?bno=${data.b_num}" onclick="return check(this);">삭제</a>
    </c:if>
     <%@ include file="../include/footer.jsp"%>
</body>
</html>
