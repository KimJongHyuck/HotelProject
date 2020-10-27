<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>관리 페이지</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel='stylesheet'
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet'
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/adminPage.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

<script src="../resources/js/adminPage.js"></script>

<%@ include file="../include/header.jsp"%>



</head>
<body>
	<div class="table-wrapper" style="margin-top : 150px;">
		<div class="table-title">
			<div class="row">
				<div class="col-sm-6">
					<h2>
						회원 <b>정보</b> 목록
					</h2>
				</div>
				<!-- <div class="col-sm-6">
					<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-info active"> <input type="radio"
							name="status" value="all" checked="checked"> All
						</label> <label class="btn btn-success"> <input type="radio"
							name="status" value="active"> Success
						</label> <label class="btn btn-warning"> <input type="radio"
							name="status" value="inactive"> Waiting
						</label> <label class="btn btn-danger"> <input type="radio"
							name="status" value="expired"> Cancel
						</label>
					</div>
				</div> -->
			</div>
		</div>
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>No</th>
					<th>아이디</th>
					<th>이름</th>
					<th>핸드폰</th>
					<th>이메일</th>
					<th>가입일자</th>
					<th>예약 여부</th>
				</tr>
			</thead>
			<tbody id="admindata">
				  <c:forEach items="${list}" var="admin">
					<tr>
						<td>${ admin.m_num}</td>
						<td>${ admin.id}</td>
						<td>${ admin.name}</td>
						<td>${ admin.phone}</td>
						<td>${ admin.email}</td>
						<td><fmt:formatDate value="${admin.regdate }"
								pattern="yyyy-MM-dd" /></td>
						<c:if test="${admin.rv_num > 0 }">
						<td>
							<button type="button" class="btn btn-sm manage" id="manage1"
								onclick="rvlist(${admin.rv_num})">예약 중</button>
						</td>
						</c:if>
					</tr>
				</c:forEach>  

			</tbody>
		</table>
		 <div class="text-center">
              <ul class="pagination">
                    <c:if test="${pageMaker.prev}">
                       <li><a href="${path}/admin/list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
                    </c:if>
                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
   	                <li <c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
                      <a href="${path}/admin/list${pageMaker.makeSearch(idx)}">${idx}</a>
                    </li>
                    </c:forEach>
                    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                 	  <li><a href="${path}/admin/list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
                        </c:if>
                      </ul>
                    </div>
	</div>
	
       
                 		
		<!--  <div class="123" align="center">
			<nav aria-label="Page navigation">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#">Previous</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</nav>
		</div> -->
	
	<div class="table-wrapper">
		<div class="table-title">
			<div class="row">
				<div class="col-sm-6">
					<h2>
						예약 회원 <b>정보</b> 목록
					</h2>

				</div>
			</div>
		</div>
		<!-- 타이틀 -->
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>예약 번호</th>
					<th>인원 수</th>
					<th>룸 번호</th>
					<th>체크인</th>
					<th>체크아웃</th>
					<th>예약 날</th>
				</tr>
			</thead>
			<tbody id="rvdataa">

			</tbody>

		</table>
		
	
	</div>
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content" style="height: 500px">
				<div class="modal-header">
					<h4 id="roomtitle" class="modal-title">룸 정보</h4>

					<button type="button" class="close" data-dismiss="modal">x</button>
				</div>

				<form id="roomform">
					<div class="modal-body" id="roomli">

						<!-- <div class="row my-3">

							<label for="name" id="modallabel">방 번호</label><br /> <input
								type="text" class="form-control pl-5" value="asdasd" />
						</div>
						<div class="row my-3">
							<label for="name" id="modallabel">방 가격</label><br /> <input
								type="text" class="form-control pl-5" value="123213" />
						</div>

						<div class="row my-3">
							<label for="name" id="modallabel">방 이름</label><br /> <input
								type="text" class="form-control pl-5" value="ddddd" />
						</div>
						<div class="row my-3">
							<label for="name" id="modallabel">예약 확인</label><br /> <input
								type="text" class="form-control pl-5" id="modalName"
								value="ddddd" />
						</div> -->

					</div>
				</form>

				<div class="modal-footer">
					<button type="button" class="btn btn-success"
						onclick="roomUpdate()" id="update">update</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal"
						id="sex">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
<%@ include file="../include/footer.jsp"%>
</html>