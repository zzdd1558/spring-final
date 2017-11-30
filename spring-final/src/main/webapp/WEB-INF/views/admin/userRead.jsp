<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
					<%@include file="/WEB-INF/include/include-header.jspf" %>
					
</head>
<script language=javascript>
function sendUpdate(){
	document.requestForm.command.value ="update";
	document.requestForm.submit();
	}

function sendDelete(){	
			document.requestForm.command.value ="delete";
			document.requestForm.submit();			
}	
</script>
<style>
.txt {
	text-align: middle;
}
</style>
<body>
					<!-- header -->
					<%@include file="/WEB-INF/include/include-bodyHeader.jspf" %>	
						<!-- //header -->
<!-- banner -->
	<div class="banner1" id="home1">
		<div class="container">
			<h2>관리자 페이지</h2>
		</div>
	</div>
<!-- //banner -->

<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="${pageContext.request.contextPath}/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>Dresses</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumbs -->

<!-- dresses -->
	<div class="dresses">
		<div class="container">
			<div class="w3ls_dresses_grids">
				<div class="col-md-4 w3ls_dresses_grid_left">
					<div class="w3ls_dresses_grid_left_grid">
						<h3>Categories</h3>
						<div class="w3ls_dresses_grid_left_grid_sub">
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							  <div class="panel panel-default">
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								  <div class="panel-body panel_text">
									<ul>
										<li><a href="${pageContext.request.contextPath}/admin/userListForm.do">고객 관리</a></li>
									</ul>
								  </div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								  <div class="panel-body panel_text">
									<ul>
										<li><a href="productCon.html">상품 관리</a></li>
									</ul>
								  </div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								  <div class="panel-body panel_text">
									<ul>
										<li><a href="boardCon.html">게시판 관리</a></li>
									</ul>
								  </div>
								</div>
							  </div>
							  </div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-8 w3ls_dresses_grid_right">
				<h2>고객 관리</h2>
				<div>
				<form name="requestForm" method=GET action="${pageContext.request.contextPath}/admin/updateAndDelete.do">
					<table class="table table-striped" style="margin-top: 20px; ">
						<tbody>
							<tr>
								<th>고객 번호</th>
								<td><input type="text" id="userKey" name="userKey" readonly
									value="${requestScope.user.userKey }"></td>
							</tr>
							<tr>
								<th>고객 아이디</th>
								<td><input type="text" name="userId" readonly
									value="${requestScope.user.userId }"></td>
							</tr>
							<tr>
								<th>고객 비밀번호</th>
								<td><input type="text" name="userPassword" readonly
									value="${requestScope.user.userPassword }"></td>
							</tr>
							<tr>
								<th>고객 이름</th>
								<td><input type="text" name="userName" readonly
									value="${requestScope.user.userName }"></td>
							</tr>
							<tr>
								<th>고객 성별</th>
								<td><input type="text" name="userGender" readonly
									value="${requestScope.user.userGender }"></td>
							</tr>
							<tr>
								<th>고객 생년월일</th>
								<td><input type="text" name="userBirth" readonly
									value="${requestScope.user.userBirth }"></td>
							</tr>
							<tr>
								<th>고객 전화번호</th>
								<td><input type="text" name="userPhone" readonly
									value="${requestScope.user.userPhone }"></td>
							</tr>
							<tr>
								<th>고객 이메일</th>
								<td><input type="text" name="userEmail" readonly
									value="${requestScope.user.userEmail }"></td>
							</tr>
							<tr>
								<th>고객 주소</th>
								<td><input type="text" name="userAddr" readonly
									value="${requestScope.user.userAddr }"></td>
							</tr>
							<tr>
								<th>고객 답변</th>
								<td><input type="text" name="userAnswer" readonly
									value="${requestScope.user.userAnswer }"></td>
							</tr>
							<tr>
								<th>고객 포인트</th>
								<td><input type="text" id="point" name="userPoint" style="border-color: orange;"
									value="${requestScope.user.userPoint }"></td>
							</tr>
							<tr>
								<th>고객 누적 포인트</th>
								<td><input type="text" id="totalPoint" name="userTotalPoint" style="border-color: orange;"
									value="${requestScope.user.userTotalPoint }"></td>
							</tr>
							<tr>
								<th>가입일자</th>
								<td><input type="text" name="userJoinDate" readonly
									value="${requestScope.user.userJoinDate }"></td>
							</tr>
							<tr>
								<th>고객 등급</th>
								<td><input type="text" id="grade" name="ratingType" style="border-color: orange;"
									value="${requestScope.user.ratingType }"></td>
							</tr>
							<tr>
								<th>질문타입</th>
								<td><input type="text" name="questionKey" readonly
									value="${requestScope.user.questionKey }"></td>
							</tr>
						</tbody>
					</table>
					<div align="right">
							<input type=hidden name="command" value="">
<!-- 							<input type=hidden name="userKey" value=""> -->
<!-- 							<input type=hidden name="userPoint" value=""> -->
<!-- 							<input type=hidden name="userTotalPoint" value=""> -->
<!-- 							<input type=hidden name="ratingType" value=""> -->
							<input type=button value="수정하기" onClick="sendUpdate()">
							<input type=button value="삭제하기" onClick="sendDelete()">
						</form>
					</div>
				</div>
			</div>
				</div>
				<div class="clearfix"> </div>
			</div>
<!-- //dresses -->
<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3agile_newsletter_left">
				<h3>Newsletter</h3>
				<p>Excepteur sint occaecat cupidatat non proident, sunt.</p>
			</div>
			<div class="col-md-6 w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
					<!-- footer -->
					<%@include file="/WEB-INF/include/include-footer.jspf" %>
					<!-- //footer -->
</body>
</html>