<%@ page contentType="text/html; charset=utf-8" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>주사위게임</h1>
	<jsp:useBean id="dise" class="mybean.scope.DiseBean" scope="page"/>
	<jsp:setProperty property="minNumber" name="dise" value ="1"/>
	<jsp:setProperty property="maxNumber" name="dise" value="6"/>
	
	<h2> 
		주사위 눈금은 <jsp:getProperty property="randomNumber" name="dise"/> 입니다.
	</h2>
	
	<form action="Dise.jsp" method="post">
		<input type="submit" value="주사위 다시 굴리기"/>
	</form>
	<br><br>
	카운터 : <jsp:getProperty property="counter" name="dise"/>
	
</body>
</html>