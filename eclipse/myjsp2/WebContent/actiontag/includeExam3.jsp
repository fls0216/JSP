<%@ page contentType="text/html; charset=utf-8" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>

<body>
	<h1> includeExam3.jsp</h1>
	includeExam4.jsp에 데이터 전달
	<jsp:include page="includeExam4.jsp">
		<jsp:param value="nn" name="id"/>
		<jsp:param value="london" name="addr"/>
	</jsp:include>
</body>
</html>