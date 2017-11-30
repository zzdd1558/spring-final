<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 배열 또는 List, null 등에 데이터가 저장 되었는지 확인하기 위한 length() 사용을 위한 선언 -->
<!DOCTYPE html>
<html>
<head>
</head>
<script>
    // **원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
    function list(page){
        location.href="BoardListform.do?curPage="+page;
    }
</script>

<body>
	<h2>고객 관리</h2>
  <table class="table table-striped">
	<thead>
      <tr>
        <th>고객 번호</th>
        <th>고객 아이디</th>
        <th>고객 이름</th>
        <th>고객 생년월일</th>
        <th>고객 전화번호</th>
        <th>고객 이메일</th>
        <th></th>
      </tr>
    </thead>
    <c:if test="${empty list || fn:length(list) == 0}">
			<tr>
				<td colspan="7">
					<p align="center">
						<b><span style="font-size: 9pt;">등록된 방명록이 없습니다.</span></b>
					</p>
				</td>
			</tr>
		</c:if>
    <tbody>
    <c:forEach items="${requestScope.list}" var="data">
      <tr>
        <td>${data.userKey }</td>
        <td>${data.userId }</td>
        <td>${data.userName }</td>
        <td>${data.userBirth }</td>
        <td>${data.userPhone }</td>
        <td>${data.userEmail }</td>
        <td style="font-size: 10px;">
        <form action="${pageContext.request.contextPath}/admin/userInfo.do" method="get">
        <input type="hidden" name="userKey" value="${data.userKey }">
        <input type="submit" value="상세보기">
        </td>
        </form>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <div id="test"></div>
  <table>   
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
                            <span style="color: black;">${num}</span>&nbsp;
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
</table>
</body>
</html>