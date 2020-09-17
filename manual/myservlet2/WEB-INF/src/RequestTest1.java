package reqtest;

import javax.servlet.http.*;
import java.io.*;

// classes 폴더 내 생성
public class RequestTest1 extends HttpServlet{
	// 사용자가 접속할 때마다 호출됨
	protected void doGet(HttpServletRequest req, HttpServletResponse resp){
		System.out.println("getget connected >_<  "+req.getRemoteAddr());
		}
		
	protected void doPost(HttpServletRequest req, HttpServletResponse resp){
		System.out.println("postpost connected >_<"+req.getRemoteAddr());
		}
		
	}