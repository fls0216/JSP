<%@page import="dbcp.DBConnectionMgr"%>
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
	DBConnectionMgr pool = null;
	
	String sql = null, db_pass=null;
	try{
		pool = DBConnectionMgr.getInstance();	
		con = pool.getConnection();
	
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
		pool.freeConnection(con, stmt, rs);
	}
	
	%>