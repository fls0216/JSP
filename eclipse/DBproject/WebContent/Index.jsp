<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.*"%>
<%@ page contentType="text/html; charset=utf-8" %> 
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h2>jdbc드라이버 테스트</h2>
<%
	Connection con = null;
	
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/world";
	con = DriverManager.getConnection(url,"root","1111");
	
	if(con!=null){
		out.println("성공!");
	}else{
		out.println("실패에");
	}
	
	con.close();
%>
<h2>JDNI를 이용한 톰캣 dbcp 연결테스트</h2>
<%
	
	Context initCtx = new InitialContext();	
	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/board");
	
	Connection conn = ds.getConnection();
	
	if(conn != null){;
		out.println("연결성공");
	}else{
		out.println("쉴패에");
	}
	
	conn.close();
%>


<h2>게시판</h2>
<ul>
	<li><a href="v1/List.jsp">게시판 버전1</a></li>
	<li><a href="v2/List.jsp">게시판 버전1 - DBCP 이용</a></li>
	<li><a href="v3/List.jsp">게시판 버전3 - beans 이용</a></li>
	<li><a href="v4/List.jsp">게시판 버전3 - 페이징과 답변기능</a></li>
</ul>
</body>
</html>