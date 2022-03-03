<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>프로필 수정 페이지</title>
<link href="/jum5/resources/css/styles.css" rel="stylesheet" />
<link href="/jum5/resources/css/banner.css" rel="stylesheet" />
<link href="/jum5/resources/css/footer.css" rel="stylesheet" />
<link href="/jum5/resources/css/profileForm.css" rel="stylesheet" />
<link href="/jum5/resources/css/dropdown.css" rel="stylesheet" />
<script type="text/javascript" src="/jum5/resources/js/scripts.js"></script>
</head>
<body>
<!-- 네비게이션 바 -->
<%@include file="/WEB-INF/views/user/common/header.jsp" %>

<h3 style="color:pink;font-weight:800;margin-top:60px;">프로필 수정	</h3>

<form:form commandName="editProfile" method="POST">
	<table>
			<c:forEach var="test" items="${profileVo }">
			<tr>
				<td class="profileHead" colspan="2">Profile</td>
			</tr>
			<tr class="profileTr">
				<th class="profileTitle">닉네임</th>
				<td class="profileTitle">${test.nickname }</td>
			</tr>
			<tr class="profileTr">
				<th class="profileTitle">키</th>
				<td><form:input class="profileInput" path="height" value="${test.height}" /></td>
			</tr>
			
			<tr class="profileTr">
				<th class="profileTitle">몸무게</th>
				<th><form:input class="profileInput"  path="weight" value="${test.weight }"/></th>
			</tr>
			
			<tr class="profileTr">
				<th class="profileTitle">성격</th>
				<td><form:input class="profileInput" path="character" value="${test.character }"/></td>
			</tr>
			
			<tr class="profileTr">
				<th class="profileTitle">취미</th>
				<td><form:input class="profileInput" path="hobby" value="${test.hobby }"/></td>
			</tr>
			
			<tr class="profileTr">
				<th class="profileTitle">혈액형</th>
				<th><form:input class="profileInput" path="bloodType" value="${test.bloodType }"/></th>
			</tr>
			
			<tr class="profileTr">
				<td class="profileTitle">직업</td>
				<td><form:input class="profileInput" path="job" value="${test.job }"/></td>
			</tr>
			
			<tr class="profileTr">
				<th class="profileTitle">연봉</th>
				<td><form:input class="profileInput" path="salary" value="${test.salary }"/></td>
			</tr>
			
			<tr class="profileTr">
				<th class="profileTitle">거주지</th>
				<td><form:input class="profileInput" path="address" value="${test.address }"/></td>
			</tr>
			<tr class="profileTr">
				<th class="profileTitle">이상형</th>
				<td><form:input class="profileInput" path="idealType" value="${test.idealType }"/></td>
			</tr>
			<tr class="profileTr">
				<th class="profileTitle">나이</th>
				<td><form:input class="profileInput" path="age" value="${test.age }"/></td>
			</tr>
			<tr class="profileTr">
				<th class="profileTitle">이미지파일</th>
				<td><form:input path="imageFile" value="${test.imageFile }" /></td>
			</tr>
			
			</c:forEach>
			
</table>
<div style="margin-top:40px;margin-bottom:30px;">
<input type="submit" class="qaButton" value="수정">
</div>
</form:form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<%@include file="/WEB-INF/views/user/common/footer.jsp" %>
</body>
</html>