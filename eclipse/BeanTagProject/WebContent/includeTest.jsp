<%@ page contentType="text/html; charset=utf-8" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="req" class="mybean.scope.IncludeBean" scope="request"></jsp:useBean>

<!-- value = 값을 지정할 때 , param = 다른 곳에서 입력을 받을 때(생략시 디폴트값 param) -->
<jsp:setProperty property="header" name="req" param="header"/>
<jsp:setProperty property="footer" name="req" param="footer"/>

<body>

<jsp:include page="inc/header.jsp"></jsp:include>
<!-- 머리말 -->

	<form method="post">
		머리말이 들어갈 내용 : <br>
		<textarea rows="2" cols="60" name="header"></textarea>
		<br><br>
		꼬리말이 들어갈 내용 : <br>
		<textarea rows="2" cols="60" name="footer"></textarea>
		<br><br>
		<input type="submit" value="새로고침"/>
	</form>
<hr/>

<!-- 꼬리말 -->
<jsp:include page="inc/footer.jsp"></jsp:include>
</body>
</html>