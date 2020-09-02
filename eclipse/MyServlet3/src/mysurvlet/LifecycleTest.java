package mysurvlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

public class LifecycleTest extends HttpServlet {

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		System.out.println("service »£√‚µ ");
	}

	@Override
	public void destroy() {
		System.out.println("Destroy »£√‚µ ");
	}

	@Override
	public void init() throws ServletException {
		System.out.println("init »£√‚µ ");
	}
	
}
