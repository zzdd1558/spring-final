<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 보여주기</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<script src="${pageContext.request.contextPath}/utils/HttpRequest.js"></script>
<script>
	let httpRequest = new HttpRequest();
</script>

<style>

	/* social sns 공유하기 이미지에 마우스 hover시 pointer 주기 */
.snsShare {
	cursor: pointer;
}
	
.contentId {
	margin : 0 auto;
}
	
.idGroup {
	width : 40%;
	margin : auto;
	border : 1px solid #e5e5e5;
}
	
.idInfo {
	padding: 40px 20px 20px;
	text-align: center;
}
	
.serviceTitle {
	text-align: center;
	padding: 60px 0 30px 0 !important;
}
	
@media only screen and (max-device-width : 413px){
	.idGroup{width :320px;}
}
	
.w3-round-large {
	height: 50px;
	line-height: 10px;
	margin-right: 10px;
}

.answerBox {
	padding-top: 10px;
	margin-right: 27px;
}

</style>
</head>
<body>
	<%@ include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<div class="wrap" style="max-width: 100%; margin: 0; padding: 0;">
	<form id="resultIdForm">
		<div class="contentId">
			<div class="w3-container serviceTitle w3-center">
				<h3>아이디 찾기</h3>
			</div>
			<div class="idGroup">
				<div class="idInfo">
					<table class="idTb" border="0" align="center">
						<tr>
							<td colspan="2" style="text-align: center;"><h3>${requestScope.user.userName}
									고객님의 ID는 아래와 같습니다.</h3></td>
						</tr>
						<tr>
							<td style="text-align: right;" width="40%"><img
								src="../images/completeIcon.png"></td>
							<td id="myId" style="text-align: left;" width="60%"><input type="hidden" name="userId"
									value="${requestScope.id}"/><h3><em>${requestScope.id}</em></h3></td>
						</tr>
					</table>
				</div>
			</div>
			<ul class="answerList">
				<li>
					<div class="answerBox w3-center">
						<button type="button" id='reset'
							class="w3-button w3-white w3-border w3-round-large">취 소</button>
						<button type="button" id='passwordBtn'
							class="w3-button w3-white w3-border w3-round-large">비밀번호
							찾기</button>
						<button type="button" id='loginBtn'
							class="w3-button w3-white w3-border w3-round-large">로그인</button>
					</div>
				</li>
			</ul>
		</div>
		</form>
		<script src="${pageContext.request.contextPath}/javascripts/idViewBtn.js"></script>
		<!-- footer -->
		<%@ include file="/WEB-INF/include/include-footer.jspf"%>
		<!-- //footer -->
	</div>
</body>
</html>