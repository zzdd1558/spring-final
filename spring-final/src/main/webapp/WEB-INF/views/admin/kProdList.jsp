<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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
<body>
			<div>
				<form name="requestForm" method=GET action="${pageContext.request.contextPath}/admin/productUpdateAndDelete.do">
					<table class="table table-striped" style="margin-top: 20px; ">
						<tbody>
							<tr>
								<th>옵션 코드</th>
								<td><input type="hidden" name="codeOfProd" value="${requestScope.kPrd.codeOfProd }">
								${requestScope.kPrd.codeOfProd }</td>
							</tr>
							<tr>
								<th>재고</th>
								<td><input type="text" id="prodCount" name="prodCount"
									value="${requestScope.kPrd.prodCount }"></td>
							</tr>
							<tr>
								<th>가격</th>
								<td><input type="text" id="prodPrice" name="prodPrice"
									value="${requestScope.kPrd.prodPrice }"></td>
							</tr>
							<tr>
								<th>색상</th>
								<td><input type="text" id="prodColor" name="prodColor"
									value="${requestScope.kPrd.prodColor }"></td>
							</tr>
							<tr>
								<th>상품 옵션 이름</th>
								<td><input type="text" id="prodName" name="prodName"
									value="${requestScope.kPrd.prodName }"></td>
							</tr>
						</tbody>
					</table>
					<div align="center">
							<input type=hidden name="command" value="">
							<input type=button value="수정하기" onClick="sendUpdate()">
							<input type=button value="삭제하기" onClick="sendDelete()">
					</div>
						</form>
				</div>
</body>
</html>