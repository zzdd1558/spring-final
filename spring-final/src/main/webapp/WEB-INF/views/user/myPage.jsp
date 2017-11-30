<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<style>
.q h3 {
	font-size: 1.5em;
	color: #212121;
	padding-left: 2em;
	position: relative;
	margin-bottom: 1em;
}

.myList table {
	border-top: 2px solid #f7a2ba;
	width: 100%;
}

.myList table th {
	line-height: 40px;
	font-size: 14px;
	color: #666;
	text-align: center;
	background: #fff;
	border-bottom: 1px solid #ccc;
}

.topProcess {
	margin: 2em 0;
	padding: 1em 0;
	border-top: 1px solid #333;
	border-bottom: 1px solid #e5e5e5;
	border-top: 1px solid #333;
}

.topProcess ul {
	margin-top: 20px;
	text-align: center;
}

.topProcess ul li {
	position: relative;
	width: 18%;
	display: inline-block;
}

.topProcess .num {
	font-family: 'Arial';
	font-size: 30px;
	font-weight: 700;
	color: #999;
}

.topProcess .glyphicon-chevron-right {
	position: absolute;
	top: 25px;
	right: 0;
	width: 12px;
	height: 20px;
	display: inline-block;
}
</style>

<%@include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- //header -->


	<!--MyPage -->
	<div class="container-fluid" style="width: 79%;">
		<div class="col-md-4 w3ls_dresses_grid_left">
			<div class="w3ls_dresses_grid_left_grid">
				<h3>Categories</h3>
				<div class="w3ls_dresses_grid_left_grid_sub">
					<div class="panel-group" id="accordion" role="tablist"
						aria-multiselectable="true">
						<div class="panel panel-default">
							<div id="collapseOne" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body panel_text">
									<ul>
										<li><a href="/final/admin/userListForm.do">개인 정보 관리</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div id="collapseOne" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body panel_text">
									<ul>
										<li><a
											href="${pageContext.request.contextPath}/order/orderList.do">주문
												배송 조회</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div id="collapseOne" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body panel_text">
									<ul>
										<li><a href="boardCon.html">나의 게시물 관리</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-8 w3ls_dresses_grid_left q">
			<h3>My beauty</h3>
			<div class="col-md-12" style="border: 1px solid black;'">
				<br> 이름: ${sessionScope.user.userName}<br> 성 :
				<c:if test="${fn:trim(sessionScope.user.userGender) eq '1'}">남성</c:if>
				<c:if test="${fn:trim(sessionScope.user.userGender) eq '2'}">여성</c:if>
				<br> 생일: ${sessionScope.user.userBirth}<br>
				전화번호:${sessionScope.user.userPhone}<br>
				주소:${sessionScope.user.userAddr}<br>
				등급:
				<c:choose>
					<c:when test="${sessionScope.user.ratingType == 'ROLE_B'}">브론즈 등급</c:when>
					<c:when test="${sessionScope.user.ratingType == 'ROLE_S'}">실버 등급</c:when>
					<c:when test="${sessionScope.user.ratingType == 'ROLE_G'}">골드 등급</c:when>
					<c:when test="${sessionScope.user.ratingType == 'ROLE_P'}">플레티넘 등급</c:when>
					<c:when test="${sessionScope.user.ratingType == 'ROLE_D'}">다이아몬드 등급</c:when>
					<c:when test="${sessionScope.user.ratingType == 'ROLE_A'}">관리자 등급</c:when>
				</c:choose><br>
				포인트:${sessionScope.user.userPoint}<br>
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@include file="/WEB-INF/include/include-footer.jspf"%>
	<!-- //footer -->
</body>
</html>
