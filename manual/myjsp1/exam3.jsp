<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<script>
			function sum() {
				var sum = 0;
				for(var i=0; i<=10; i++) {
					sum += i;
				}
				return sum;
			}
		</script>
	</head>
	<body>
		<%@ page contentType="text/html; charset=euc-kr" %>
		<h1> Third Exam </h1>
		<h2> 1���� 10������ �հ� </h2>
		<script>document.write(sum())</script>
		<br><br>
		
		<%
			int sum = 0;
			for(int i=0; i<=10; i++) {
				sum += i;
			}
		%>
		�ڹ��ڵ� ��� : <%=sum%>
	</body>
</html>