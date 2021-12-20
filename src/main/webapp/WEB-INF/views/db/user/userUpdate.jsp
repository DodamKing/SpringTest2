<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>update</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
	<div class="container mt-5">
		<h2>수정</h2>
		<br>
		<form method="post">
			<div class="form-group">
				이름 : <input type="text" name="name" class="form-control" value="${vo.name }">
			</div>
			<div class="form-group">
				비밀번호 : <input type="password" name="pwd" class="form-control" value="${sPwd }">
			</div>
			<div class="form-group">
				나이 : <input type="text" name="age" class="form-control" value="${vo.age }">
			</div>
			<div class="form-group">
				<input type="hidden" name="idx" class="form-control" value="${vo.idx }">
			</div>
			<br>
			<div class="text-right">
				<input class="btn btn-warning" type="submit" value="수정">
				<a href="${ctp }/user/userList" class="btn btn-warning">돌아가기</a>
			</div>
		</form>
	</div>
</body>
</html>