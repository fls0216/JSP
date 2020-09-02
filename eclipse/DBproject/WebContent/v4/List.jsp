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
<%!
	int totalRecord = 0; // ��ü �� ����
	int numPerPage = 5; // ���������� ������ ���� ����
	int pagePerBlock = 3; // ���� �� ��������
	int totalPage = 0; // ��ü �������� ����
	int totalBlock=0; // ��ü ������ ����
	int nowPage=0; //���� ���õ� ��������ȣ
	int nowBlock=0; //���� ���õ� ������ȣ
	int beginPerpage=0;//���������� ���� �۹�ȣ
%>
<center><br>
<h2>JSP Board</h2>

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
	//����¡ ����
	totalRecord=boardlist.size();
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage);
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock) ;
	
	if(request.getParameter("nowPage")!=null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	
	if(request.getParameter("nowBlock")!=null){
		nowBlock = Integer.parseInt(request.getParameter("nowBlock"));
	}
	
	beginPerpage = nowPage * numPerPage;
	%>

<table align=center border=0 width=80%>
<tr>
	<td align=left>Total : <%=totalRecord %> Articles( 
		<font color=red>  <%=nowPage %> / <%=totalPage %> Pages </font>)
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


<%
	for(int i=beginPerpage; i<(beginPerpage+numPerPage); i++){
		if(i == totalRecord)
			break;
			
		BoardDto board = boardlist.get(i);
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
	<td align="left">Go to Page 
	<% if(nowBlock>0){ %>
		<a href="List.jsp?nowPage=<%=(nowBlock-1)*pagePerBlock%>&nowBlock=<%=nowBlock-1%>">���� <%= pagePerBlock %>�� </a>::: &nbsp; &nbsp;
	<%}
		for(int i = 0; i<pagePerBlock; i++){
			if((nowBlock * pagePerBlock)+i == totalPage){
					break;
			}
	%>		
		<a href="List.jsp?nowPage=<%=(nowBlock * pagePerBlock)+i%>&nowBlock=<%=nowBlock%>"><%=(nowBlock*pagePerBlock) +i+1%></a> &nbsp; &nbsp;
	<%
		}
		if(totalBlock>nowBlock+1){
	%>
	&nbsp; &nbsp; ::: <a href="List.jsp?nowPage=<%=(nowBlock+1)*pagePerBlock%>&nowBlock=<%=nowBlock+1%>">����<%= pagePerBlock %>�� </a>
	<%
		}
	%>
	</td>
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