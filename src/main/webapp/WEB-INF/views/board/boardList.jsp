<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>게시판</title>
	<jsp:include page="../include/bs4.jsp" />
</head>
<body>
	<h1>게시판</h1>
	<p>여기는 게시판 이지롱</p>
	<ul class="nav nav-tabs">
		<li class="nav-item">
    		<a class="nav-link" href="${ctp }/">Home</a>
		</li>
		<li class="nav-item">
	    	<a class="nav-link" href="${ctp }/guest">방명록</a>
		</li>
		<c:if test="${sLv > 1 }">
			<li class="nav-item">
		    	<a class="nav-link active"" href="${ctp }/board/boardList">게시판</a>
			</li>
		</c:if>
		<c:if test="${sLv > 2 }">
			<li class="nav-item">
		    	<a class="nav-link" href="${ctp }/pds/pdsList">자료실</a>
			</li>
		</c:if>
		<c:if test="${!empty sMid}">
			<li class="nav-item">
	    		<a class="nav-link" href="${ctp }/member/mLogout">로그아웃</a>
	    	</li>	
		</c:if>
	</ul>
	<div class="container mt-5">
		<p>글쓰고 가시오</p>
		<a href="#" class="btn btn-warning">글쓰기</a>
		<a href="javascript:history.back()" class="btn btn-warning">돌아가기</a>
	</div>
</body>
</html>