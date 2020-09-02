<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import = "beans.BoardDto, beans.BoardDao" %>

<html>
<head><title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
	function check() {
		if (document.form.b_pass.value == "") {
		alert("패스워드를 입력하세요.");
		form.b_pass.focus();
		return false;
		}
		document.form.submit();
	}
</script>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
%>

 <jsp:useBean id="dao" class="beans.BoardDao"/>
 <%
	
	int b_num = Integer.parseInt(request.getParameter("b_num"));
	String user_pass = request.getParameter("b_pass");
	
	BoardDto tmpBoard = dao.getBoard(b_num, false);
	String db_pass = tmpBoard.getB_pass();

	if(user_pass != null){
		if(user_pass.equals(db_pass)){	
			dao.deleteBoard(b_num);
			response.sendRedirect("List.jsp");
		}else{
		%>
			<script>
				alert("패스워드가 틀렸습니다.")
				history.back();
			</script>
		<%
		}	
}

%>



<center>
<br><br>
<table width=50% cellspacing=0 cellpadding=3>
 <tr>
  <td bgcolor=#dddddd height=21 align=center>
      사용자의 비밀번호를 입력해 주세요.</td>
 </tr>
</table>
<table width=70% cellspacing=0 cellpadding=2>
<form name=form method=post action="Delete.jsp" >
<input type="hidden" name="b_num" value="<%=b_num%>"/>
 <tr>
  <td align=center>
   <table align=center border=0 width=91%>
    <tr> 
     <td align=center>  
	  <input type=password name="b_pass" size=17 maxlength=15>
	 </td> 
    </tr>
    <tr>
     <td><hr size=1 color=#eeeeee></td>
    </tr>
    <tr>
     <td align=center>
	  <input type=button value="삭제완료" onClick="check()"> 
      <input type=reset value="다시쓰기"> 
      <input type=button value="뒤로" onClick="history.back()">
	 </td>
    </tr> 
   </table>
  </td>
 </tr>
</form> 
</table>
</center>
</body>
</html>
