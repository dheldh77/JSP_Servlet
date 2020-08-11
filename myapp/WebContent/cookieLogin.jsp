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
	String cookieName = "";
	String id = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("idKey")){
				cookieName = cookies[i].getName();
				id = cookies[i].getValue();
			}
		}
		
		if(!id.equals("")){
			
	%>
	<script>
		alert("로그인 되었습니다. ! ");
		location.href = "cookieLoginOK.jsp";
	</script>
	<% 
		}
	}
	%>
	<h2>Cookie 로그인</h2>
	<form method="post" action="cookieLoginProc.jsp">
		ID : <input name="id">
		PW : <input type="password" name="pw">
		<input type="submit" value="submit">
		<input type="reset" value="reset">
	</form>
</body>
</html>