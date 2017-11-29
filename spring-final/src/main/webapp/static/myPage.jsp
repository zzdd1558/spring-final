<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
					<%@include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
					<!-- header -->
					<%@include file="/WEB-INF/include/include-bodyHeader.jspf" %>	
						<!-- //header -->
	
	<!--MyPage -->
<div class="container">
	<div style="float:left;width:45%;">
	안녕하세요<br>
	이름: ${sessionScope.user.userName}<br> 
	성 :<c:if test="${fn:trim(sessionScope.user.userGender) eq '1'}">남성</c:if>
	<c:if test="${fn:trim(sessionScope.user.userGender) eq '2'}">여성</c:if>
	<br> 
	생일: ${sessionScope.user.userBirth}<br>
	전화번호:${sessionScope.user.userPhone}<br> 
	주소:${sessionScope.user.userAddr}<br> 
	등급:${sessionScope.user.ratingType}<br> 
	포인트:${sessionScope.user.userPoint}<br> 
	
	</div>
	<div style="float:right;width:45%;">
	안녕하세요<br>
	이름: ${sessionScope.user.userName}<br> 
	성 :<c:if test="${fn:trim(sessionScope.user.userGender) eq '1'}">남성</c:if>
	<c:if test="${fn:trim(sessionScope.user.userGender) eq '2'}">여성</c:if>
	<br> 
	생일: ${sessionScope.user.userBirth}<br>
	전화번호:${sessionScope.user.userPhone}<br> 
	주소:${sessionScope.user.userAddr}<br> 
	등급:${sessionScope.user.ratingType}<br> 
	포인트:${sessionScope.user.userPoint}<br> 
	
	</div>
	
</div>	
					<!-- footer -->
					<%@include file="/WEB-INF/include/include-footer.jspf" %>
					<!-- //footer -->						
</body>
</html>
						