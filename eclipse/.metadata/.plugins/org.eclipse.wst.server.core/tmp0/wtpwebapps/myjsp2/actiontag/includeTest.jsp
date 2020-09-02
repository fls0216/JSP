<%@ page contentType="text/html; charset=utf-8" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<%
	int i = 100;
%>
<body>
	<!-- header에 들어갈 내용 -->
	<jsp:include page="inc/header.jsp"></jsp:include>
	
	<h1>Include 지시자 예제</h1>
	~~~~~~~~~~~~~~~~~~~~~~~~
	
	<!-- footer에 들어갈 내용 -->
	<%@include file="inc/footer.jsp"%>
	
</body>
</html>