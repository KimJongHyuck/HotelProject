//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {

		var page = ((range - 2) * rangeSize) + 1;

		var range = range - 1;
		var url = "/biz/board/list.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "/biz/board/list.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}
	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {

		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;	
		var url = "/biz/board/list.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
	//검색 이벤트 
		$(document).on('click', '#btnSearch', function(e){
		e.preventDefault();
		var url = "/biz/board/list.do";
		url = url + "?searchType=" + $('#searchType').val();
		url = url + "&keyword=" + $('#keyword').val();
		location.href = url;
		console.log(url);
	});	
	
	//유효성 검사