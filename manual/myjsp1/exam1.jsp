<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ page contentType="text/html; charset=euc-kr" %>
	<h1> First Exam </h1>
	<%! 
		java.util.Date today;
		java.util.Calendar cal;
	%>
	
	<%
		today = new java.util.Date();
		cal = java.util.Calendar.getInstance();
	%>
	
	오늘은 <%= today %> 입니다.<br>
	<%= cal.get(java.util.Calendar.YEAR) %>년 &nbsp;
	<%= cal.get(java.util.Calendar.MONTH) %>월 &nbsp;
	<%= cal.get(java.util.Calendar.DATE) %>일 입니다. &nbsp;
</body>
</html>
<!-- 
	class Test{
		Date today;
		Calendar cal;
		
		void main() {
			today = new Date();
			cal = Calendar.getInstance();
			
			System.out.println("오늘의 날짜 : " + today);
			...
		}
	}
-->