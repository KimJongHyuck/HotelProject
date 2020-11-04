<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="now" class="java.util.Date" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 <%@ include file="../include/header.jsp"%>
</head>
<body>
	<main>
	
	  <div class="hero">
            <div class="container">
      		
             <div class="community">
             <c:set var="id" value="${sessionScope.ID}" />
			
				
				<%--  <%@ include file="../include/menu.jsp" %>  --%>
					<!-- <h2>board_list 페이지입니다.</h2> -->
					<!-- search{s} -->
					<form id = "searchForm" method="get">
						<div class="form-group row justify-content-center">
						
							<select class="form-control form-control-sm" name="searchType" id="searchType">
								<option value="b_title" <c:out value="${(param.searchType == 'b_title') ? 'selected' : '' }"/>>제목</option>
								<option value="b_content" <c:out value="${(param.searchType == 'b_content') ? 'selected' : '' }"/>>본문</option>
								<option value="b_writer" <c:out value="${(param.searchType == 'b_writer') ? 'selected' : '' }"/>>작성자</option>
							</select>
						
					
								<input type="text" class="form-control form-control-sm" name="keyword" id="keyword" value="${param.keyword}">
						
				
								<button class="btn" name="btnSearch" id="btnSearch" type="submit">검색</button>
						
						
							<c:if test="${member.id != null}">
								<p><a href="${path}/board/writer_page">글 쓰기</a></p>				
							</c:if>
						
						
								
							
						</div>
					</form>
						<!-- search{e} -->
				
					<div class="comuboard">
						<table border="1" id="comutable">
							<tr>
								<th width=40px>번호</th>
								<th>제목</th>
								<th width=80px>글쓴이</th>
								<th width=100px>작성일자</th>
								<th width=70px>조회수</th>
							</tr>
							<c:forEach var="row" items="${list}">
							<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />  
							<fmt:formatDate value="${row.b_regdate}" pattern="yyyy-MM-dd" var="b_regdate"/>
							<tr>
								<td >${row.b_num}</td>
								<td><a href="${path}/board/read.do?bno=${row.b_num}">${row.b_title}</a></td>
								<td>${row.b_writer}</td>
								<td>
								
								<c:choose>
									<c:when test="${today == b_regdate}">  
									<fmt:formatDate value="${row.b_regdate}" pattern="HH:mm"/>
									</c:when>
									<c:otherwise>
									<fmt:formatDate value="${row.b_regdate}" pattern="yyyy-MM-dd"/>
									</c:otherwise>
								</c:choose>
								</td>
								<td><fmt:formatNumber value="${row.b_hit}" /></td>
							</tr>
							</c:forEach>
						</table>
					</div>
					
					<!-- pagination{s} -->
					<div id="paginationBox">
						<ul class="pagination">
							<c:if test="${pagination.prev}">
								<li class="page-item"><a class="page-link" 
								href="#" onClick="fn_prev('${pagination.page}',
								 '${pagination.range}', '${pagination.rangeSize}')">이전</a></li>
							</c:if>
							<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				
								<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
								
								<a class="page-link" href="#" onClick="fn_pagination('${idx}',
								 '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a>
								 
								 </li>
				
							</c:forEach>
							<c:if test="${pagination.next}">
								<li class="page-item"><a class="page-link" href="#" 
								onClick="fn_next('${pagination.range}', 
								'${pagination.range}', '${pagination.rangeSize}')" >다음</a></li>
							</c:if>
						</ul>
					</div>
					<!-- pagination{e} -->
             
             
            </div>
        </div>
	</div>
	
		
	</main>
	
	 <%@ include file="../include/footer.jsp"%>
 <script src="<c:url value="/resources/js/button.js" />"></script>
</body>
</html>