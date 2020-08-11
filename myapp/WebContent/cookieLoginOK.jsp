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
	String id = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("idKey")){
				id = cookies[i].getValue();
			}
		}
		
		if(id.equals("")){
	%>
	<script>
		alert("로그인되지 않았습니다.!");
		location.href = "cookieLogin.jsp";
	</script>
	<%
		}
	}
	%>
	<h2>Cookie 로그인</h2>
	<%= id %> 님이 로그인하셨습니다.<br>
	<a href="cookieLogout.jsp">로그아웃 </a>
</body>
</html>