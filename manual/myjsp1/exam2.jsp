<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
	<%@ page contentType="text/html; charset=euc-kr" %>
		<h1> Second Exam </h1>
		<% 
			java.util.Date today;
			java.util.Calendar cal;
			
			today = new java.util.Date();
			cal = java.util.Calendar.getInstance();
			
			out.println("������ " + today + "�Դϴ�. <br>");
		%>
	</body>
</html>
<!-- 
	class Test{
		Date today;
		Calendar cal;
		
		void main() {
			today = new Date();
			cal = Calendar.getInstance();
			
			System.out.println("������ ��¥ : " + today);
			...
		}
	}
-->