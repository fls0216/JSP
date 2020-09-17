package reqtest;

import javax.servlet.http.*;
import java.io.*;
import java.util.Enumeration;

// classes 폴더 내 생성
public class RequestTest2 extends HttpServlet{
	// 사용자가 접속할 때마다 호출됨
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		doPost(req, resp);
		
		String id = req.getParameter("ID");
		String age = req.getParameter("age");
		
		resp.setCharacterEncoding("euc-kr");
		
		PrintWriter out = null;
		try{
			out = resp.getWriter();
			out.println("<html><body>");
			out.println(id + "님 반갑습니다.<br>");
			out.println("당신의 나이는 " + age + "입니다.");
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
			out.println("당신이 좋아하는 가수들 입니다.<br>");
			out.println("<ul>");
			
			for(String s : singers){
					out.println("<li>" + s +"<br>" + "</li>");
			}
			out.println("</ul>");
			
			out.println("<hr/>");
			
			out.println("당신이 좋아하는 음식 입니다.<br>");
			out.println("<ul>");
			
			for(String f : foods){
					out.println("<li>" + f +"<br>" + "</li>");
			}
			out.println("</ul>");
			
			out.println("<hr/>");
			
			out.println("당신이 좋아하는 도시 입니다.<br>");
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
				out.println("당신이 좋아하는 " + name + "입니다.");
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