<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>아이디, 비밀번호 찾기</title>
<link href="/jum5/resources/css/styles.css" rel="stylesheet" />
<link href="/jum5/resources/css/banner.css" rel="stylesheet" />
<link href="/jum5/resources/css/footer.css" rel="stylesheet" />
<link href="/jum5/resources/css/dropdown.css" rel="stylesheet" />
<script type="text/javascript" src="/jum5/resources/js/scripts.js"></script>
</head>
<body>
<!-- 네비게이션 바 -->
<%@include file="/WEB-INF/views/user/common/header.jsp" %>
아이디 / 패스워드 찾기
<p>
<input type="button" value="아이디 찾기" onclick="location.href='/jum5/idSearch'">
</p>
<p>
<input type="button" value="패스워드 찾기" onclick="location.href='/jum5/pwSearch'">
</p>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<%@include file="/WEB-INF/views/user/common/footer.jsp" %>
</body>
</html>