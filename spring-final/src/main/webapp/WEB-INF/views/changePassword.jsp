<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- //header -->
	
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8 modal_body_left modal_body_left1"
				style="border-right: 0px; padding-right: 3em; margin : 5em 0;" >
				<div style="display: block">
					<div class="facts">
						<div class="register">
							<form id="changePasswordForm">
								<input type="hidden" name='token' value='${token}' /> 
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
								<input type="password" id='changePassword' name='changePassword'  placeholder="변경할 비밀번호"/>
								<div>숫자 ,대·소문자 , 특수문자를 포함한 8~16자리의 비밀번호만 사용가능합니다.</div> 
								<input type="password" id='changePasswordConfirm' name='changePasswordConfirm' placeholder="변경할 비밀번호  확인"/>
								<div></div>
								<input type="button" id="changePasswordBtn" value="변경하기" />
								<input type="button" id="changePasswordClose" value="닫기" />
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	
	<script>
		let changePasswordForm = document.getElementById('changePasswordForm');
		let changePassword = document.getElementById('changePassword');
		let changePasswordConfirm = document.getElementById('changePasswordConfirm');
		let changePasswordBtn = document.getElementById('changePasswordBtn');
		let changePasswordClose = document.getElementById('changePasswordClose');
		
		const changePasswordMsg = {
		    /* 비밀번호 관련 */
		    emptyPassword: ' 비밀번호를 입력해주세요. ',
		    validPassword: ' 숫자 ,대·소문자 , 특수문자를 포함한 8~16자리의 비밀번호만 사용가능합니다. ',
		    possiblePassword: '사용 가능한 비밀번호 입니다 ',
		    notMatchPassword: ' 비밀번호가 일치하지 않습니다. ',
		    matchPassword: ' 비밀번호가 일치합니다 ',
		}
		changePasswordBtn.addEventListener('click', function() {
			
			let formBoolean = true;
			
			if (!inputValidator.isSet(changePassword.value)) {
				checkContentFunc(changePassword, changePasswordMsg.emptyPassword);
		        formBoolean = false;
			}else if (!inputValidator.isValidPassword(changePassword.value)) {
		        checkContentFunc(changePassword, changePasswordMsg.validPassword);
		        formBoolean = false;
		    }
		    

			if (!inputValidator.isSet(changePasswordConfirm.value)) {
				checkContentFunc(changePasswordConfirm, changePasswordMsg.emptyPassword);
		        formBoolean = false;
			}else if (!inputValidator.isValidPassword(changePasswordConfirm.value)) {
		        checkContentFunc(changePasswordConfirm, changePasswordMsg.validPassword);
		        formBoolean = false;
		    } else if (!inputValidator.isValidPasswordSame(changePassword , changePasswordConfirm)){
		        checkContentFunc(changePasswordConfirm, changePasswordMsg.notMatchPassword);
		        formBoolean = false;
		    }
			
			if(formBoolean){
				changePasswordForm.setAttribute('method', 'POST');
				changePasswordForm.setAttribute('action', httpRequest.getContextPath() + '/auth/changePassword.do');
				changePasswordForm.submit();
		    }
		});
		

		/* password 일치여부 확인 및 초기화 */
		changePassword.addEventListener('blur', function () {
			changePasswordConfirm.value = '';
		    let inputPassword = changePassword.value;
		    let msg = '';
		    let color = '';
		    if (!inputValidator.isSet(inputPassword)) {
		        msg = changePasswordMsg.emptyPassword;
		    } else if (!inputValidator.isValidPassword(inputPassword)) {
		        msg = changePasswordMsg.validPassword;
		    } else {
		        msg = changePasswordMsg.possiblePassword;
		        color = checkColor.green;
		    }
		    checkContentFunc(changePassword, msg, color);
		});

		/* 비밀번호 확인에 대한 1차 유효성 검사 부분 */
		changePasswordConfirm.addEventListener('blur', function () {
		    let inputPasswordConfirm = changePasswordConfirm.value;
		    let msg = '';
		    let color = '';
		    if (!inputValidator.isSet(inputPasswordConfirm)) {
		        msg = changePasswordMsg.emptyPassword;
		    } else if (!inputValidator.isValidPassword(inputPasswordConfirm)) {
		        msg = changePasswordMsg.validPassword;
		    } else if (!(changePassword.value == inputPasswordConfirm)) {
		        msg = changePasswordMsg.notMatchPassword;
		        uPassword.focus();
		    } else {
		        msg = changePasswordMsg.matchPassword;
		        color = checkColor.green;
		    }
		    checkContentFunc(changePasswordConfirm, msg, color);
		});
		
		
		changePassword.addEventListener('focus', function () {
		    focusResetValue(changePassword);
		});

		changePasswordConfirm.addEventListener('focus', function () {
		    focusResetValue(changePasswordConfirm);
		});
	</script>

	<!-- header -->
	<%@include file="/WEB-INF/include/include-footer.jspf"%>
	<!-- //header -->
</body>
</html>