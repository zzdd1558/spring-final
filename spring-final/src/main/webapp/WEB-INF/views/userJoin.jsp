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
<!-- 리캡챠v2 사용 -->
<script>
	let httpRequest = new HttpRequest();
	let inputValidator = new InputValidator();
	let inputKeyUpReg = new InputKeyReg();
	

	var onloadCallback = function() {
	    // Renders the HTML element with id 'example1' as a reCAPTCHA widget.
	    // The id of the reCAPTCHA widget is assigned to 'widgetId1'.
		grecaptcha.render('googleReCaptcha', {
	        'sitekey' : '6Le_WjcUAAAAACFZKaslkmpP5-Jcfl9H88AK6xhQ',
	        'theme' : 'light'
	    });
	};
	
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
	font-size: 14px;
	color: #999;
	float: left;
}

.writeBirth .birthText input{
text-align: center
}

.writeBirth>div {
	float: left;
}

.writeBirth .hyphen {
	line-height: 40px;
	text-align: center;
	float: left;
	color: #a0a0a0;
	margin-left: 7px;
}

.writeBirth::after {
	display: block;
	clear: both;
	content: "";
}

.writeBirth .birthText .birthGender {
	width: 40px;
	height: 40px;
	text-align: left;
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
	width: 50%;
	margin-left: auto;
	margin-right: auto;
}

@media only screen and (min-device-width : 481px) and (max-device-width
	: 700px) {
	#joinForm {
		width: 70%;
	}
}

@media only screen and (max-device-width : 480px) {
	#joinForm {
		width: 101%;
	}
}


#addressBtn {
	height: 40px;
	line-height: 10px;
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
	<form id="joinForm">
		<div class="w3-container serviceTitle w3-center">
			<h3>회원 가입</h3>
		</div>
		<div class="w3-margin-left">
			<ul id="boxUl" class="w3-ul" style="padding-left: 1px">
				<li>
					<div class=" writeTitle">이름</div> <input type="text" name="u_name"
					id="u_name" placeholder="이름" required>
					<span></span>
				</li>
				<li>
					<div class=" writeTitle">아이디</div> <input type="text" name="u_id"
					id="u_id" placeholder="아이디" required> <span
					style="font-size: 14px; color: gray"> 숫자 , 대·소문자 , 특수문자( _-
						만 사용가능)를 포함한 6 ~ 20자리의 아이디 </span>
				</li>
				<li>
					<div class=" writeTitle" required>비밀번호</div> <input type="text"
					name="u_password" id="u_password" placeholder="비밀번호"> <span
					style="font-size: 14px; color: gray"> 숫자 , 대·소문자 , 특수문자를 포함한
						8~16자리의 비밀번호 </span>
				</li>
				<li>
					<div class=" writeTitle" required>비밀번호 확인</div> <input type="text"
					name="u_password_confirm" id="u_password_confirm"
					placeholder="비밀번호 확인"> <span></span>
				</li>
				<li>
					<div class=" writeTitle">생년월일</div>
					<div class='writeBirth'>
						<div class='birthText'>
							<input type=text maxlength="6" name='user_birth'
								placeholder="예시) 930925 " id='u_birth_front' required>
						</div>
						<div class='hyphen'>-</div>
						<div class='birthText'>
							<input type="text" maxlength="1" name='user_gender'
								class='birthGender' id='u_birth_gender' required>  *  *  *  *  *  * 
						</div>
					</div>
				</li>
				<li>
					<div class=" writeTitle">휴대폰번호</div> <input type="text"
					name="u_phone_number" id="u_phone_number"
					placeholder="하이픈(-) 제외한 숫자만입력가능" maxlength="11" required>
				</li>
				<li>
					<div class=" writeTitle">질문과 답</div> <select name='u_question'
					id='u_question'>
						<option>테스트 질문 </option>
				</select> <input type="text" name="u_answer" id="u_answer"
					placeholder=" 정확하게 입력해주세요 " required>
				</li>

				<li>
					<div class=" writeTitle">이메일</div> <input type="text"
					name="u_email" id="u_email" placeholder="이메일 주소" required> <span
					style="font-size: 14px; color: gray">회원 승인여부를 판단할 메일이 전송되니
						정확하게 입력해주세요.</span>
				</li>
				<li>
					<div class=" writeTitle">우편번호</div> <input type="text"
					name="u_address" id="u_address_zip_no" placeholder="우편번호 5자리"
					readonly="readonly" required> <input type="text" name="u_address"
					id="u_address_part" class="subAddr" placeholder="도로명 주소"
					readonly="readonly" required> <input type="text" name="u_address"
					id="u_address_detail" class="subAddr" placeholder="상세 주소 " required>
					<button id="addressBtn" onclick="addressPopup();">우편번호 조회</button>
				</li>

				<li>
					<div id="googleReCaptcha"></div>
				</li>

				<li>
					<div class="answerBox w3-center">
						<button type="button" id='submit'
							class="w3-button w3-white w3-border w3-round-large">가 입</button>
						<button type="button" id='reset'
							class="w3-button w3-white w3-border w3-round-large">취 소</button>
					</div>
				</li>
			</ul>
		</div>
		<!-- <img src="/final/images/social/facebook_icon_color.png" alt=""
			class="snsShare" onclick="socialShareType.shareURL('facebook')">
		<img src="/final/images/social/kakaoStory.png" alt="" class="snsShare"
			onclick="socialShareType.shareURL('kakao')"> <img
			src="/final/images/social/naver_icon_green.png" alt=""
			class="snsShare" onclick="socialShareType.shareURL('naver')"> <img
			src="/final/images/social/twitter_icon.png" alt="" class="snsShare"
			onclick="socialShareType.shareURL('twitter')"> -->
	</form>

	<script src="${pageContext.request.contextPath}/javascripts/signup.js"></script>
	<script
		src="${pageContext.request.contextPath}/javascripts/addressPopup.js"></script>
	<script
		src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
		async defer></script>

	<%@ include file="/WEB-INF/include/include-footer.jspf"%>
</body>
</html>
