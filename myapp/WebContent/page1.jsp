<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="JSPStudy.co.kr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String pageInfo = this.getServletInfo();
	%>
	<h1>Page Example1</h1>
	현재 페이지의 info값 : <%= pageInfo %>
</body>
</html>