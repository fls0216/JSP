<%@ page contentType="text/html; charset=utf-8" %> 
[머리말]<br>
<jsp:useBean id="req" class="mybean.scope.IncludeBean" scope="request"/>
<jsp:getProperty property="header" name="req"/>