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

body {
	font-family: 'Noto', 'dotum', '돋움', 'verdana', 'sans-serif';
	font-size: 14px;
	color : #666;
}

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

.loginWrap {
	width : 25%;
	margin : auto;
    background-color: #ffebec;
    padding: 20px;
	
}

.loginBox {
	text-align: center;
	color : #999;
}

.txtLink {
	overflow : hidden;
	padding-top : 10px;
	height : 35px;
	border-top: 1px solid #f5f5f5;
	border-bottom: 1px solid #f5f5f5;	
}

.txtLink li {
	display: inline-block;
	height : 15px;
	line-height: 15px;
	padding-right: 10px;
	margin: auto;
	vertical-align: middle;
	text-align: center;
	border-right: 1px solid #e5e5e5;
}

.txtLink li a {
	font-size: 14px;
	font-weight: 500;
	color : #666;
}

ul, li {
	list-style: none;
}

ul {
	display: block;
}

li {
	display: list-item;
}

a {
	display: block;
	text-decoration: none;
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
					name="usrname" placeholder="Id"> <label for="psw">비밀번호입력</label>
				<input type="password" id="psw" name="psw" placeholder="Password">

				<input type="submit" value="로그인">
			</form>
				<ul class="txtLink">
					<li><a href="#">아이디 찾기</a></li>
					<li><a href="#">비밀번호 찾기</a></li>
					<li><a href="#">회원가입</a></li>
				</ul>
		</div>
		</div>

		<!-- Footer -->
		<%@ include file="/WEB-INF/include/include-footer.jspf"%>
		<!-- //Footer -->
	</div>
</body>
</html>