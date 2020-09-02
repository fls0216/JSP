/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.37
 * Generated at: 2020-08-21 01:03:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.v4;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import beans.BoardDto;
import beans.BoardDao;

public final class List_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


	int totalRecord = 0; // 전체 글 개수
	int numPerPage = 5; // 한페이지에 보여질 글의 개수
	int pagePerBlock = 3; // 블럭 당 페이지수
	int totalPage = 0; // 전체 페이지의 개수
	int totalBlock=0; // 전체 블럭의 개수
	int nowPage=0; //현재 선택된 페이지번호
	int nowBlock=0; //헌재 선택된 블럭번호
	int beginPerpage=0;//각페이지의 시작 글번호

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("beans.BoardDao");
    _jspx_imports_classes.add("beans.BoardDto");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=euc-kr");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<HTML>\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<script>\r\n");
      out.write("\tfunction check(){\r\n");
      out.write("\t\tif(document.search.keyWord.value == \"\"){\r\n");
      out.write("\t\t\talert(\"검색어를 입력하세요.\");\r\n");
      out.write("\t\t\tdocument.search.keyWord.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.search.submit();\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("<BODY>\r\n");
      out.write("\r\n");
      out.write("<center><br>\r\n");
      out.write("<h2>JSP Board</h2>\r\n");
      out.write("\r\n");
      beans.BoardDao dao = null;
      dao = (beans.BoardDao) _jspx_page_context.getAttribute("dao", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (dao == null){
        dao = new beans.BoardDao();
        _jspx_page_context.setAttribute("dao", dao, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');
		
	request.setCharacterEncoding("euc-kr");
	String keyField= request.getParameter("keyField");
	String keyWord = request.getParameter("keyWord");
	
	if(keyWord == null){
		keyField = "b_name";
		keyWord = "";
	}

	
	ArrayList<BoardDto> boardlist = (ArrayList<BoardDto>)dao.getBoardList(keyField, keyWord);
	//페이징 시작
	totalRecord=boardlist.size();
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage);
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock) ;
	
	if(request.getParameter("nowPage")!=null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	
	if(request.getParameter("nowBlock")!=null){
		nowBlock = Integer.parseInt(request.getParameter("nowBlock"));
	}
	
	beginPerpage = nowPage * numPerPage;
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table align=center border=0 width=80%>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td align=left>Total : ");
      out.print(totalRecord );
      out.write(" Articles( \r\n");
      out.write("\t\t<font color=red>  ");
      out.print(nowPage );
      out.write(' ');
      out.write('/');
      out.write(' ');
      out.print(totalPage );
      out.write(" Pages </font>)\r\n");
      out.write("\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<table align=center width=80% border=0 cellspacing=0 cellpadding=3>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td align=center colspan=2>\r\n");
      out.write("\t\t<table border=0 width=100% cellpadding=2 cellspacing=0>\r\n");
      out.write("\t\t\t<tr align=center bgcolor=#D0D0D0 height=120%>\r\n");
      out.write("\t\t\t\t<td> 번호 </td>\r\n");
      out.write("\t\t\t\t<td> 제목 </td>\r\n");
      out.write("\t\t\t\t<td> 이름 </td>\r\n");
      out.write("\t\t\t\t<td> 날짜 </td>\r\n");
      out.write("\t\t\t\t<td> 조회수 </td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t<!-- 글 목록 출력 -->\r\n");
      out.write("\r\n");
      out.write("\r\n");

	for(int i=beginPerpage; i<(beginPerpage+numPerPage); i++){
		if(i == totalRecord)
			break;
			
		BoardDto board = boardlist.get(i);

      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>");
      out.print( board.getB_num());
      out.write("</td>\r\n");
      out.write("\t\t<td><a href='Read.jsp?b_num=");
      out.print(board.getB_num() );
      out.write('\'');
      out.write('>');
      out.print( board.getB_subject() );
      out.write("</a></td>\r\n");
      out.write("\t\t<td>");
      out.print( board.getB_name() );
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print( board.getB_ragdate() );
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print( board.getB_count() );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");

	}

      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td><BR><BR></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td align=\"left\">Go to Page \r\n");
      out.write("\t");
 if(nowBlock>0){ 
      out.write("\r\n");
      out.write("\t\t<a href=\"List.jsp?nowPage=");
      out.print((nowBlock-1)*pagePerBlock);
      out.write("&nowBlock=");
      out.print(nowBlock-1);
      out.write("\">이전 ");
      out.print( pagePerBlock );
      out.write("개 </a>::: &nbsp; &nbsp;\r\n");
      out.write("\t");
}
		for(int i = 0; i<pagePerBlock; i++){
			if((nowBlock * pagePerBlock)+i == totalPage){
					break;
			}
	
      out.write("\t\t\r\n");
      out.write("\t\t<a href=\"List.jsp?nowPage=");
      out.print((nowBlock * pagePerBlock)+i);
      out.write("&nowBlock=");
      out.print(nowBlock);
      out.write('"');
      out.write('>');
      out.print((nowBlock*pagePerBlock) +i+1);
      out.write("</a> &nbsp; &nbsp;\r\n");
      out.write("\t");

		}
		if(totalBlock>nowBlock+1){
	
      out.write("\r\n");
      out.write("\t&nbsp; &nbsp; ::: <a href=\"List.jsp?nowPage=");
      out.print((nowBlock+1)*pagePerBlock);
      out.write("&nowBlock=");
      out.print(nowBlock+1);
      out.write("\">다음");
      out.print( pagePerBlock );
      out.write("개 </a>\r\n");
      out.write("\t");

		}
	
      out.write("\r\n");
      out.write("\t</td>\r\n");
      out.write("\t<td align=right>\r\n");
      out.write("\t\t<a href=\"Post.jsp\">[글쓰기]</a>\r\n");
      out.write("\t\t<a href=\"javascript:list()\">[처음으로]</a>\r\n");
      out.write("\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<BR>\r\n");
      out.write("<form action=\"List.jsp\" name=\"search\" method=\"post\">\r\n");
      out.write("\t<table border=0 width=527 align=center cellpadding=4 cellspacing=0>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td align=center valign=bottom>\r\n");
      out.write("\t\t\t<select name=\"keyField\" size=\"1\">\r\n");
      out.write("\t\t\t\t<option value=\"b_name\"> 이름\r\n");
      out.write("\t\t\t\t<option value=\"b_subject\"> 제목\r\n");
      out.write("\t\t\t\t<option value=\"b_content\"> 내용\r\n");
      out.write("\t\t\t</select>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<input type=\"text\" size=\"16\" name=\"keyWord\" >\r\n");
      out.write("\t\t\t<input type=\"button\" value=\"찾기\" onClick=\"check()\">\r\n");
      out.write("\t\t\t<input type=\"hidden\" name=\"page\" value= \"0\">\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("</form>\r\n");
      out.write("</center>\t\r\n");
      out.write("</BODY>\r\n");
      out.write("</HTML>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}