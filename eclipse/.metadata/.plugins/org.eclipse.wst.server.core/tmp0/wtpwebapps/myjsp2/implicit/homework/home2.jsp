<%@ page contentType="text/html; charset=EUC-KR" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String[] food = request.getParameterValues("food");
	int[] ints = new int[food.length];
    for (int i=0; i < food.length; i++) {
        ints[i] = Integer.parseInt(food[i]);
    }
	%>
	

����� �ֹ��� ��ǰ�� �հ��Դϴ�.<br>
<% 
	int hap = 0;
	for(int i =0; i<ints.length; i++){
		hap +=ints[i];
	}
%>
�հ�: <%=hap %>

</body>
</html>