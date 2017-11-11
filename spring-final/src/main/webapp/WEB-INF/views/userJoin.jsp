<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>

<script src="${pageContext.request.contextPath}/utils/DateFormat.js"></script>
<script src="${pageContext.request.contextPath}/utils/HttpRequest.js"></script>
<script src="${pageContext.request.contextPath}/utils/InputValidator.js"></script>
<script src="${pageContext.request.contextPath}/utils/InputKeyUpReg.js"></script>
<script
	src="${pageContext.request.contextPath}/utils/SocialShareType.js"></script>
<!-- 리캡챠v2 사용 -->
<script src='https://www.google.com/recaptcha/api.js'></script>
<script>
	let dateFormat = new DateFormat();
	let httpRequest = new HttpRequest();
	let inputValidator = new InputValidator();
	let inputKeyUpReg = new InputKeyReg();
	let socialShareType = new SocialShareType();
</script>
<style>
.snsShare {
	cursor: pointer;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/include/include-bodyHeader.jspf"%>

	<div class="w3-container">
		<form id='signupForm'>
			<label for="u_id">아이디 : </label> <input type="text" name="u_id"
				id="u_id" placeholder="아이디"> <br> <label
				for="u_password">비밀번호 : </label> <input type="text"
				name="u_password" id="u_password" placeholder="비밀번호"> <br>
			<label for="u_password_confirm">비밀번호 확인 : </label> <input type="text"
				name="u_password_confirm" id="u_password_confirm"
				placeholder="비밀번호 확인"> <br> <label for="u_name">이름</label>
			<input type="text" name="u_name" id="u_name" placeholder="이름">

			<br> <label for="u_selectYear">생년월일 앞자리</label> <select
				name="u_selectYear" id="u_selectYear">
				<option value="">년</option>
			</select> <select name="u_selectMonth" id="u_selectMonth">
				<option value="">월</option>
			</select> <select name="u_selectDate" id="u_selectDate">
				<option value="">일</option>
			</select> - <input type="text"> ******
			
			 <br> <label for="u_phone_number">휴대폰 번호 : </label> <input
				type="text" name="u_phone_number" id="u_phone_number"
				placeholder="휴대폰 번호" maxlength="11"> <br> <label
				for="u_email"> 이메일 주소 : </label> <input type="text" name="u_email"
				id="u_email" placeholder="이메일 주소"> <br> <label for="">우편
				번호 </label> <br> <input type="text" name="u_address"
				id="u_address_zip_no" placeholder="우편번호 5자리" readonly="readonly">
			<br> <input type="text" name="u_address" id="u_address_part"
				placeholder="도로명 주소" readonly="readonly"> <br> <input
				type="text" name="u_address" id="u_address_detail"
				placeholder="상세 주소 "> <br>
			<button onclick="addressPopup();">우편번호 조회</button>
			<div class="g-recaptcha"
				data-sitekey="6Le_WjcUAAAAACFZKaslkmpP5-Jcfl9H88AK6xhQ"></div>	
		</form>






		<br> <br> <br> <br> <br>
		<hr>
		<img
			src="${pageContext.request.contextPath}/images/social/facebook_icon_color.png"
			alt="" class="snsShare"
			onclick="socialShareType.shareURL('facebook')"> <img
			src="${pageContext.request.contextPath}/images/social/kakaoStory.png"
			alt="" class="snsShare" onclick="socialShareType.shareURL('kakao')">
		<img
			src="${pageContext.request.contextPath}/images/social/naver_icon_green.png"
			alt="" class="snsShare" onclick="socialShareType.shareURL('naver')">
		<img
			src="${pageContext.request.contextPath}/images/social/twitter_icon.png"
			alt="" class="snsShare" onclick="socialShareType.shareURL('twitter')">

		<script src="${pageContext.request.contextPath}/javascripts/signup.js"></script>
		<script
			src="${pageContext.request.contextPath}/javascripts/addressPopup.js"></script>

	</div>

	<%@ include file="/WEB-INF/include/include-footer.jspf"%>
</body>
</html>