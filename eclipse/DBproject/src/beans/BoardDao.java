package beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import dbcp.DBConnectionMgr;


public class BoardDao {
	private Connection con; //DB 연결
	private PreparedStatement stmt; // 자료전달
	private ResultSet rs; // 결과아
	private DBConnectionMgr pool;
	
	public BoardDao() {
		try {
			pool = DBConnectionMgr.getInstance();
	
		}catch(Exception err) {
			System.out.println("BoardDao()에서 오류 :" + err);
		}
	}
	
	//List.jsp
	public List<BoardDto> getBoardList(String keyField, String keyWord) {
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		String sql = null;

		if(keyWord.equals("") || keyWord.isEmpty()){
			sql="select * from tblboard order by b_num desc";
		}else{
			sql="select * from tblboard where " + keyField + " like '%" + keyWord + "%'";
		}
		
		try {
			con = pool.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				BoardDto dto = new BoardDto();
				dto.setB_content(rs.getString("b_content"));
				dto.setB_count(rs.getInt("b_count"));
				dto.setB_depth(rs.getInt("b_depth"));
				dto.setB_email(rs.getString("b_email"));
				dto.setB_homepage(rs.getString("b_homepage"));
				dto.setB_ip(rs.getString("b_ip"));
				dto.setB_name(rs.getString("b_name"));
				dto.setB_num(rs.getInt("b_num"));
				dto.setB_pass(rs.getString("b_pass"));
				dto.setB_pos(rs.getInt("b_pos"));
				dto.setB_ragdate(rs.getString("b_regdate"));
				dto.setB_subject(rs.getString("b_subject"));
				
				list.add(dto);
			}
		}catch(Exception err){
			System.out.println("getBoardList() 오류 : " + err);
		}finally {
			
		}
		
		return list;
	}
	// PostProc.jsp
	public void insertBoard(BoardDto dto) {
		try{
				con = pool.getConnection();
				
				String sql="insert into tblboard(b_name, b_email, b_homepage, b_subject,b_content, b_pass, b_count, b_ip, b_regdate, b_pos, b_depth)"+
							"values(?,?,?,?,?,?,0,?, now(), 0, 0);";
				
				stmt = con.prepareStatement(sql);
				
				stmt.setString(1, dto.getB_name());
				stmt.setString(2, dto.getB_email());
				stmt.setString(3, dto.getB_homepage());
				stmt.setString(4, dto.getB_subject());
				stmt.setString(5, dto.getB_subject());
				stmt.setString(6, dto.getB_pass());
				stmt.setString(7, dto.getB_ip());
				
				stmt.executeUpdate();
			
			}catch(Exception err){
				System.out.println("getinsertBoard() 오류 : " + err);
			}finally{

			}
			
	}
	//Read.jsp, update.jsp
	public BoardDto getBoard(int b_num, boolean isCount) {
		BoardDto dto = new BoardDto();
		String sql = null;
		try{
			con = pool.getConnection();
			
			if(isCount == true) {
				sql = "update tblboard set b_count=b_count+1 where b_num=?";
				stmt = con.prepareStatement(sql);
				stmt.setInt(1, b_num);
				stmt.executeLargeUpdate();
			}
	
			sql="select * from tblboard where b_num=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, b_num);
			rs = stmt.executeQuery();
			
			if(rs.next()){
				dto.setB_name(rs.getString("b_name"));
				dto.setB_ragdate(rs.getString("b_regdate"));
				dto.setB_content(rs.getString("b_content"));
				dto.setB_email(rs.getString("b_email"));
				dto.setB_homepage(rs.getString("b_homepage"));
				dto.setB_subject(rs.getString("b_subject"));
				dto.setB_ip(rs.getString("b_ip"));
				dto.setB_count(rs.getInt("b_count"));
				dto.setB_pass(rs.getString("b_pass"));
			}
		}catch(Exception err){
			System.out.println("getBoard() 오류 : " + err);
		}finally{
			pool.freeConnection(con, stmt, rs);
		}
		
		return dto;
	}
	//UpdateProc.jsp
	public void updateBoard(BoardDto dto) {
		try{
			con = pool.getConnection();

			String sql="update tblboard set b_email=?, b_subject=?, b_content=? where b_num=?";	
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, dto.getB_email());
			stmt.setString(2, dto.getB_subject());
			stmt.setString(3, dto.getB_content());
			stmt.setInt(4, dto.getB_num());

			
			stmt.executeUpdate();
			
		}catch(Exception err){
			System.out.println("updateBoard() 오류 : " + err);
		}finally{
			pool.freeConnection(con, stmt, rs);
		}
	}
	
	
	//Delete.jsp
	public void deleteBoard(int b_num) {
		try{
			con = pool.getConnection();
			
			String sql = "select b_pass from tblboard where b_num=?";
			stmt =con.prepareStatement(sql);
			stmt.setInt(1, b_num);
			stmt.executeUpdate();

			}catch(Exception err){
				System.out.println("deleteBoard() 오류 : " + err);
			}finally{
				pool.freeConnection(con, stmt, rs);
			}
	}
}
	
