<%@ page contentType="text/html; charset=EUC-KR" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	pageContext�� �� ����<br>
	<% pageContext.setAttribute("i", 10); %>
	<!-- �ٸ� context�� �����ϰ� �� �� �ִ�. ���ǿ����� �����ϱ� Ȯ���� ���� ���ǿ��� Ȯ���ؾ��Ѵ�.-->
	<% pageContext.setAttribute("j", 100, pageContext.SESSION_SCOPE); %>
	
	request�� �� ����<br>
	<% request.setAttribute("i", 20); %>
	
	session�� �� ����<br>
	<% session.setAttribute("i", 30); %>
	
	application�� �� ����<br>
	<% application.setAttribute("i", 40); %>
	
</body>
</html>