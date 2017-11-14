<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원로그인 페이지</title>
<style>
/* Style all input fields */

/* body { */
/* 	font-family: 'Noto', 'dotum', '돋움', 'verdana', 'sans-serif'; */
/* 	font-size: 14px; */
/* 	color : #666; */
/* } */
 input { 
    width: 100%; 
     padding: 12px; 
     border: 1px solid #ccc; 
     border-radius: 4px; 
     box-sizing: border-box; 
     margin-top: 6px; 
    margin-bottom: 16px; 
    font-size: 16px; 
 } 
label {
	color: #999;
}
/* Style the submit button */
input[type=submit] {
    background-color: #f54a7e;
    color: white;
    font-size: 16px;
}

/* Style the container for inputs */
.container {
	padding : 111px 0;
	
    
}
.loginlink{
	font-size: 14px;
}
.loginWrap {
	width :414px;
	margin : auto;
    background-color: #ffebec;
    padding: 20px;
	
}
@media only screen and (max-device-width : 413px){
		.loginWrap{width :320px;}
		.loginlink{font-size: 11px;}
	}
.loginBox {
	text-align: center;
	color : #999;
}

</style>
</head>
<body>
	<!-- Header -->

	<%@ include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- 전체 div 잡아서 크기 조절 -->
	<div class="wrap" style="max-width: 100%; margin: 0; padding: 0;">


		<div class="container">
			<div class="loginWrap">
			<div class="loginBox">
				<h2>로그인</h2>
			</div>
			<form action="/action_page.php">
				<label for="usrname">아이디입력</label> <input type="text" id="usrname"
					name="user_name" placeholder="Id"> <label for="psw">비밀번호입력</label>
				<input type="password" id="psw" name="user_password" placeholder="Password">

				<input type="submit" value="로그인">
			</form>
				<div class="w3-bar loginlink w3-center"  >
					<button class="w3-button">아이디찾기</button>
					<button class="w3-button">비밀번호찾기</button>
					<button class="w3-button">회원가입</button>
				</div>
		</div>
		</div>

		<!-- Footer -->
		<%@ include file="/WEB-INF/include/include-footer.jspf"%>
		<!-- //Footer -->
	</div>
</body>
</html>