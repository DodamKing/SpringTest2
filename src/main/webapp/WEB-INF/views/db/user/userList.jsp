<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>userList</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
	<div class="container mt-5">
		<h2>유저리스트</h2>
		<div class="input-group">
			<input type="text" class="form-control" id="srchName">
			<div class="input-group-append">
				<button type="button" onclick="srch()" class="btn btn-warning">검색</button>
			</div>
		</div>
		<div class="text-right">
			<a href="${ctp }/user/validatorForm" class="btn btn-warning m-3">데이터검증</a>
			<a href="${ctp }/user/userInput" class="btn btn-warning m-3">등록</a>
		</div>
		<table class="table text-center">
			<tr>
				<th>고유번호</th>
				<th>이름</th>
				<th>비밀번호</th>
				<th>나이</th>
				<th colspan="2">수정/삭제</th>
			</tr>
			<c:forEach var="vo" items="${vos }">
				<tr>
					<td>${vo.idx }</td>			
					<td>${vo.name }</td>			
					<td>${vo.pwd }</td>			
					<td>${vo.age }</td>			
					<td><input type="button" value="수정" onclick="location.href='${ctp}/user/userPwdCheck?idx=${vo.idx }'" class="btn btn-warning" ></td>			
					<td><input type="button" value="삭제" onclick="delCheck(${vo.idx})" class="btn btn-warning" ></td>			
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<script>
		function delCheck(idx) {
			if (confirm("삭제하시겠습니까? ")) {
				location.href="${ctp}/user/userDelete?idx=" + idx;
			}
		}
		
		function srch() {
			location.href="${ctp}/user/userSrch?name=" + srchName.value;
		}
	</script>
</body>
</html>