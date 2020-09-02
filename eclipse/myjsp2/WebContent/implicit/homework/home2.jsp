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
	

당신이 주문한 상품의 합계입니다.<br>
<% 
	int hap = 0;
	for(int i =0; i<ints.length; i++){
		hap +=ints[i];
	}
%>
합계: <%=hap %>

</body>
</html>