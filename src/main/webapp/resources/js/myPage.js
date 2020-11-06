function remove() {
	console.log("remove");
		if ($("#pass").val() == "") {
			alert("비밀번호를 입력해주세요.");
			$("#pass").focus();
			return false;

		}$.ajax({
			url : "passChk",
			type : "POST",
			dataType : "json",
			data : $("#delForm").serializeArray(),
			success : function(data) {
				console.log("성공");
				if (data == 0) {
					alert("패스워드가 틀렸습니다.");
					$("#pass").empty();
					return;
				} else {
					if (confirm("회원탈퇴하시겠습니까?")) {
						$("#delForm").submit();
						$('#meModal2').modal('show');
					}

				}
			},
			errorerror : function(request, status, error) {
				var msg = "ERROR : " + request.status + "<br>"
				msg += +"내용 : " + request.responseText + "<br>" + error;
				console.log(msg);
			}
		})
	
}

function update() {
	console.log("update");
	let a = {"id" : $('#id').val(),
			"pass" : $('#pass').val(),
			"name" : $('#name').val(),
			"phone" : $('#phone').val(),
			"email" : $('#email').val()
	
	};
	console.log(a);
	if ($("#pass").val() == "") {
		alert("비밀번호를 입력해주세요.");
		$("#pass").focus();
		return false;
	}$.ajax({
		type : "post",
		url : "update",
		data: a,
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		success : function (data){
			console.log("성공");
			$('#muModal').modal('show');
		//	alert("성공")
			
		},error : function(request, status, error) {
			var msg = "ERROR : " + request.status + "<br>"
			msg += +"내용 : " + request.responseText + "<br>" + error;
			console.log(msg);
		}	
		
	})
}
