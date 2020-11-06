<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
  	<title></title>
  	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	
	<link href='${pageContext.request.contextPath}/resources/calendar/packages/core/main.css' rel='stylesheet' />
	<link href='${pageContext.request.contextPath}/resources/calendar/packages/daygrid/main.css' rel='stylesheet' />
	<script src='${pageContext.request.contextPath}/resources/calendar/packages/core/main.js'></script>
	<script src='${pageContext.request.contextPath}/resources/calendar/packages/interaction/main.js'></script>
	<script src='${pageContext.request.contextPath}/resources/calendar/packages/list/main.js'></script>
	<script src='${pageContext.request.contextPath}/resources/calendar/packages/daygrid/main.js'></script>
	
	<script type="text/javascript">
	
	var selectRv = {};
	
	$(document).ready(function(){
	
		<!-- new modal 초기화 -->
		$('#reserve_new_modal').on('hidden.bs.modal', function (e) {
			$('#reserve_r_num').val('');
			$('#reserve_pcount').val('');
			$('#reserve_outdate').val('');
		});
		
		<!-- 오늘 날짜 구하기 -->
		function getToday(){
			var today = new Date();
			var year = today.getFullYear();
			var month = today.getMonth() + 1;
			var date = today.getDate();
			var full_today = year+"-"+month+"-"+date;
			
			return full_today;
		}
		
		<!-- date format-->
		function FormatDate(date){
			var f_date = String(date);
			f_date = f_date.slice(0,4) + "-" + f_date.slice(4,6) +"-" + f_date.slice(6);
			return f_date;
		}
		
		<!-- make calendar -->
		function makeCalendar(rvlist){
			var rv_data = new Array();
			var calendar1 = document.getElementById('calendar');
			calendar = new FullCalendar.Calendar(calendar1,{
				plugins:['interaction','dayGrid','list'],
				header:{
					left:'prev,next, today',
					center:'title',
					right:'dayGridMonth'
				},
				locale:"ko",
				editable: true,
				navLinks:true,
				businessHours:true,
				eventLimit:true,
				editable:false,
				events:[],
				eventClick:function(info){
					var rvnum = parseInt(info.event.title);
					$('#reserve_function_modal').modal("show");
					var form={rvnum:rvnum};	
					console.log(form);
					$.ajax({
						url:"rv_read.do",
						data:form,
						type:"post",
						success:function(data){
							
							var rvnum_select = data.rvnum;
							var mnum_select = data.mnum;
							var rnum_select = data.rnum;
							var rvpcount_select = data.rvpcount;
							var rvdate_select = data.rvdate;
							var rvindate_select = data.rvindate;
							var rvoutdate_select = data.rvoutdate;
							
							$("#reserve_rvnum_select").val(rvnum_select);
							$("#reserve_mnum_select").val(mnum_select);
							$("#reserve_rnum_select").val(rnum_select);
							$("#reserve_pcount_select").val(rvpcount_select);
							$("#reserve_date_select").val(rvdate_select);
							$("#reserve_indate_select").val(rvindate_select);
							$("#reserve_outdate_select").val(rvoutdate_select);							
						},
						error:function(request, status, error){
							console.log(request.status);
							console.log(request.responseText);
							console.log(error);
							//alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						}
					});
				},
			});
			
			<!--add event -->
			for(var i=0;i<rvlist.length;i++){
				var rvnum = rvlist[i].rvnum;
				var rvdate = rvlist[i].rvdate;
				var rvindate = rvlist[i].rvindate;
				var rvoutdate = rvlist[i].rvoutdate;
				var rvpcount = rvlist[i].rvpcount;
				var rnum = rvlist[i].rnum;
				var mnum = rvlist[i].mnum;
				calendar.addEvent( {
					'title':rvnum, 
					'start':rvindate, 
					'end':rvoutdate,
					'rvnum':rvnum,
					'rvdate':rvdate,
					'rvindate':rvindate,
					'rvoutdate':rvoutdate,
					'rvpcount':rvpcount,
					'rnum':rnum,
					'mnum':mnum
				});
				rv_data.push(rvlist[i]);
			}
			calendar.render();
			
			calendar.on('dateClick', function(info) {
				document.getElementById("reserve_date").value = getToday();
				document.getElementById("reserve_indate").value = info.dateStr;
				
				
				var room_list = new Array();
				<c:forEach var="row" items="${rmlist}">
					var json = new Object();
					json.rnum = "${row.r_num}";
					json.rprice = "${row.r_price}";
					json.rname = "${row.r_name}";
					json.rcheck = "${row.r_check}";
					room_list.push(json);
				</c:forEach>
				
				readRoom(room_list);
				
				
				$('#reserve_new_modal').modal();
			});
			
			/* $("#calendar").fullCalendar({

				eventAfterRender:function(event,element,view){
					console.log("eventAfter");
					//element.css("background-color", "#FFB347");
				}
			}); */
			
		}
		
		function readRoom(room_list){
			<!--select box 초기화 -->
			$("#reserve_r_num").empty();
			for(var i=0;i<room_list.length;i++){
				var option = $("<option>"+room_list[i].rnum+"</option>");
				$("#reserve_r_num").append(option);
			}
		}
		
		<!--db to json -->
		var reserve_list = new Array();
		<c:forEach var="row" items="${rvlist}">
			var json = new Object();
			json.rvnum = "${row.rv_num}";
			json.rvdate =  "${row.rv_date}";
			json.rvindate =  "${row.rv_indate}";
			json.rvoutdate =  "${row.rv_outdate}";
			json.rvpcount = "${row.rv_pcount}";
			json.rnum = "${row.r_num}";
			json.mnum = "${row.m_num}";
			reserve_list.push(json);
		</c:forEach>
		
		makeCalendar(reserve_list);
	});
	
	$('.btn').click(function () {
	    $(this).toggleClass("click");
	    console.log("click")
	    $('.sidebar').toggleClass("show");
	    $('.content').toggleClass("move");
	  });

	  $('.feat-btn').click(function () {
	    $('nav ul .feat-show').toggleClass("show");
	    $('nav ul .first').toggleClass("rotate");
	  });
	  $('.serv-btn').click(function () {
	    $('nav ul .serv-show').toggleClass("show1");
	    $('nav ul .second').toggleClass("rotate");
	  });
	  $('nav ul li').click(function () {
	    $(this).addClass("active").siblings().removeClass("active");
	  });
	  /* modal event */
	  $('#reserve_submit').click(function(){
		var reserve_date = document.getElementById("reserve_date").value;  
		var reserve_r_num = document.getElementById("reserve_r_num").value;  
		var reserve_m_num = document.getElementById("reserve_m_num").value;
		var reserve_pcount = document.getElementById("reserve_pcount").value;
		var reserve_indate = document.getElementById("reserve_indate").value;
		var reserve_outdate = document.getElementById("reserve_outdate").value;
		calendar.addEvent( {'title':reserve_r_num, 'start':reserve_indate, 'end':reserve_outdate});
		
		/* modal close */
		$('#reserve_new_modal').modal("hide");
	  });
	  
	  <!--Reserve Update-->
	  function update_reserve(){
		  var form = document.getElementById("reserve_function_form");
		  form.setAttribute("method","POST");
		  form.setAttribute("action","rv_update.do");
		  form.submit();
		  $('#reserve_update').modal("hide");
	  }

	  <!--Reserve Delete-->
	  function delete_reserve(){
		  var form = document.getElementById("reserve_function_form");
		  form.setAttribute("method","POST");
		  form.setAttribute("action","rv_delete.do");
		  form.submit();
		  $('#reserve_delete').modal("hide");
	  }
	  
	  
</script>
</head>

 <%@ include file="../include/header.jsp"%>

<div class="content">
  	<!-- Main -->
	<section id="main">
	
		<!-- calendar -->
		<div id="calendar" style="position:relative;">
		</div>
		
		<form action="rv_insert.do" method="post">
			<!-- The Modal -->
	  		<div class="modal" id="reserve_new_modal" name="reserve_new_modal" data-backdrop="static">
	    		<div class="modal-dialog">
	      			<div class="modal-content">
	      				<!-- Modal Header -->
				        <div class="modal-header">
				          <h4 class="modal-title">예약</h4>
				        </div>
				        <!-- Modal body -->
				        <div class="modal-body">
				        	<div class="form-group">
				        		<label for="reserve_r_num">객실 번호:</label>
							    <select class="form-control" name="r_num" id="reserve_r_num">
							    	
							   	</select>
							</div>
				        	
				        	<div class="form-group">
								<label for="reserve_date">예약 날짜:</label>
							  	<input type="text" class="form-control" name="rv_date" id="reserve_date" readonly>
							</div>
				        	
				        	<div class="form-group">
								<label for="reserve_m_num">회원 번호:</label>
							  	<input type="number" class="form-control" name="m_num" id="reserve_m_num" value="${member.m_num}" readonly>
							</div>
						
							<div class="form-group">
								<label for="reserve_pcount">인원:</label>
							  	<input type="number" class="form-control" name="rv_pcount" id="reserve_pcount" value=1 min="1" step="1">
							</div>
							
							<div class="form-group">
								<label for="reserve_indate">입실 날짜:</label>
							  	<input type="date" class="form-control" name="rv_indate" id="reserve_indate" readonly>
							</div>
				        	  
				        	<div class="form-group">
								<label for="reserve_outdate">퇴실 날짜:</label>
							  	<input type="date" class="form-control" name="rv_outdate" id="reserve_outdate">
							</div>  
				        </div>
				        <!-- Modal footer -->
				        <div class="modal-footer">
				        	<input type="submit" class="btn btn-primary"  value="확인" name="reserve_submit" id="reserve_submit">
				          	<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
				        </div>
	      			</div>
	    		</div>
	    	</div>
    	</FORM>

    	<form id="reserve_function_form">
    		<!-- The Modal -->
	  		<div class="modal" id="reserve_function_modal" name="reserve_function_modal" data-backdrop="static">
    			<div class="modal-dialog">
	      			<div class="modal-content">
	      				<!-- Modal Header -->
				        <div class="modal-header">
				          <h4 class="modal-title">예약 수정</h4>
				        </div>
				        <!-- Modal body -->
				        <div class="modal-body">
				        
				        	<div class="form-group">
								<label for="reserve_rvnum_select">예약 번호:</label>
							  	<input type="number" class="form-control" name="rv_num" id="reserve_rvnum_select" readonly>
							</div>
							
							<div class="form-group">
								<label for="reserve_mnum_select">회원 번호:</label>
							  	<input type="number" class="form-control" name="m_num" id="reserve_mnum_select" readonly>
							</div>
							
							<div class="form-group">
								<label for="reserve_rnum_select">객실 번호:</label>
							  	<input type="number" class="form-control" name="r_num" id="reserve_rnum_select" readonly>
							</div>
							
							<div class="form-group">
								<label for="reserve_pcount_select">예약 인원:</label>
							  	<input type="number" class="form-control" name="rv_pcount" id="reserve_pcount_select" min="1" step="1">
							</div>
							
							<div class="form-group">
								<label for="reserve_date_select">예약 날짜:</label>
							  	<input type="date" class="form-control" name="rv_date" id="reserve_date_select" readonly>
							</div>
							
							<div class="form-group">
								<label for="reserve_indate_select">입실 날짜:</label>
							  	<input type="date" class="form-control" name="rv_indate" id="reserve_indate_select" readonly>
							</div>
				        	  
				        	<div class="form-group">
								<label for="reserve_outdate_select">퇴실 날짜:</label>
							  	<input type="date" class="form-control" name="rv_outdate" id="reserve_outdate_select">
							</div>  
							
				        </div>
				        <div class="modal-footer">
				        	<button type="button" class="btn btn-success" name="reserve_update" id="reserve_update" onclick="update_reserve();">수정</button>
				          	<button type="button" class="btn btn-danger"  name="reserve_delete" id="reserve_delete" onclick="delete_reserve();">삭제</button>
				          	<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
				        </div>
				  	</div>
				</div>
    		</div>
    	</form>
    	

	</section>
</div>
     
     <%@ include file="../include/footer.jsp"%>
