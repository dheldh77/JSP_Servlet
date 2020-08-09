<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	session.setAttribute("idKey", id);
	session.setMaxInactiveInterval(60 * 5);
	%>
	<h1>Session Example1</h1>
	<form method="post" action="session1_1.jsp">
		1. 가장 좋아하는 계절은 ? <br>
		<input type="radio" name="season" value="봄">봄
		<input type="radio" name="season" value="여름">여름
		<input type="radio" name="season" value="가을">가을 
		<input type="radio" name="season" value="겨울">겨울<br>
		
		2. 가장 좋아하는 과일은 ? <br>
		<input type="radio" name="fruit" value="watermelon">수박
		<input type="radio" name="fruit" value="melon">멜
		<input type="radio" name="fruit" value="apple">사과
		<input type="radio" name="fruit" value="orange">오렌지<br>
		<input type="submit" value="submit">
	</form>
</body>
</html>