<%@ page contentType="text/html; charset=EUC-KR" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	if(session.getAttribute("id")==null){
	%>
		<h2>welcome to my site</h2>
		<ul>
			<li><a href="login.jsp">�α���</a></li>
			<li><a href="shop.jsp">���θ�</a></li>
		</ul>
	<%
	}else{
	%>
		<h2><%=session.getAttribute("id") %>�� ȯ���մϴ�.</h2>
		<ul>
			<li><a href="logout.jsp">�α׾ƿ�</a></li>
			<li><a href="shop.jsp">���θ�</a></li>
		</ul>
	<%
		}
	%>
	
</body>
</html>