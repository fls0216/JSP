<%@ page contentType="text/html; charset=EUC-KR" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="mem" class="mybean.scope.Member"/>
<%--<jsp:setProperty id="mem" property="*"/> --%>

<jsp:setProperty property="mem_id" name="mem"/>
<jsp:setProperty property="mem_pw" name="mem"/>
<jsp:setProperty property="mem_name" name="mem"/>
<jsp:setProperty property="mem_email" name="mem"/>
<jsp:setProperty property="mem_tel" name="mem"/>
<jsp:setProperty property="mem_addr" name="mem"/>


	<%
		/* String id = request.getParameter("mem_id");
		String pw = request.getParameter("mem_pw");
		String name = request.getParameter("mem_name");
		String email = request.getParameter("mem_email");
		String tel = request.getParameter("mem_tel");
		String addr = request.getParameter("mem_addr");
		*/
	%>
	
	<h2>����� �Է��� �����Դϴ�.</h2>
	���̵� : <%=mem.getMem_id() %><br>
	��й�ȣ : <%=mem.getMem_pw() %><br>
	�̸� : <%=mem.getMem_name() %><br>
	�̸��� : <%=mem.getMem_email() %><br>
	��ȭ��ȣ : <%=mem.getMem_tel() %><br>
	�ּ� : <%=mem.getMem_addr() %><br>
</body>
</html>