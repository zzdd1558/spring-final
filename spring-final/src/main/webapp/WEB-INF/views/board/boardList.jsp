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
    <h2>게시글 목록</h2>
    <form name="form1" method="post" action="BoardListform.do">
        <input type="submit" value="조회">
    <!-- 로그인한 사용자만 글쓰기 버튼을 활성화 -->
        <button type="button" onclick="location.href='BoardWriteForm.do'">글쓰기</button>
    </form>
    <!-- 레코드의 갯수를 출력 -->
    ${map.count}개의 게시물이 있습니다.
<%--         <c:forEach var="row" items="${map.list}"> --%>
<!--         <tr> -->
<%--             <td>${row.boardIdx}</td> --%>
<!-- <!--             ** 게시글 상세보기 페이지로 이동시 게시글 목록페이지에 있는 검색조건, 키워드, 현재페이지 값을 유지하기 위해 --> -->
<%--             <td><a href="BoardDetailListform.do?boardIdx=${row.boardIdx}&curPage=${map.boardPager.curPage}">${row.boardSubject}</a></td> --%>
<%--             <td>${row.boardUserKey}</td> --%>
<%--             <td>${row.boardDate}</td> --%>
<%--             <td>${row.boardCount}</td> --%>
<!--         </tr>     -->
<%--         </c:forEach> --%>
		 <c:forEach var="board" items="${map.list}">
                        <div class="additional_info_sub_grids">
							<div class="col-xs-2 additional_info_sub_grid_left">
								<img src="${pageContext.request.contextPath}/images/test/1.png" alt=" " class="img-responsive" />
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
<%--             <tr>
                <td>${board.boardIdx}</td>
                <td align="left">
                    <c:if test="${board.boardLev > 0}">
                        <c:forEach begin="1" end="${board.boardLev}">
                            &nbsp;&nbsp; <!--답변글일경우 글 제목 앞에 공백을 준다.-->
                        </c:forEach>
                        RE : 
                    </c:if>
                    <a href="BoardDetailListform.do?boardIdx=${board.boardIdx}&curPage=${map.boardPager.curPage}">${board.boardSubject}</a>
                </td>
                <td>
                    ${board.boardUserKey}
                    </a>
                </td>
                <td>${board.boardDate}</td>
                <td>${board.boardCount}</td>
            </tr> --%>
        </c:forEach>
<%--   <table>   
        <tr>
            <td colspan="5">
                <!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
                <c:if test="${map.boardPager.curBlock > 1}">
                    <a href="javascript:list('1')">[처음]</a>
                </c:if>
                
                <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
                <c:if test="${map.boardPager.curBlock > 1}">
                    <a href="javascript:list('${map.boardPager.prevPage}')">[이전]</a>
                </c:if>
                
                <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 -->
                <c:forEach var="num" begin="${map.boardPager.blockBegin}" end="${map.boardPager.blockEnd}">
                    <!-- **현재페이지이면 하이퍼링크 제거 -->
                    <c:choose>
                        <c:when test="${num == map.boardPager.curPage}">
                            <span style="color: red">${num}</span>&nbsp;
                        </c:when>
                        <c:otherwise>
                            <a href="javascript:list('${num}')">${num}</a>&nbsp;
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                
                <!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
                <c:if test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
                    <a href="javascript:list('${map.boardPager.nextPage}')">[다음]</a>
                </c:if>
                
                <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
                <c:if test="${map.boardPager.curPage <= map.boardPager.totPage}">
                    <a href="javascript:list('${map.boardPager.totPage}')">[끝]</a>
                </c:if>
            </td>
        </tr>
</table> --%>
<script type="text/javascript">
	console.log('${map['1']}');

</script>
</body>
</html>
