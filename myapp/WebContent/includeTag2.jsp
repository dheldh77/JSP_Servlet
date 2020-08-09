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
	String name = request.getParameter("name");
	%>
	<h1>include Tag Example2</h1>
	<jsp:include page="includeTagTop2.jsp">
	<jsp:param name="name" value="JSPStudy.co.kr"/>
	</jsp:include>
	include ActionTag의 Body입니다.<br>
	<%= name %>
	<hr>
</body>
</html>