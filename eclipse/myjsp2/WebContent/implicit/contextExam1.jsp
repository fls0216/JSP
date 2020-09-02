<%@ page contentType="text/html; charset=EUC-KR" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	pageContext에 값 저장<br>
	<% pageContext.setAttribute("i", 10); %>
	<!-- 다른 context에 저장하게 할 수 있다. 세션영역에 저장하기 확한할 때는 세션에서 확인해야한다.-->
	<% pageContext.setAttribute("j", 100, pageContext.SESSION_SCOPE); %>
	
	request에 값 저장<br>
	<% request.setAttribute("i", 20); %>
	
	session에 값 저장<br>
	<% session.setAttribute("i", 30); %>
	
	application에 값 저장<br>
	<% application.setAttribute("i", 40); %>
	
</body>
</html>