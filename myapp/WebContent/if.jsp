<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>if-else Example</h1>
	<%!
		String msg;
	%>
	<%
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		
		if(color.equals("blue")) msg = "파란색 ";
		else if(color.equals("red")) msg = "빨간색 ";
		else if(color.equals("orange")) msg = "오렌지색 ";
		else {
			color = "black";
			msg = "기타색";
		}
	%>
	
	<div style="color : <%= color %>">
		<%= name %>님이 좋아하는 색깔은 <%= color %>입니다.
	</div>
</body>
</html>