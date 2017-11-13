<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>

<script src="${pageContext.request.contextPath}/utils/HttpRequest.js"></script>
<script src="${pageContext.request.contextPath}/utils/InputValidator.js"></script>
<script src="${pageContext.request.contextPath}/utils/InputKeyUpReg.js"></script>
<script
	src="${pageContext.request.contextPath}/utils/SocialShareType.js"></script>
<!-- 리캡챠v2 사용 -->
<script src='https://www.google.com/recaptcha/api.js'></script>
<script>
	let httpRequest = new HttpRequest();
	let inputValidator = new InputValidator();
	let inputKeyUpReg = new InputKeyReg();
	let socialShareType = new SocialShareType();
</script>
<style>
/* social sns 공유하기 이미지에 마우스 hover시 pointer 주기 */
.snsShare {
	cursor: pointer;
}

/* 생년월일 div 와 관련된 css설정*/
.writeBirth {
	display: block;
}

.writeBirth .birthText {
	width: 35%;
	font-size: 14px;
	color: #999;
	float: left;
}

.writeBirth>div {
	float: left;
}

.writeBirth .hyphen {
	width: 5%;
	line-height: 40px;
	text-align: center;
	float: left;
	color: #a0a0a0;
	margin: 0 10px;
}

.writeBirth::after {
	display: block;
	clear: both;
	content: "";
}

.writeBirth .birthText .birthGender {
	width: 40px;
	height: 40px;
	text-align: center;
}

.writeTitle {
	margin-bottom: 7px;
	font-weight: 1000;
	color: #333;
}

input[type='text'], input[type='password'], input[type='number'] {
	padding: 0 5px 0 10px;
	margin: 2px;
}

#joinForm {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
}

.w3-container>ul>li {
	padding: 12px 30px;
	border-bottom: 1px solid #e5e5e5;
}

.w3-container>ul>li:after {
	display: block;
	clear: both;
	content: "";
}

ul li .questBox {
	float: left;
	width: 20%;
	line-height: 40px;
	margin-bottom: 0px;
}

ul li .answerBox {
	position: relative;
	line-height: 40px;
	float: right;
	width: 78%;
}

.answerBox {
	position: relative;
	line-height: 40px;
	float: right;
	width: 78%;
}

.answerBox .birthText {
	width: 30%;
}

#addressBtn {
	height: 40px;
	line-height: 10px;
}

.w3-round-large{
	height : 50px;
	line-height:10px;
	margin-right: 10px;
}

.serviceTitle{
	border-bottom: 1px solid #cdc0c0a6;
}

</style>
</head>
<body>
	<%@ include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<div id='joinForm'>
		<div class="w3-container serviceTitle">
			<h3>회원 가입</h3>
		</div>
		<div class="w3-container">
			<ul id='boxUl'>
				<li>
					<div class='questBox writeTitle'>이름</div>
					<div class='answerBox'>
						<input type="text" name="u_name" id="u_name" placeholder="이름">
					</div>
				</li>
				<li>
					<div class='questBox writeTitle'>아이디</div>
					<div class='answerBox'>
						<input type="text" name="u_id" id="u_id" placeholder="아이디">
						<span style='font-size: 14px; color: gray'> 숫자 , 대·소문자 ,
							특수문자( _- 만 사용가능)를 포함한 6 ~ 20자리의 아이디 </span>
					</div>
				</li>
				<li>
					<div class='questBox writeTitle'>비밀번호</div>
					<div class='answerBox'>
						<input type="text" name="u_password" id="u_password"
							placeholder="비밀번호"> <span
							style='font-size: 14px; color: gray'> 숫자 , 대·소문자 , 특수문자를
							포함한 8~16자리의 비밀번호 </span>
					</div>
				</li>
				<li>
					<div class='questBox writeTitle'>비밀번호 확인</div>
					<div class='answerBox'>
						<input type="text" name="u_password_confirm"
							id="u_password_confirm" placeholder="비밀번호 확인"> <span></span>
					</div>
				</li>
				<li>
					<div class='questBox writeTitle'>생년월일</div>
					<div class='writeBirth'>
						<div class='answerBox'>
							<div class='birthText'>
								<input type=text maxlength="6" placeholder="예시) 930925 "
									id='u_birth_front'>
							</div>
							<div class='hyphen'>-</div>
							<div class='birthText'>
								<input type="text" maxlength="1" class='birthGender'
									id='u_birth_gender'> * * * * * *
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class='questBox writeTitle'>휴대폰번호</div>
					<div class='answerBox'>
						<input type="text" name="u_phone_number" id="u_phone_number"
							placeholder="하이픈(-) 제외한 숫자만입력가능" maxlength="11">
					</div>
				</li>
				<li>
					<div class='questBox writeTitle'>이메일</div>
					<div class='answerBox'>
						<input type="text" name="u_email" id="u_email"
							placeholder="이메일 주소"> <span></span>
					</div>
				</li>
				<li>
					<div class='questBox writeTitle'>우편번호</div>
					<div class='answerBox'>
						<input type="text" name="u_address" id="u_address_zip_no"
							placeholder="우편번호 5자리" readonly="readonly"> <input
							type="text" name="u_address" id="u_address_part" class='subAddr'
							placeholder="도로명 주소" readonly="readonly"> <input
							type="text" name="u_address" id="u_address_detail"
							class='subAddr' placeholder="상세 주소 "> <input
							type="hidden" name="u_address_full" id="u_address_full" value=''>


						<button id='addressBtn' onclick="addressPopup();">우편번호 조회</button>
					</div>
				</li>

				<li>
					<div class='answerBox'>
						<div class="g-recaptcha"
							data-sitekey="6Le_WjcUAAAAACFZKaslkmpP5-Jcfl9H88AK6xhQ"></div>
					</div>
				</li>

				<li>
					<div class='answerBox w3-center' >
						<button type="button" class="w3-button w3-white w3-border w3-round-large">가  입</button>
						<button type="button" class="w3-button w3-white w3-border w3-round-large">취  소</button>
					</div>
				</li>
			</ul>
		</div>
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