<%@page import="mybean.simple.MessageBean"%>
<%@ page contentType="text/html; charset=EUC-KR" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="msg" class="mybean.simple.MessageBean"/>
	<jsp:setProperty property="message" name="msg" value="JSP 어렵다아"/>
	
	ActionTag를 이용한 메시지 출력<br>
	<jsp:getProperty property="message" name="msg"/>
	
	<br><br>
	Scriptlet을 이용한 메세지 출력<br>
	
	<% 
		msg.setMessage("Java도 어렵다아아");
	%>
	<%=msg.getMessage() %>
</body>
</html>