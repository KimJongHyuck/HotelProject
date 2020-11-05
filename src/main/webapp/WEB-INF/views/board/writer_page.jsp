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
	if (f.b_title.value == "" || f.b_title.value.length == 0) {
		alert("제목을 입력하세요");
		f.b_title.focus();
		return false;
	} else if (f.b_content.value == "" || f.b_content.value.length == 0) {
		alert("내용을 입력하세요");
		f.b_content.focus();
		return false; 
	} else {
		return true;
	}
}
</script>
</head>
  <%-- <%@ include file="../include/menu.jsp" %> --%>
	
	<body>

		<main>
		<div class="hero">
			<div class="container">
				<div class="community">
				 	    
				    <form name="bdto" id="insert_form" method="post" action="${path}/board/insert.do" enctype="multipart/form-data" onsubmit = "return check(this);">
				    	
				   
				    	<input type="hidden" name="m_num" value="${member.m_num}">
				    	<h2>제목</h2>
				        <div>		       
				        	<input name="b_title" id="b_title" size="80" placeholder="글 제목 입력">
				        </div>
				        
				        <h2>내용</h2>
				        <div>
				        	<textarea name="b_content" id="b_content" rows="8" cols="80" placeholder="글 내용 입력"></textarea>
				        </div>
				        <div>
				        	<input type="hidden" name="b_writer" id="writer" value="${member.id}">
				        
				        </div>
				
						<div class="inputArea">
							<!-- <label for="b_img">이미지</label>
							 <input type="file" id="b_img"name="file" onchange="setThumbnail(event);" />
							<div class="select_img">
								<img src="" />
							</div>
							<script>
								/* 업로드 할 이미지 미리보기  */
							</script> -->
							<input id="b_submit" type="submit" value="확인">
						</div>

				    <%--         <%=request.getRealPath("/") %>
				    	 --%>
				     </form>
				   
				   		<div class="b_read_bt">
				   		<a href="${path}/board/list.do">목록&nbsp;&nbsp;</a>
				     </div>	
				     
			     </div>
		       </div>
		    </div>
	    </main>
	    
	 </body>

 <%@ include file="../include/footer.jsp"%>
</html>
