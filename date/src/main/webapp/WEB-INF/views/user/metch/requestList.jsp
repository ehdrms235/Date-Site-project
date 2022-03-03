<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri ="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>메인 페이지</title>
<link href="/jum5/resources/css/styles.css" rel="stylesheet" />
<link href="/jum5/resources/css/banner.css" rel="stylesheet" />
<link href="/jum5/resources/css/footer.css" rel="stylesheet" />
<link href="/jum5/resources/css/metchList.css" rel="stylesheet" />
<link href="/jum5/resources/css/dropdown.css" rel="stylesheet" />
<script type="text/javascript" src="/jum5/resources/js/scripts.js"></script>
</head>
<body>

<!-- 네비게이션 바 -->
<%@include file="/WEB-INF/views/user/common/header.jsp" %>

<h3 style="color:pink;font-weight:800;margin-top:60px;">매칭 현황</h3>

<div class="metchListWrap">
<table>
	<tr>
		<td colspan="3" class="metchingTitle">Metching</td>
	</tr>
	<tr>
		<th class="metchingWord">닉네임</th>
		<th class="metchingWord">상태</th>
		<th class="metchingWord">매칭</th>	
	</tr>
	
	<c:forEach var="requestList" items="${requestList }" varStatus="loop">
		<tr>
			<td class="metchingWord">${requestList.receiverId }</td>
			<c:choose>
				<c:when test = "${requestList.metchStatus == -1}">
					<td class="metchingWord">거절</td>
					<td class="metchingWord">신청이 거절되었습니다.</td>
				</c:when>
	
				<c:when test = "${requestList.metchStatus == 0}">
					<td class="metchingWord">대기</td>
					<td class="metchingWord">신청이 대기중입니다</td>
				</c:when>
				<c:when test = "${requestList.metchStatus ==1}">
					<td class="metchingWord">수락</td>
					<td><a onclick="window.open(this.href, '_blank', 'width=650, height=500'); return false;" href="/jum5/chat"><button class="qaButton" type="button">채팅하기</button></a>
				</c:when>
			</c:choose>
		</tr>
	</c:forEach>
</table>
<c:if test="${loginVo==null }">
	<script type="text/javascript">
		alert("로그인 후 이용가능합니다.");
		location.href="/jum5/loginForm"''
	</script>
</c:if>
<c:if test="${loginVo!=null }">
	<c:if test="${empty requestList }">
		<script type="text/javascript">
			alert("매칭 현황이 없습니다!");
			location.href="/jum5/";
		</script>
	</c:if>
</c:if>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<%@include file="/WEB-INF/views/user/common/footer.jsp" %>
</body>
</html>