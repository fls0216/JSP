<%@ page contentType="text/html; charset=utf-8" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int kor =  Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));
	%>
	당신의 성적입니다.<br>
	총점 : <%= kor + eng + mat %><br>
	평균 : <%= (kor+eng+mat)/3 %><br>

</body>
</html>