<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<% String msg = request.getParameter("Message");
		System.out.println(msg);
		
		
	%>
	<input type="hidden" id='msg' value="<%= msg %>">
	
	<script charset="utf-8">
		alert(document.getElementById("msg").value); 
		history.go(-1);
	</script>
</body>
</html>