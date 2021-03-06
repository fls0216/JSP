<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>

<%
	request.setCharacterEncoding("euc-kr");
	String b_num = request.getParameter("b_num");
	String name = request.getParameter("b_name");
	String email = request.getParameter("b_email");
	String subject = request.getParameter("b_subject");
	String content = request.getParameter("b_content");
	String pass = request.getParameter("b_pass");
	
	//out.println(b_num + "," + b_name + "," + b_email + "," + b_subject + "," + b_content + "," + b_content + "," + b_pass);

%>

<%		
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
		sql="update tblboard set b_email=?, b_subject=?, b_content=? where b_num=?";	
		stmt = con.prepareStatement(sql);
		
		stmt.setString(1, email);
		stmt.setString(2, subject);
		stmt.setString(3, content);
		stmt.setString(4, b_num);

		
		stmt.executeUpdate();
		response.sendRedirect("List.jsp");
	}else{
	%>
		<script>
			alert("패스워드가 틀렸습니다.")
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