<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "beans.BoardDto, beans.BoardDao" %>

<HTML>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
	function check(){
		if(document.search.keyWord.value == ""){
			alert("�˻�� �Է��ϼ���.");
			document.search.keyWord.focus();
			return;
		}
		document.search.submit();
	}
</script>
<BODY>

<center><br>
<h2>JSP Board</h2>


<table align=center border=0 width=80%>
<tr>
	<td align=left>Total :  Articles(
		<font color=red>  1 / 10 Pages </font>)
	</td>
</tr>
</table>

<table align=center width=80% border=0 cellspacing=0 cellpadding=3>
<tr>
	<td align=center colspan=2>
		<table border=0 width=100% cellpadding=2 cellspacing=0>
			<tr align=center bgcolor=#D0D0D0 height=120%>
				<td> ��ȣ </td>
				<td> ���� </td>
				<td> �̸� </td>
				<td> ��¥ </td>
				<td> ��ȸ�� </td>
			</tr>
	<!-- �� ��� ��� -->
<jsp:useBean id="dao" class="beans.BoardDao"/>
<%		
	request.setCharacterEncoding("euc-kr");
	String keyField= request.getParameter("keyField");
	String keyWord = request.getParameter("keyWord");
	
	if(keyWord == null){
		keyField = "b_name";
		keyWord = "";
	}

	
	ArrayList<BoardDto> boardlist = (ArrayList<BoardDto>)dao.getBoardList(keyField, keyWord);
	for(BoardDto board : boardlist){
%>
	<tr>
		<td><%= board.getB_num()%></td>
		<td><a href='Read.jsp?b_num=<%=board.getB_num() %>'><%= board.getB_subject() %></a></td>
		<td><%= board.getB_name() %></td>
		<td><%= board.getB_ragdate() %></td>
		<td><%= board.getB_count() %></td>
	</tr>
<%
	}
%>
	
		</table>
	</td>
</tr>
<tr>
	<td><BR><BR></td>
</tr>
<tr>
	<td align="left">Go to Page </td>
	<td align=right>
		<a href="Post.jsp">[�۾���]</a>
		<a href="javascript:list()">[ó������]</a>
	</td>
</tr>
</table>
<BR>
<form action="List.jsp" name="search" method="post">
	<table border=0 width=527 align=center cellpadding=4 cellspacing=0>
	<tr>
		<td align=center valign=bottom>
			<select name="keyField" size="1">
				<option value="b_name"> �̸�
				<option value="b_subject"> ����
				<option value="b_content"> ����
			</select>

			<input type="text" size="16" name="keyWord" >
			<input type="button" value="ã��" onClick="check()">
			<input type="hidden" name="page" value= "0">
		</td>
	</tr>
	</table>
</form>
</center>	
</BODY>
</HTML>