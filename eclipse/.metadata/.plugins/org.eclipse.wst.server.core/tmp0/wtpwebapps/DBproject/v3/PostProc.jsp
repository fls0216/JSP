<%@ page contentType="text/html; charset=EUC-KR" %> 
<%@ page import = "beans.BoardDto, beans.BoardDao" %>

<jsp:useBean id="dao" class="beans.BoardDao"/>
<jsp:useBean id="dto" class="beans.BoardDto"/>

<%
request.setCharacterEncoding("euc-kr");
%>

<jsp:setProperty name="dto" property="*"/>

	
<%
	dao.insertBoard(dto);
%>
	
<ul>
	<li><a href= "Post.jsp"/>�۾��� �������� �̵�</li>
	<li><a href= "List.jsp"/>����Ʈ �������� �̵�</li>
</ul>
