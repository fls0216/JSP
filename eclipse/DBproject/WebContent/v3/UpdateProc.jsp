<%@page import="dbcp.DBConnectionMgr"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@page import = "beans.BoardDto, beans.BoardDao" %>

<%
	request.setCharacterEncoding("euc-kr");
%>

<jsp:useBean id="dao" class="beans.BoardDao"/>
<jsp:useBean id="dto" class="beans.BoardDto"/>
<jsp:setProperty name="dto" property="*"/>

<%
	String user_pass = dto.getB_pass();

	BoardDto tmpBoard = dao.getBoard(dto.getB_num(), false);
	String db_pass = tmpBoard.getB_pass();

	if(user_pass.equals(db_pass)){
		dao.updateBoard(dto);
		response.sendRedirect("List.jsp");
	}else{
%>
		<script>
			alert("패스워드가 틀렸습니다.")
			history.back();
		</script>
<%
	}
%>