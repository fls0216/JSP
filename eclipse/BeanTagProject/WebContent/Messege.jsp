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
	<jsp:setProperty property="message" name="msg" value="JSP ��ƴپ�"/>
	
	ActionTag�� �̿��� �޽��� ���<br>
	<jsp:getProperty property="message" name="msg"/>
	
	<br><br>
	Scriptlet�� �̿��� �޼��� ���<br>
	
	<% 
		msg.setMessage("Java�� ��ƴپƾ�");
	%>
	<%=msg.getMessage() %>
</body>
</html>