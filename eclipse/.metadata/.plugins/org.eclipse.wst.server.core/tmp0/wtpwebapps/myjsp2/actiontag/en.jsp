<%@ page contentType="text/html; charset=utf-8" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>

<body>
	<h2>welcome to our site.</h2>
	this is your data<br>
	<ul>
		<li>name : <%=request.getParameter("irum") %></li>
		<li>address: <%=request.getParameter("addr") %></li>
		<li>language: <%=request.getParameter("lang") %></li>
	</ul>
</body>
</html>