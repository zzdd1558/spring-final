<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    // **원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
    function list(page){
        location.href="BoardListform.do?curPage="+page;
    }
</script>
<style>
	#dropzone {
	border: 2px dotted #3292A2;
	height: 50px;
	color: #92AAB0;
	text-align: center;
	font-size: 24px;
}
</style>
<c:forEach var="board" items="${map.list}">
                     <div class="additional_info_sub_grids">
				<div class="col-xs-2 additional_info_sub_grid_left">
  						 <c:if test="${false}" >
					<img src="${pageContext.request.contextPath}/images/women.png" alt=" " class="img-circle" />
  						 </c:if>
  						 <c:if test="${true}" >
					<img src="${pageContext.request.contextPath}/images/men.png" alt=" " class="img-circle" />
  						 </c:if>
				</div>
				<div class="col-xs-10 additional_info_sub_grid_right">
					<div class="additional_info_sub_grid_rightl">
						<c:set value="userKey${board.boardUserKey}" var="boardUserKey"/>
						<a href="single.html"> ${map[boardUserKey]}</a>
						<h5>${board.boardDate}</h5>
						<p>${board.boardSubject}</p>
					</div>
					<div class="additional_info_sub_grid_rightr">
						<div class="rating">
							<div class="rating-left">
								<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
							</div>
							<div class="rating-left">
								<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
							</div>
							<div class="rating-left">
								<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
							</div>
							<div class="rating-left">
								<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
							</div>
							<div class="rating-left">
								<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
     </c:forEach>
<div class="review_grids">
	<h5>리뷰하기</h5>
	<form method="get"
		action="${pageContext.request.contextPath}/board/BoardWrite.do"
		id="board" name="board" enctype="multipart/form-data">
		<input name="boardSubject" type="hidden" value="NaN" /> <input
			name="boardUserKey" type="hidden"
			value="${sessionScope.user.userKey}" />
		<table width="700" border="3" bordercolor="lightgray" align="center">
			<tr>
				<td id="title">작성자</td>
				<td>${sessionScope.user.userName}</td>
			</tr>
			<tr>
				<td id="title">내 용</td>
				<td><textarea name="boardContent" cols="72" rows="20"></textarea>
				</td>
			</tr>
			<tr>
				<td id="title">파일첨부</td>
				<td><input type="text" name="boardFile" /></td>
			</tr>

			<tr align="center" valign="middle">
				<td colspan="5"><input type="button" onclick="write()"
					value="등록"></td>
			</tr>
		</table>
	</form>
</div>
<script type="text/javascript">
var formData = new FormData(document.getElementById('board'));

function write(){
	console.log('들어왔니?'');
	httpRequest.sendRequest(httpRequest.getContextPath()+'/board/BoardWrite.do',formData,sensMsg,'GET');
	console.log('들어왔니?'');
}
function sensMsg(){
	 if (this.readyState == 4 && this.status == 200) {
		  var resData=this.responseText;
	    	alert(resData);
	  }
}


</script>						
						
						
						
						
