<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="<%=request.getContextPath() %>" />
<html>
<head>
	<title>Home</title>
	<jsp:include page="include/bs4.jsp" />
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<ul class="nav nav-tabs">
	<li class="nav-item">
    	<a class="nav-link active" href="${ctp }/">Home</a>
	</li>
	<li class="nav-item">
    	<a class="nav-link" href="${ctp }/user/test">수업</a>
	</li>
	<li class="nav-item">
    	<a class="nav-link" href="${ctp }/guest">방명록</a>
	</li>
	<c:if test="${sLv > 1 }">
		<li class="nav-item">
	    	<a class="nav-link" href="${ctp }/board/boardList">게시판</a>
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
	<p>아이디 : ${sMid }</p>
	<p>레벨 : ${sLv }</p>
	<div class="mt-5 d-flex justify-content-around">
		<a href="${ctp }/member/mInput" class="btn btn-warning col-2">회원가입</a>
		<a href="${ctp }/member/mLogin" class="btn btn-warning col-2">로그인</a>
	</div>
</div>
</body>
</html>
