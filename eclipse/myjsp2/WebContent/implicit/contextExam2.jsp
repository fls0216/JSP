<%@ page contentType="text/html; charset=EUC-KR" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	pageContext�� �� ���<br>
	<%= pageContext.getAttribute("i") %><br>
	<!-- ���ø����̼ǿ� ����� ���� �������ڴ�. -->
	<%= pageContext.getAttribute("i", pageContext.APPLICATION_SCOPE) %><br>
	
	request�� �� ���<br>
	<%= request.getAttribute("i") %><br>
	
	session�� �� ���<br>
	<%= session.getAttribute("i") %><br>
	<%= session.getAttribute("j") %><br>
	
	application�� �� ���<br>
	<%= application.getAttribute("i") %><br>
	<%= application.getInitParameter("adminEmail") %>
	
</body>
</html>