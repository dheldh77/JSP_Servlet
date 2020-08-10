<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</head>
<body style="max-width:1000px; margin:auto;">
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="regBean" class="myapp.MemberBean" scope="page" />
	<jsp:setProperty property="*" name="regBean"/>
	<h1>회원가입 확인 </h1>
	<h6><jsp:getProperty name="regBean" property="name"/> 회원님이 작성하신 내용입니다. 확인해주세요. </h6>
	<table class="table">
	  <tbody>
	    <tr>
	      <th scope="row">ID</th>
	      <td><jsp:getProperty name="regBean" property="id"/></td>
	    </tr>
	    <tr>
	      <th scope="row">PW</th>
	      <td><jsp:getProperty name="regBean" property="pw"/></td>
	    </tr>
	    <tr>
	      <th scope="row">Name</th>
	      <td><jsp:getProperty name="regBean" property="email"/></td>
	    </tr>
	    <tr>
	      <th scope="row">Birth</th>
	      <td><jsp:getProperty name="regBean" property="birth"/></td>
	    </tr>
	    <tr>
	      <th scope="row">Email</th>
	      <td><jsp:getProperty name="regBean" property="email"/></td>
	    </tr>
	  </tbody>
	</table>
</body>
</html>