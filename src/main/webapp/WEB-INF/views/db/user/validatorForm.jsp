<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>title</title>
	<jsp:include page="../../include/bs4.jsp" />
</head>
<body>
	<div class="container mt-5">
		<h2>검증 연습</h2>
		<br>
		<form method="post">
			<div class="form-group">
				아이디 : <input type="text" name="mid" class="form-control" value="${mid }">
			</div>
			<div class="form-group">
				비밀번호 : <input type="password" name="pwd" class="form-control" value="${pwd }">
			</div>
			<div class="form-group">
				나이 : <input type="text" name="age" class="form-control" value="20">
			</div>
			<br>
			<div class="text-right">
				<input class="btn btn-warning" type="submit" value="검증">
				<a href="${ctp }/user/userList" class="btn btn-warning">돌아가기</a>
			</div>
		</form>
	</div>
</body>
</html>