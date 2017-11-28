<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 목록</title>
<script>
    // **원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
    function list(page){
        location.href="BoardListform.do?curPage="+page;
    }
</script>
</head>
<body>
<c:forEach var="board" items="${map.list}">
                     <div class="additional_info_sub_grids">
				<div class="col-xs-2 additional_info_sub_grid_left">
					<c:set value="dinfree" var="msg"/>
  						 msg : ${msg} <br>
  						 <c:if test="${msg == 'dinfree'}" var="result">
  						 test result = ${result } <br>
  						 </c:if>

					<img src="${pageContext.request.contextPath}/images/men.png" alt=" " class="img-responsive" />
					<img src="${pageContext.request.contextPath}/images/men.png" alt=" " class="img-responsive" />
				</div>
				<div class="col-xs-10 additional_info_sub_grid_right">
					<div class="additional_info_sub_grid_rightl">
						<a href="single.html"> ${map['board.boardUserKey']}${board.boardUserKey}</a>
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
<script type="text/javascript">

</script>
</body>
</html>
