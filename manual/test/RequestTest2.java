package reqtest;

import javax.servlet.http.*;
import java.io.*;
import java.util.Enumeration;

// classes ���� �� ����
public class RequestTest2 extends HttpServlet{
	// ����ڰ� ������ ������ ȣ���
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		doPost(req, resp);
		
		String id = req.getParameter("ID");
		String age = req.getParameter("age");
		
		resp.setCharacterEncoding("euc-kr");
		
		PrintWriter out = null;
		try{
			out = resp.getWriter();
			out.println("<html><body>");
			out.println(id + "�� �ݰ����ϴ�.<br>");
			out.println("����� ���̴� " + age + "�Դϴ�.");
			out.println("</body></html>");
		}catch(Exception err){
			err.printStackTrace();
		}finally{
			out.close();
		}
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException{
		/*
		req.setCharacterEncoding("euc-kr");
		String[] singers= req.getParameterValues("singer");
		String[] foods= req.getParameterValues("food");
		String[] citys= req.getParameterValues("city");
		
		resp.setCharacterEncoding("euc-kr");
		
		PrintWriter out = null;
		try{
			out = resp.getWriter();
			out.println("<html><body>");
			out.println("����� �����ϴ� ������ �Դϴ�.<br>");
			out.println("<ul>");
			
			for(String s : singers){
					out.println("<li>" + s +"<br>" + "</li>");
			}
			out.println("</ul>");
			
			out.println("<hr/>");
			
			out.println("����� �����ϴ� ���� �Դϴ�.<br>");
			out.println("<ul>");
			
			for(String f : foods){
					out.println("<li>" + f +"<br>" + "</li>");
			}
			out.println("</ul>");
			
			out.println("<hr/>");
			
			out.println("����� �����ϴ� ���� �Դϴ�.<br>");
			out.println("<ul>");
			
			for(String c : citys){
					out.println("<li>" + c +"<br>" + "</li>");
			}
			out.println("</ul>");
			out.println("</body></html>");
			}catch(Exception err){
				err.printStackTrace();
			}finally{
				out.close();
			}*/
			
		req.setCharacterEncoding("euc-kr");		
		resp.setCharacterEncoding("euc-kr");
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		
		Enumeration en = req.getParameterNames();
		
		while(en.hasMoreElements()){
			String name = (String)en.nextElement();
			if(name != null){
				String[] values = req.getParameterValues(name);
				out.println("����� �����ϴ� " + name + "�Դϴ�.");
				out.println("<ul>");
				for(String str : values){
					out.println("<li>" + str + "</li>");
				}
				out.println("</ul>");
				out.println("<hr/>");
				
			}
		}

		out.println("</body></html>");
		out.close();
	}
		
}
	
// http://localhost:8080/my2/paramValues