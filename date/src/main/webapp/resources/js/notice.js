// 상세보기 페이지 이동
function noticeView(bno){
	$("#bno").val(bno);
	
	alert("hello");
	
	var f = $("#root");
	f.attr("action", "/jum5/user/notice/noticeView");
	f.attr("method", "POST");
	f.submit();
};