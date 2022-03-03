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
<link href="/jum5/resources/css/metch.css" rel="stylesheet" />
<link href="/jum5/resources/css/dropdown.css" rel="stylesheet" />
<script type="text/javascript" src="/jum5/resources/js/scripts.js"></script>
</head>
<body>
<!-- 네비게이션 바 -->
<%@include file="/WEB-INF/views/user/common/header.jsp" %>

<h3 style="color:pink;font-weight:800;margin-top:60px;">이상형 리스트</h3>

<div style="margin-bottom:20px;">
<c:if test="${empty profileVo }">
	<div class="idealNot">등록된 이상형이 없습니다.</div>
</c:if>
<c:if test="${!empty profileVo }">
	<table>
		<tr>
			<th colspan="8" class="idealHead">List</th>
		</tr>
		<tr>
			<th class="metchTitle">닉네임</th>
			<th class="metchTitle"> 키 </th>
			<th class="metchTitle"> 몸무게 </th>
			<th class="metchTitle"> 성격</th>
			<th class="metchTitle"> 취미</th>
			<th class="metchTitle"> 혈액형</th>
			<th class="metchTitle"> 나이</th>
			<th class="metchTitle"> 신청 </th>
		</tr>
	<c:forEach var="profileVo" items="${profileVo }" varStatus="loop">
	<form action="/jum5/request/${profileVo.nickname}">
	<c:if test="${profileVo.nickname!=loginVo }">
		<tr class="metchTr">
			<td class="metchContent">${profileVo.nickname }</td>
			<td class="metchContent">${profileVo.height }</td>
			<td class="metchContent">${profileVo.weight }</td>
			<td class="metchContent">${profileVo.character }</td>
			<td class="metchContent">${profileVo.hobby }</td>
			<td class="metchContent">${profileVo.bloodType }</td>
			<td class="metchContent">${profileVo.age }</td>
			<td><input class="qaButton" type="submit" value="신청" ></td>
		</tr>
	</c:if>
	</form>
	</c:forEach>
</table>
</c:if>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<%@include file="/WEB-INF/views/user/common/footer.jsp" %>
</body>
</html>