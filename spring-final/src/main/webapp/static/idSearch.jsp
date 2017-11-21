<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<%@ include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- banner -->
	<div class="banner10" id="home1">
		<div class="container">
			<h2>About Us</h2>
		</div>
	</div>
<!-- //banner -->

<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="${pageContext.request.contextPath}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>About Us</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumbs -->
	
				<form class="form-horizontal centered text-center " role="form" id="IdFindForm">
			    <div class="form-group">
			        <label for="IdFindUserName" class="col-sm-2 control-label">이름 :
			        </label>
			            <input type="email" class="form-control" id="IdFindUserName" placeholder="이름을 입력하세요"><span></span>
			    </div>
			    <div class="form-group">
			        <label for="IdFindUserEmail" class="col-sm-2 control-label">E_Mail :
			        </label>
			            <input type="email" class="form-control" id="IdFindUserEmail" placeholder="E_Mail을 입력하세요"><span></span>
			    </div>
			    <div class="form-group">
			            <button type="button" id='IdFindSubmitBtn' class="btn btn-default">아이디 찾기</button>
			            <button type="button" id='IdFindreset' class="btn btn-default">취 소</button>
			    </div>
			</form>

<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3agile_newsletter_left">
				<h3>Newsletter</h3>
				<p>Excepteur sint occaecat cupidatat non proident, sunt.</p>
			</div>
			<div class="col-md-6 w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
	
		<script src="${pageContext.request.contextPath}/javascripts/idCheck.js"></script>
		<!-- footer -->
		<%@ include file="/WEB-INF/include/include-footer.jspf"%>
		<!-- //footer -->
	</div>
</body>
</html>