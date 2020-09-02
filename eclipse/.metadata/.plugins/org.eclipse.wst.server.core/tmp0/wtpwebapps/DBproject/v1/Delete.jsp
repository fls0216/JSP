<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*" %>

<html>
<head><title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
	function check() {
		if (document.form.b_pass.value == "") {
		alert("�н����带 �Է��ϼ���.");
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
	String b_num = request.getParameter("b_num");
	String pass = request.getParameter("b_pass");
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = null, db_pass=null;
	try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/jspdb";
	con = DriverManager.getConnection(url,"root","1111");
	
	sql = "select b_pass from tblboard where b_num=?";
	stmt =con.prepareStatement(sql);
	stmt.setString(1, b_num);
	rs = stmt.executeQuery();
	
	if(rs.next()){
		db_pass = rs.getString("b_pass");
	}
	
	if(pass.equals(db_pass)){
		sql="delete from tblboard where b_num=?";	
		stmt = con.prepareStatement(sql);
		
		stmt.setString(1, b_num);

		
		stmt.executeUpdate();
		response.sendRedirect("List.jsp");
	}else{
	%>
		<script>
			alert("�н����尡 Ʋ�Ƚ��ϴ�.")
			history.back();
		</script>
	<%
	}	
	
	
	}catch(Exception err){
		err.printStackTrace();
	}finally{
		if(con != null){con.close();}
		if(stmt != null){stmt.close();}
		if(rs != null){rs.close();}
	}
	
%>


<center>
<br><br>
<table width=50% cellspacing=0 cellpadding=3>
 <tr>
  <td bgcolor=#dddddd height=21 align=center>
      ������� ��й�ȣ�� �Է��� �ּ���.</td>
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
	  <input type=button value="�����Ϸ�" onClick="check()"> 
      <input type=reset value="�ٽþ���"> 
      <input type=button value="�ڷ�" onClick="history.back()">
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