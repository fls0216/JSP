<%@ page contentType="text/html; charset=EUC-KR" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% if(session.getAttribute("id")!=null){
		%>
		<h1>��ſ� ���� �Ǽ���!</h1>
		<ul>
			<li><a href="index.jsp">��������</a></li>
			<li><a href="logout.jsp">�α׾ƿ�</a></li>
		</ul>
		<%
		}else{
			response.sendRedirect("login.jsp");
		} %>
</body>
</html>