<%@ page contentType="text/html; charset=utf-8" isErrorPage="true"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	에러가 발생했습니다.<br>
	다시 돌아가주세요
	<hr/>
	<!-- 에러페이지로 인정이 되면 사용할 수 있음 -->
	<%= exception.getMessage() %>
</body>
</html>