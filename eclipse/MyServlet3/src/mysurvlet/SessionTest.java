package mysurvlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sess")
public class SessionTest extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		
		HttpSession sess= req.getSession();
		
		String msg = null;
		if(id.equals("tiger") && pw.equals("1111")) {
			sess.setAttribute("id", id);
			msg = "login success";
		}
		
		resp.setCharacterEncoding("euk-kr");
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		out.println(msg);
		out.println("</body></html>");
		out.close();
		
		System.out.println(sess.getAttribute("id"));
		
		//세션 메모리 제거
		//sess.invalidate();
		
		System.out.println("접속시간 :" + new Date(sess.getCreationTime()));
		System.out.println("세션 만료 시간 : " + sess.getMaxInactiveInterval());
	}

}
