<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" type="text/css" href="/date/resources/css/bootstrap.css" />
<script type="text/javascript">
	function searchCheck() {
		if (document.searchForm.keyword.value=="") {
			alert("검색어를 입력하세요");
			document.searchForm.keyword.focus();
			return;
		} else {
			searchForm.submit();
		}
	}
</script>
</head>
<body>
	<div>
    	<form name="searchForm" method="get" action="/date/adminQASearch?keyword=${document.searchForm.keyword.value}">
 			 <select name="searchType">
 			 	<option value="title">제목</option>
 			 	<option value="content">내용</option>
 			 	<option value="writer">작성자</option>
 			 </select>검색 : <input type="text" name="keyword" id="keyword">
 			 <span>
 			 	<button type="button" onclick="searchCheck()">검색</button>
 			 </span>   	
    	</form>
    </div>
    
    <table style="margin-top:60px; margin:auto;">
    	<c:if test="${empty searchList }">
    		<tr>
    			<th colspan="5">Q&A 목록</th>
    		</tr>
    		<tr>
    			<td colspan="5">검색 목록이 없습니다</td> 
    		</tr>
    	</c:if>
 		<c:if test="${!empty searchList }">
 			<tr>
    		<th>번호</th>
    		<th>작성자</th>
    		<th>제목</th>
    		<th>조회수</th>
    		<th>답변 상태</th>
    	</tr>
    	<c:forEach var="list" items="${searchList }">
    		<tr>
    			<td>${list.rnum }</td>
    			<td>${list.id }</td>
    			<td><a href="/date/adminQAContent?qaNum=${list.num}">${list.title }</a></td>  			
    			<td>${list.count }</td>
    			<td>${list.state }</td>
    		</tr>
    	</c:forEach>
 		</c:if>
    </table>
    
    <div>	
    	<a href="/date/qaWrite"><button type="button">작성하기</button></a>
    </div>
    
    <c:set var="list" value="${searchList}"/>
	<c:if test="${!empty list}">
	<div>
		<div>
		
		<c:if test="${page.startPage > page.pageBlock}">
			<a href="/date/adminQASearch?searchType=${type}&keyword=${keyword}&num=${page.startPage-1}">[이전]</a>
		</c:if>
		<c:forEach var="block" begin="${page.startPage}" end="${page.endPage}" step="1">
			
			
			<a href="/date/adminQASearch?searchType=${type}&keyword=${keyword}&num=${block}">${block}</a>
		</c:forEach>
	
		<c:if test="${page.endPage<page.pageCount}">
			<a href="/date/adminQASearch?searchType=${type}&keyword=${keyword}&num=${page.endPage+1}">[다음]</a>
		</c:if>
		
		</div>
	</div>
	</c:if>
</body>
</html>