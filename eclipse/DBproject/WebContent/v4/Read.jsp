<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import = "beans.BoardDto, beans.BoardDao" %>

<html>
<head><title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<jsp:useBean id="dao" class="beans.BoardDao"/>
	<%
	request.setCharacterEncoding("euc-kr");
	String b_num = request.getParameter("b_num");

	BoardDto dto = dao.getBoard(Integer.parseInt(b_num), true);
	
		
		String name = dto.getB_name();
		String regdate = dto.getB_ragdate();
		String content = dto.getB_content();
		String email =dto.getB_email();
		String homepage = dto.getB_homepage();
		String subject =dto.getB_subject() ;
		String ip = dto.getB_ip();
		int count = dto.getB_count();

	%>

<body>
<br><br>
<table align=center width=70% border=0 cellspacing=3 cellpadding=0>
 <tr>
  <td bgcolor=9CA2EE height=25 align=center class=m>글읽기</td>
 </tr>
 <tr>
  <td colspan=2>
   <table border=0 cellpadding=3 cellspacing=0 width=100%> 
    <tr> 
	 <td align=center bgcolor=#dddddd width=10%> 이 름 </td>
	 <td bgcolor=#ffffe8><%=name%></td>
	 <td align=center bgcolor=#dddddd width=10%> 등록날짜 </td>
	 <td bgcolor=#ffffe8><%=regdate%></td>
	</tr>
    <tr>
	 <td align=center bgcolor=#dddddd width=10%> 메 일 </td>
	 <td bgcolor=#ffffe8 ><%=email%></td> 
	 <td align=center bgcolor=#dddddd width=10%> 홈페이지 </td>
	 <td bgcolor=#ffffe8 ><a href="http://<%=homepage%>" target="_new">http://<%=homepage%></a></td> 
	</tr>
    <tr> 
     <td align=center bgcolor=#dddddd> 제 목</td>
     <td bgcolor=#ffffe8 colspan=3><%=subject%></td>
   </tr>
   <tr> 
    <td colspan=4><%=content.replace("/n", "<br>")%></td>
   </tr>
   <tr>
    <td colspan=4 align=right>
     로 부터 글을 남기셨습니다./  조회수 :<%=count %>
    </td>
   </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td align=center colspan=2> 
	<hr size=1>
	[ <a href="javascript:list()">목 록</a> | 
	<a href="Update.jsp?b_num=<%=b_num%>">수 정</a> |
	<a href="Delete.jsp?b_num=<%=b_num%>">삭 제</a> ]<br>
  </td>
 </tr>
</table>
</body>
</html>
