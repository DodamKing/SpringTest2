<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>로그인</title>
	<%@include file="../../include/bs4.jsp" %>
</head>
<body>
	<div class="container mt-5">
		<h2>로그인</h2>
		<form method="post">
			아이디 : <input type="text" name="mid" class="form-control" value="${mid }">
			비밀번호 : <input type="password" name="pwd" class="form-control" value="${pwd }">
			<br>
			<input class="btn btn-warning" type="submit" value="로그인">
			<a href="${ctp }/user/test" class="btn btn-warning">돌아가기</a>
		</form>
	</div>
</body>
</html>