import javax.servlet.http.*;
import java.io.*;

// classes 폴더 내 생성
public class MyResponse1 extends HttpServlet{
	// 사용자가 접속할 때마다 호출됨
	protected void doGet(HttpServletRequest req, HttpServletResponse resp){
		System.out.println("someone connected >_<"+req.getRemoteAddr());
		
		resp.setCharacterEncoding("euc-kr");
		try{
			PrintWriter out = resp.getWriter();
			out.println("<html><body>");
			out.println("<h2>안녕하세요...</h2>" + req.getRemoteAddr() + "님")
			out.println("<html><body>");
		}catch(Exception err){
			err.printStackTrace();
		}
		
	}
}