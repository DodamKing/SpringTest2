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
				아이디 : ${vo.mid }
			</div>
			<div class="form-group">
				비밀번호 : ${vo.pwd }
			</div>
			<div class="form-group">
				나이 : ${vo.age }
			</div>
			<br>
			<div class="text-right">
				<a href="${ctp }/user/validatorForm" class="btn btn-warning">돌아가기</a>
			</div>
		</form>
	</div>
</body>
</html>