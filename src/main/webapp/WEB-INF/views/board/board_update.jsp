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
<body>
    <%@ include file="../include/menu.jsp" %>
    <h2>board_update 페이지입니다.</h2>
    <form name="updateform" method="POST" action="${path}/board/update.do" enctype="multipart/form-data" onsubmit = "return check(this);">
       <!--  <div>글번호</div> -->
        <div><input name="b_num" value="${data.b_num}" type="hidden" readonly="readonly"/></div>
        <!-- <div>작성자</div> -->
        <div><input name="b_writer" value="${data.b_writer}" type="hidden" readonly="readonly"/></div>
        <div>게시글제목 : </div>
        <div><input name="b_title" id="b_title" value="${data.b_title}" type="text"/></div>
        <div>게시글내용 : </div>
        <div><textarea name="b_content" id="b_content" rows="5" cols="50">${data.b_content}</textarea></div>
        <!-- <div>조회수</div> -->
        <div><input name="b_hit" value="${data.b_hit}" type="hidden" readonly="readonly"/></div>
        <%-- <div>작성일자</div>
        <div><fmt:formatDate value="${data.b_regdate}" pattern="yyyy-MM-dd HH:mm:ss" /></div> --%>
        
        <div class="inputArea">
			<label for="b_img">이미지</label>
			 <input type="file" id="b_img"name="file" onchange="setThumbnail(event);" />
			<div class="select_img">
				<img src="" />
			</div>
			<script>
				/* 업로드 할 이미지 미리보기  */
			</script>
		</div>
                
        <div>
            <input type="submit" value="글수정"/>
            <input type="reset" value="리셋"/>
        </div>
    </form>
     <%@ include file="../include/footer.jsp"%>
</body>
</html>
