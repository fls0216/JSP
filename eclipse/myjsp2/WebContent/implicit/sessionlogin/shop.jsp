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
		<h1>즐거운 쇼핑 되세요!</h1>
		<ul>
			<li><a href="index.jsp">메인으로</a></li>
			<li><a href="logout.jsp">로그아웃</a></li>
		</ul>
		<%
		}else{
			response.sendRedirect("login.jsp");
		} %>
</body>
</html>