<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src='${pageContext.request.contextPath}/utils/HttpRequest.js'></script>


</head>
<body>	
	<% String msg = request.getParameter("Message");%>
	<input type="hidden" id='msg' value="<%= msg %>">
	
	<script charset="utf-8">
		let httpRequest = new HttpRequest();
		alert(document.getElementById("msg").value); 
		location.href = httpRequest.getContextPath() + "/index.jsp";
	</script>
	
</body>
</html>