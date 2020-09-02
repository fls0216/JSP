<%@ page contentType="text/html; charset=EUC-KR" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	pageContext에 값 출력<br>
	<%= pageContext.getAttribute("i") %><br>
	<!-- 어플리케이션에 저장된 값을 꺼내오겠다. -->
	<%= pageContext.getAttribute("i", pageContext.APPLICATION_SCOPE) %><br>
	
	request에 값 출력<br>
	<%= request.getAttribute("i") %><br>
	
	session에 값 출력<br>
	<%= session.getAttribute("i") %><br>
	<%= session.getAttribute("j") %><br>
	
	application에 값 출력<br>
	<%= application.getAttribute("i") %><br>
	<%= application.getInitParameter("adminEmail") %>
	
</body>
</html>