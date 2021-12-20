<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>회원가입</title>
	<%@include file="../include/bs4.jsp" %>
</head>
<body>
	<div class="container mt-5">
		<h2>회원가입 하자</h2>
		<form method="post">
			아이디 : <input type="text" name="mid" class="form-control" >
			비밀번호 : <input type="password" name="pwd" class="form-control" >
			<input class="btn btn-warning" type="submit" value="회원가입">
			<a href="${ctp }/" class="btn btn-warning">돌아가기</a>
		</form>
	</div>
</body>
</html>