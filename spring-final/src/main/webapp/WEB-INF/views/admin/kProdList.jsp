<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
</head>
<script src="${pageContext.request.contextPath}/javascripts/signup.js"></script>
<script src="${pageContext.request.contextPath}/javascripts/update.js"></script>
<script src="${pageContext.request.contextPath}/utils/HttpRequest.js"></script>
<script src="${pageContext.request.contextPath}/utils/InputValidator.js"></script>
<script src="${pageContext.request.contextPath}/utils/InputKeyUpReg.js"></script>
<script type="text/javascript">
let httpRequest = new HttpRequest();
	let inputValidator = new InputValidator();
	let inputKeyUpReg = new InputKeyReg();
</script>
<!-- <!-- <script language=javascript> -->
<!-- // function sendUpdate(){ -->
<!-- // 	document.requestForm.command.value ="update"; -->
<!-- // 	document.requestForm.submit(); -->
<!-- // 	} -->

<!-- // function sendDelete(){	 -->
<!-- // 			document.requestForm.command.value ="delete"; -->
<!-- // 			document.requestForm.submit();			 -->
<!-- // }	 -->
<!-- <!-- </script> -->
<body>
			<div>
				<form name="requestForm">
					<table class="table table-striped" style="margin-top: 20px; ">
						<tbody>
							<tr>
								<th>옵션 코드</th>
								<td><input type="hidden" id="codeOfProd" name="codeOfProd" value="${requestScope.kPrd.codeOfProd }">
								${requestScope.kPrd.codeOfProd }
								<input type="hidden" id="prodIdx" name="prodIdx" value="${requestScope.kPrd.prodIdx }">
								</td>
							</tr>
							<tr>
								<th>재고</th>
								<td><input type="number" min="0" id="prodCount" name="prodCount"
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
							<input type="submit" value="수정하기" onclick="update()">
					</div>
						</form>
				</div>
</body>
</html>