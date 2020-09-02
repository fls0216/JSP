<%@page import="java.util.*, mybean.simple.*"%>
<%@ page contentType="text/html; charset=utf-8" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
 <%-- 
	<%
	Date today = new Date();
	Calendar cal = Calendar.getInstance();
	%>
	오늘은 <%= today %> 입니다.<br>
		<%=cal.get(Calendar.YEAR)%> 년&nbsp;&nbsp;
		<%=cal.get(Calendar.MONTH)+1%> 월&nbsp;&nbsp;
	<%=cal.get(Calendar.DATE)%> 일 입니다; --%>

<!--객체생성 -->
<jsp:useBean id="curDate" class="mybean.simple.CalendarBean" />
<!-- getter 메서드 호출 -->
오늘은 <jsp:getProperty property="today" name="curDate"/> <br>

<jsp:getProperty property="year" name="curDate"/>년 &nbsp;&nbsp;
<jsp:getProperty property="month" name="curDate"/>월 &nbsp;&nbsp;
<jsp:getProperty property="date" name="curDate"/>일 &nbsp;&nbsp; 입니다.

<br><br>

<jsp:setProperty property="greeting" name="curDate" value="Hello world!!!!!"/>
인사말 : <jsp:getProperty property="greeting" name="curDate"/>

<hr/>
<%
	CalendarBean cb = new CalendarBean();
	out.println(cb.getToday());
%>

</body>
</html>