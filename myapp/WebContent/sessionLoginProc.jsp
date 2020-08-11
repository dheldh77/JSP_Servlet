<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "regMgr" class = "myapp.RegisterMgr2" />
	<%
	String id = "";
	String pw = "";
	if(request.getParameter("id") != null) id = request.getParameter("id");
	if(request.getParameter("pw") != null) pw = request.getParameter("pw");
	
	if(regMgr.loginRegister(id, pw)){
		session.setAttribute("idKey", id);
	%>
	<script>
		alert("로그인 되었습니다. ");
		location.href = "sessionLoginOK.jsp";
	</script>
	<%
	} else {
	%>
	<script>
		alert("로그인 되지 않았습니다. ");
		location.href = "sessionLogin.jsp";
	</script>
	<%
	}
	%>
</body>
</html>