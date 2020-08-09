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
	String season = request.getParameter("season");
	String fruit = request.getParameter("fruit");
	String id = (String)session.getAttribute("idKey");
	
	String sessionId = session.getId();
	
	int intervalTime = session.getMaxInactiveInterval();
	
	if(id != null){
	%>
	<h1>Session Example1</h1>
	<%= id %>님이 좋아하시는 계절과 과일은 <br>
	<%= season %>과 <%= fruit %>입니다.<br>
	세션 ID : <%= sessionId %><br>
	세션 유지 시간 : <%= intervalTime %>초 <br>
	<%
		session.invalidate();
	}else{
		out.println("세션의 시간이 경과를 하였거나 다른 이유로 연결을 할수가 없습니다. ");
	}
	%>
</body>
</html>