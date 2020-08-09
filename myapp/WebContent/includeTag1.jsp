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
	request.setCharacterEncoding("UTF-8");
	String name = "Korea Football";
	%>
	<h1>Include Tag Example1</h1>
	<jsp:include page="includeTagTop1.jsp"/>
	include ActionTag의 Body입니다. 
</body>
</html>