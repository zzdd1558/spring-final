<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- header -->
<%@include file="/WEB-INF/include/include-header.jspf"%>
<!-- header -->
</head>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- header -->


	<div class="container">
		<div class="row">
			<div class="col-md-8 modal_body_left modal_body_left1"
				style="border-right: 1px dotted #C2C2C2; padding-right: 3em;">
				<div style="display: block">
					<div class="facts">
						<div class="register">
							<input type="text" value="pwFinehName" placeholder="이름">
							<input type="text" value="pwFinehId" placeholder="아이디"> <input
								type="text" value="pwFineEmail" placeholder="이메일">
							<div>질문과 답</div>
							<select name='questionKey' id='pwFindUserQuestion'>
								<option>테스트 질문 </option>
							</select> <input type="text" name=userAnswer id="pwFindUserAnswer"
								placeholder="답을 정확하게 입력해주세요" required> <span></span>
							<div>
								<input type="button" id='pwFindBtn' value="비밀번호 찾기"/> 
								<input type="button" id='pwFindReset' value = "취소"/>
							</div>
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












		<!-- footer -->
		<%@include file="/WEB-INF/include/include-footer.jspf"%>
		<!-- footer -->
</body>
</html>