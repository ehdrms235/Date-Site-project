$(document).ready(function(){
	var formObj = $("form[name='readForm']");
			
	// 수정 
	$(".update_btn").on("click", function(){
		formObj.attr("action", "/jum5/user/notice/noticeUpdate");
		formObj.attr("method", "post");
		formObj.submit();				
	})
			
	// 삭제
	$(".delete_btn").on("click", function(){
		formObj.attr("action", "/jum5/user/notice/noticeDelete");
		formObj.attr("method", "post");
		formObj.submit();
		alert('삭제되었습니다.');
	})
			
	// 취소
	$(".list_btn").on("click", function(){
				
		location.href = "/jum5/user/notice/noticeList";
	})
});