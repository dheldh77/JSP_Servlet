<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" session="true" buffer="16kb" autoFlush="true" isThreadSafe="true" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>trim After</h1>
	<% Date date = new Date(); %>
	현재의 시간과 날짜는 ? 
	<%= date.toLocaleString() %>
</body>
</html>