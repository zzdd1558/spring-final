<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 배열 또는 List, null 등에 데이터가 저장 되었는지 확인하기 위한 length() 사용을 위한 선언 -->
<!DOCTYPE html>
<html>
<head>
					<%@include file="/WEB-INF/include/include-header.jspf" %>
					
</head>
<style>
.table-striped thead tr th {
	text-align : center;
	width : 400px;
	color : black;
}
</style>
<script>
function del(code) {
	var confirmflag = confirm("정말 삭제하시겠습니까?");
    if(confirmflag){
    	location.href="${pageContext.request.contextPath}/admin/productDelete.do?codeOfProd="+code;
    }else{
      	
    }
}

function check(){

var prodCount = document.getElementById('prodCount');
var prodPrice = document.getElementById('prodPrice');
var prodColor = document.getElementById('prodColor');
var prodName = document.getElementById('prodName');

 

if( prodCount.value == '' || prodCount.value == null ){
    alert( '값을 입력해주세요' );
    return false;
}
if( prodPrice.value == '' || prodPrice.value == null ){
    alert( '값을 입력해주세요' );
    return false;
}
if( prodColor.value == '' || prodColor.value == null ){
    alert( '값을 입력해주세요' );
    return false;
}
if( prodName.value == '' || prodName.value == null ){
    alert( '값을 입력해주세요' );
    return false;
}

var blank_pattern = /^\s+|\s+$/g;
if( str.value.replace( blank_pattern, '' ) == "" ){
    alert(' 공백만 입력되었습니다 ');
    return false;
}

 

//공백 금지
//var blank_pattern = /^\s+|\s+$/g;(/\s/g
var blank_pattern = /[\s]/g;
if( blank_pattern.test( str.value) == true){
    alert(' 공백은 사용할 수 없습니다. ');
    return false;
}


var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

if( special_pattern.test(str.value) == true ){
    alert('특수문자는 사용할 수 없습니다.');
    return false;
}

alert( '최종 : ' + str.value );

/*
if( str.value.search(/\W|\s/g) > -1 ){
    alert( '특수문자 또는 공백을 입력할 수 없습니다.' );
    str.focus();
    return false;
}*/

}
</script>
<script>
    // **원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
    function list(page){
        location.href="kindOfProdInfor.do?curPage="+page;
    }
</script>
<script type="text/javascript">
						function modalAjax(codeOfProd){
							httpRequest.sendRequest(httpRequest.getContextPath()+'/ajax/kPrdModal.do','codeOfProd='+codeOfProd,ViewModal,'GET');
						}
						function ViewModal(){

						    if (this.readyState == 4 && this.status == 200) {
						    	var resData=this.responseText;
						    	resData=JSON.parse(resData);
						    	console.log(resData);
									var result='<div>';
									result+='<form name="requestForm" method="GET" action="${pageContext.request.contextPath}/admin/productUpdate.do"';
									result+='<table class="table table-striped" style="margin-top: 20px; ">';
									result+='<tr>';
									result+='<th>옵션 코드</th>';
									result+='<td>';
									result+='<input type="hidden" id="codeOfProd" name="codeOfProd" value='+resData.kPrd.codeOfProd+'>'+resData.kPrd.codeOfProd+'';
									result+='<input type="hidden" id="prodIdx" name="prodIdx" value='+resData.kPrd.prodIdx+'>';
									result+='</td>';
									result+='</tr>';
									result+='<tr>';
									result+='<th>재고</th>';
									result+='<td>';
									result+='<input type="text" id="prodCount" name="prodCount" value='+resData.kPrd.prodCount+'>';
									result+='</tr>';
									result+='<tr>';
									result+='<th>가격</th>';
									result+='<td>';
									result+='<input type="text" id="prodPrice" name="prodPrice" value='+resData.kPrd.prodPrice+'>';
									result+='</td>';
									result+='</tr>';
									result+='<tr>';
									result+='<th>색상</th>';
									result+='<td>';
									result+='<input type="text" id="prodColor" name="prodColor" value='+resData.kPrd.prodColor+'>';
									result+='</td>';
									result+='</tr>';
									result+='<tr>';
									result+='<th>상품 옵션 이름</th>';
									result+='<td>';
									result+='<input type="text" id="prodName" name="prodName" value='+resData.kPrd.prodName+'>'
									result+='</td>';
									result+='</tr>';
									result+='</table>';
									result+='<div align="center">';
									result+='<input type="submit" value="수정하기" onclick="check()">';
									result+='<input type="button" value="삭제하기" onclick="del('+resData.kPrd.codeOfProd+')">';
									result+='</div>';
									result+='</form>';
									result+='</div>';
									document.getElementById('modal-view').innerHTML=result;
						    }
						}
</script>
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
										<li><a href="${pageContext.request.contextPath}/admin/productList.do">상품 관리</a></li>
									</ul>
								  </div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								  <div class="panel-body panel_text">
									<ul>
										<li><a href="#">게시판 관리</a></li>
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

				<div id="adminTable">
					<h2>상품 관리</h2>
					<table class="table table-striped" style="text-align: center; margin-top: 2em;">
						<thead>
							<tr>
								<th>옵션 코드</th>
								<th>재고</th>
								<th>가격</th>
								<th>색상</th>
								<th>옵션 이름</th>
								<th colspan="2"></th>
							</tr>
						</thead>
						<c:if test="${empty list || fn:length(list) == 0}">
							<tr>
								<td colspan="8">
									<p align="center">
										<b><span style="font-size: 9pt;">등록된 방명록이 없습니다.</span></b>
									</p>
								</td>
							</tr>
						</c:if>
						<tbody>
							<c:forEach items="${requestScope.list}" var="data">
								<tr>
									<td>${data.codeOfProd }</td>
									<td>${data.prodCount }</td>
									<td>${data.prodPrice }</td>
									<td>${data.prodColor }</td>
									<td>${data.prodName }</td>
										<td><input type=button value="보기" data-toggle="modal" data-target="#myModal" onclick="modalAjax(${data.codeOfProd })"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div>
						<table style="margin: auto;">
							<tr>
								<td colspan="5">
									<!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
										test="${map.boardPager.curBlock > 1}">
										<a href="javascript:list('1')">[처음]</a>
									</c:if> <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
									<c:if test="${map.boardPager.curBlock > 1}">
										<a href="javascript:list('${map.boardPager.prevPage}')">[이전]</a>
									</c:if> <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 --> <c:forEach var="num"
										begin="${map.boardPager.blockBegin}"
										end="${map.boardPager.blockEnd}">
										<!-- **현재페이지이면 하이퍼링크 제거 -->
										<c:choose>
											<c:when test="${num == map.boardPager.curPage}">
												<span style="color: black;">${num}</span>&nbsp;
                        					</c:when>
											<c:otherwise>
												<a href="javascript:list('${num}')">${num}</a>&nbsp;
                        					</c:otherwise>
										</c:choose>
									</c:forEach> <!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
									<c:if
										test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
										<a href="javascript:list('${map.boardPager.nextPage}')">[다음]</a>
									</c:if> <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
									<c:if
										test="${map.boardPager.curPage <= map.boardPager.totPage}">
										<a href="javascript:list('${map.boardPager.totPage}')">[끝]</a>
									</c:if>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="container">
<!-- 수정 테이블 모달 -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">상품 옵션 상세목록</h4>
        </div>
        <div class="modal-body" id="modal-view">
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
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