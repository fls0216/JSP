package reqtest;

import javax.servlet.http.*;
import java.io.*;

// classes ���� �� ����
public class RequestTest1 extends HttpServlet{
	// ����ڰ� ������ ������ ȣ���
	protected void doGet(HttpServletRequest req, HttpServletResponse resp){
		System.out.println("getget connected >_<  "+req.getRemoteAddr());
		}
		
	protected void doPost(HttpServletRequest req, HttpServletResponse resp){
		System.out.println("postpost connected >_<"+req.getRemoteAddr());
		}
		
	}