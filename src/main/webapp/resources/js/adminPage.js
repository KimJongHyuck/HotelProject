$(document).ready(function() {
	$(".btn-group .btn").click(function() {
		var inputValue = $(this).find("input").val();
		if (inputValue != "all") {
			var target = $('table tr[data-status="' + inputValue + '"]');
			$("table tbody tr").not(target).hide();
			target.fadeIn();
		} else {
			$("table tbody tr").fadeIn();
		}
	});

});


$(function () {
	
		$.ajax({
			type : "get",
			url : "memberlist",
			dataType : "json",
			 cache: false,
			// data: JSON.stringify(),
			contentType : "application/json; charset=utf-8",
			success : function(data) {
				// $("#result").html(result);
				
				var list = data.datas;
				console.log("list : " + list.length);
				var str = "";
				$(list).each(function(index, obj) {
					str += "<tr>";
					str += "<td>" + obj["m_num"] + "</td>";
					str += "<td>" + obj["id"] + "</td>";
					str += "<td>" + obj["name"] + "</td>";
					str += "<td>" + obj["phone"] + "</td>";
					str += "<td>" + obj["email"] + "</td>";
					str += "<td>" + obj["regdate"] + "</td>";
					if (obj["rv_num"] > 0) {
//						str += "<td><button type='button' class='btn btn-sm manage' value=" + obj["rv_num"]
//						+ " onclick='rvlist()' id='eee'>관리</button></td>";		
					//	str += "<td>" + "<a href='javascript:rvlist("+ obj["rv_num"] +")'>" +obj["rv_num"] + "</a></td>";
						str += "<td>" + "<button type='button' class='btn btn-success'"
						+ "onclick='rvlist(" +obj["rv_num"]+ ");'>Success</button></td>";

					}
					str += "</tr>";
				});

				//console.log("str : " + str);
				$("#admindata").append(str);
			},
			error : function(request, status, error) {
				var msg = "ERROR : " + request.status + "<br>"
				msg += +"내용 : " + request.responseText + "<br>" + error;
				console.log(msg);
			}
		});
	});
	
function rvlist(rv_num) {
	$("#rvdataa").empty();
	//let rv_num = $("#eee").val();
	console.log(rv_num);
	
	$.ajax({
		type : "get",
		url : "rv_info_list?rv_num=" + rv_num,
		
		dataType : "json",
		// cache: false,
		// data: JSON.stringify(),
		contentType : "application/json;charset=utf-8",
		success : function(data) {
			// $("#result").html(result);
			console.log(data);
			var list = data.datas;

			var str = "";
			$(list).each(function(index, obj) {
				str += "<tr>";
				str += "<td>" + obj["rv_num"] + "</td>";
				str += "<td>" + obj["rv_pcount"] + "</td>";
				str += "<td>" + "<a href='javascript:roominfo("+ obj["r_num"] +")'>" +obj["r_num"] + "</a></td>";
				str += "<td>" + obj["rv_indate"] + "</td>";
				str += "<td>" + obj["rv_outdate"] + "</td>";
				str += "<td>" + obj["rv_date"] + "</td>";
				str += "</tr>";
			});
			
			console.log("str : " + str);
			$("#rvdataa").append(str);
		},
		error : function(request, status, error) {
			var msg = "ERROR : " + request.status + "<br>"
			msg += +"내용 : " + request.responseText + "<br>" + error;
			console.log(msg);
		}
	});
};

function roominfo(r_num){
	console.log("click")
	$("#roomli").empty();
	$("#myModal").modal();
	$.ajax({
		type : "get",
		url : "room_info_list?r_num=" + r_num,
		
		dataType : "json",
		// cache: false,
		// data: JSON.stringify(),
		contentType : "application/json;charset=utf-8",
		success : function(data) {
			// $("#result").html(result);
			var list = data.datas;
			console.log(list);

			var str = "";
			$(list).each(function(index, obj) {
				str += "<div class='row my-3'>";
				str += "<label for='name' id='modallabel'>방 번호</label><br>"
				str += "<input type='text' class='form-control pl-5' id ='r_num' value=" + obj["r_num"] + " readonly></div>";
				str += "<div class='row my-3'>";
				str += "<label for='name' id='modallabel'>방 이름</label><br>"
				str += "<input type='text' class='form-control pl-5' id ='r_name' value=" + obj["r_name"] + "></div>";
				str += "<div class='row my-3'>";
				str += "<label for='name' id='modallabel'>방 가격</label><br>"
				str += "<input type='text' class='form-control pl-5'id ='r_price' value=" + obj["r_price"] + "></div>"; 
				str += "<div class='row my-3'>";
				str += "<label for='name' id='modallabel'>예약확인</label><br>"
					if (obj["r_check"] == 1) {
						str += "<input type='text' class='form-control pl-5' id ='r_check' value='예약중'></div>";		
					} else {
						str += "<input type='text' class='form-control pl-5' id ='r_check' value='예약 대기 중'></div>";		
					}
				str += "</div>";

			});
			
			console.log("str : " + str);
			$("#roomli").append(str);
		},
		error : function(request, status, error) {
			var msg = "ERROR : " + request.status + "<br>"
			msg += +"내용 : " + request.responseText + "<br>" + error;
			console.log(msg);
		}
	});
}

function roomUpdate() {
//	let a = "";
//	if (('#r_check').val().equals() == 예약중) {
//		a = 1;
//	}
	let Obj = {"r_num" : $('#r_num').val(),
			"r_name" : $('#r_name').val(),
			"r_price" : $('#r_price').val(),
			"r_check" : $('#r_check').val()
			};
	console.log(Obj);
	$.ajax({
		type : "post",
		url : "room_update",
	//	data : $('form').serialize(),
	//	data : JSON.stringify(Obj),
//		data : {"r_num" : $('#r_num').val(),
//			   "r_name" : $('#r_name').val(),
//			   "r_price" : $('#r_price').val(),
//			   "r_check" : $('#r_check').val()},
		data: Obj,
	//	dataType : "json",
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		success : function (data){
			console.log("성공");
			
			
			$("#sex").click();
			
		},
		error : function(request, status, error) {
			var msg = "ERROR : " + request.status + "<br>"
			msg += +"내용 : " + request.responseText + "<br>" + error;
			console.log(msg);
		}
	
	});
};