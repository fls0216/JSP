<%@ page contentType="text/html; charset=utf-8" %> 
[꼬리말]<br>
<jsp:useBean id="req" class="mybean.scope.IncludeBean" scope="request"/>
<jsp:getProperty property="footer" name="req"/>