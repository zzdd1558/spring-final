<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- //header -->

	<div class="container">
		<div class="row">
			<div class="col-md-8 modal_body_left modal_body_left1"
				style="border-right: 1px dotted #C2C2C2; padding-right: 3em;">
				<div style="display: block">
					<div class="facts">
						<div class="register">

							<form id="IdFindForm">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="text" name="userName"
									id="IdFindUserName" placeholder="이름을 입력하세요"><span></span>
								<input type="text" name="userEmail" id="IdFindUserEmail"
									placeholder="이메일을 입력하세요"><span></span>
							</form>
							<input type="button" id='IdFindSubmitBtn' value="아이디찾기" /> <input
								type="button" id='IdFindreset' value="취소" /> >>>>>>> branch
							'master' of https://github.com/zzdd1558/spring-final.git
						</div>
					</div>
				</div>
				<div id="OR" class="hidden-xs">OR</div>
			</div>
			<div class="col-md-4 modal_body_right modal_body_right1">
				<div class="row text-center sign-with">
					<div class="col-md-12">
						<h3 class="other-nw">Sign in with</h3>
					</div>
					<div class="col-md-12">
						<ul class="social">
							<li class="social_facebook"><img
								src="/final/images/social/facebook_icon_color.png" alt=""
								class="snsShare" onclick="socialShareType.shareURL('facebook')">
							</li>
							<li class="social_kakao"><img
								src="/final/images/social/kakaoStory.png" alt=""
								class="snsShare" onclick="socialShareType.shareURL('kakao')"></li>
							<li class="social_naver"><img
								src="/final/images/social/naver_icon_green.png" alt=""
								class="snsShare" onclick="socialShareType.shareURL('naver')">
							</li>
							<li class="social_twitter"><img
								src="/final/images/social/twitter_icon.png" alt=""
								class="snsShare" onclick="socialShareType.shareURL('twitter')">
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<script src="${pageContext.request.contextPath}/javascripts/idCheck.js"></script>
	<%@include file="/WEB-INF/include/include-footer.jspf"%>
	<!-- //footer -->
</body>
</html>