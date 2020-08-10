<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = (String)session.getAttribute("idKey");
	%>
	<h1>Servlet Session</h1>
	<%
		if(id != null){
	%>
	<%= id %>님 반갑습니다.
	<a href="logout.jsp">로그아웃</a>
	<%
		}else{
	%>
	<form method="post" action="LoginServlet">
	id : <input name="id"><br>
	pw : <input name="pw" type="password"><br>
	<input type="submit" value="submit">
	</form>
	<% } %>
</body>
</html>