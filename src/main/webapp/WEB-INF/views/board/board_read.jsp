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


	<main>
		<div class="hero">
			<div class="container">
				<div class="community">
		
		
		
	<table border="1" class="b_read_title">
	
	    <th width=10%>글 제목</th>
        <th>${data.b_title} </th>
        
	</table>
	
	    <table border="1" class="b_read">
   
        <tr width=10% height=2%>
        
        
            <td> &nbsp; 글번호: ${data.b_num}</td>
            
               <td>&nbsp; 글쓴이:   ${data.b_writer}</td>
            
            <td> &nbsp; 작성일자:   <fmt:formatDate value="${data.b_regdate}" pattern="yyyy-MM-dd HH:mm" /></td>
         
           
            
         
           
            <td> &nbsp; 조회수:   ${data.b_hit}</td>
           
        </tr>
        
     <%--    <div class="inputArea">
 		<label for="b_img">이미지</label>
		 <p>원본 이미지</p>
			 <img src="${pageContext.request.contextPath}/${data.b_img}" class=""/>
		 <p>썸네일</p>
		 	<img src="${pageContext.request.contextPath}/${data.b_Thumbimg}" class=""/>
		</div> --%>
        
    </table>
	
	<div class="b_read_content">
		

         ${data.b_content}
      
 
    </div>
    
    
    <div class="b_read_bt">
	<a href="${path}/board/list.do">목록&nbsp;&nbsp;</a>
 	<c:if test="${member.id == data.b_writer}">
  	<a href="${path}/board/updatepage?bno=${data.b_num}">수정&nbsp;&nbsp;</a>
    <a href="${path}/board/delete.do?bno=${data.b_num}" onclick="return check(this);">삭제</a>
    </c:if>
    </div>
    
    			</div>
    		</div>
    	</div>
    </main>
    
     <%@ include file="../include/footer.jsp"%>
</body>
</html>
