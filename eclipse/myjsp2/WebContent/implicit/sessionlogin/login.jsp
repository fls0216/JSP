<%@ page contentType="text/html; charset=EUC-KR" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if("tiger".equals(id) && "1111".equals(pw)){
			session.setAttribute("id", id);
			response.sendRedirect("index.jsp");
		}
	%>
	<form action="login.jsp" method="post">
	 	���̵� : <input type="text" name="id"><br><br>
	 	�н����� : <input type="password" name="pw"><br><br>
	 	<input type="submit" value="����/">
	</form>
	
</body>
</html>