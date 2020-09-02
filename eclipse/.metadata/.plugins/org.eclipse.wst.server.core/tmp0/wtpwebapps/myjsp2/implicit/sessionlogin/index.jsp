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
			<li><a href="login.jsp">로그인</a></li>
			<li><a href="shop.jsp">쇼핑몰</a></li>
		</ul>
	<%
	}else{
	%>
		<h2><%=session.getAttribute("id") %>님 환영합니다.</h2>
		<ul>
			<li><a href="logout.jsp">로그아웃</a></li>
			<li><a href="shop.jsp">쇼핑몰</a></li>
		</ul>
	<%
		}
	%>
	
</body>
</html>