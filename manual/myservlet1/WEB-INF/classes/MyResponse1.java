import javax.servlet.http.*;
import java.io.*;

// classes ���� �� ����
public class MyResponse1 extends HttpServlet{
	// ����ڰ� ������ ������ ȣ���
	protected void doGet(HttpServletRequest req, HttpServletResponse resp){
		System.out.println("someone connected >_<"+req.getRemoteAddr());
		
		resp.setCharacterEncoding("euc-kr");
		try{
			PrintWriter out = resp.getWriter();
			out.println("<html><body>");
			out.println("<h2>�ȳ��ϼ���...</h2>" + req.getRemoteAddr() + "��")
			out.println("<html><body>");
		}catch(Exception err){
			err.printStackTrace();
		}
		
	}
}