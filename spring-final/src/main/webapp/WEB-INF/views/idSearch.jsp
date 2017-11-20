<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디찾기</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<script src="${pageContext.request.contextPath}/utils/HttpRequest.js"></script>
<script src="${pageContext.request.contextPath}/utils/InputValidator.js"></script>
<script src="${pageContext.request.contextPath}/utils/InputKeyUpReg.js"></script>
<script>
	let httpRequest = new HttpRequest();
	let inputValidator = new InputValidator();
	let inputKeyUpReg = new InputKeyReg();
</script>
<style>
/* social sns 공유하기 이미지에 마우스 hover시 pointer 주기 */
.snsShare {
	cursor: pointer;
}

.writeTitle {
	margin-bottom: 7px;
	font-weight: 1000;
	color: #333;
}

input[type='text'] {
	padding: 0 5px 0 10px;
	margin: 2px;
}

#idSearchForm {
	width: 50%;
	margin-left: auto;
	margin-right: auto;
}

@media only screen and (min-device-width : 481px) and (max-device-width
	: 700px) {
	#idSearchForm {
		width: 70%;
	}
}

@media only screen and (max-device-width : 480px) {
	#idSearchForm {
		width: 101%;
	}
}

.w3-round-large {
	height: 50px;
	line-height: 10px;
	margin-right: 10px;
}

.serviceTitle {
	border-bottom: 1px solid #cdc0c0a6;
}

</style>
</head>
<body>
	<%@ include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<div class="wrap" style="max-width: 100%; margin: 0; padding: 0;">
	<form id="idSearchForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<div class="w3-container serviceTitle w3-center">
			<h3>아이디 찾기</h3>
		</div>
		<div class="w3-margin-left">
			<ul id="boxUl" class="w3-ul" style="padding-left: 1px">
				<li>
					<div class=" writeTitle">이름</div> <input type="text"
					name="userName" id="u_name" placeholder="이름" required> <span></span>
				</li>
				<li>
					<div class=" writeTitle">이메일</div> <input type="text"
					name="userEmail" id="u_email" placeholder="이메일 주소" required>
					<span style="font-size: 14px; color: gray">회원 가입여부를 판단할 메일이니
						정확하게 입력해주세요.</span>
				</li>
				<li>
					<div class=" writeTitle">질문과 답</div> <select name='questionKey'
					id='u_question'>
						<option>테스트 질문 </option>
				</select> <input type="text" name=userAnswer id="u_answer"
					placeholder="답을 정확하게 입력해주세요" required> <span></span>
				</li>
				<li>
					<div class="answerBox w3-center">
						<button type="button" id='submitBtn'
							class="w3-button w3-white w3-border w3-round-large">찾 기</button>
						<button type="button" id='reset'
							class="w3-button w3-white w3-border w3-round-large">취 소</button>
					</div>
				</li>
			</ul>
		</div>
	</form>
		<script src="${pageContext.request.contextPath}/javascripts/idCheck.js"></script>
		<!-- footer -->
		<%@ include file="/WEB-INF/include/include-footer.jspf"%>
		<!-- //footer -->
	</div>
</body>
</html>