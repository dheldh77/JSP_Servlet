<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, myapp.*" %>
<jsp:useBean id="regMgr" class="myapp.RegisterMgr" scope="page" />

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
	<h2>Bean을 사용한 데이터베이스 연동 예제</h2>
	<h6>회원 정보</h6>
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">ID</th>
	      <th scope="col">PW</th>
	      <th scope="col">NAME</th>
	      <th scope="col">NUM1</th>
	      <th scope="col">NUM2</th>
	      <th scope="col">EMAIL</th>
	      <th scope="col">PHONE</th>
	      <th scope="col">ZIPCODE/ADDRESS</th>
	      <th scope="col">JOB</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  	Vector<RegisterBean> vlist = regMgr.getRegisterList();
	  	int cnt = vlist.size();
	  	for(int i = 0; i < vlist.size(); i++){
	  		RegisterBean regBean = vlist.get(i);
	  	%>
	  	<tr>
	      <td><%= regBean.getId() %></td>
	      <td><%= regBean.getPwd() %></td>
	      <td><%= regBean.getName() %></td>
	      <td><%= regBean.getNum1() %></td>
	      <td><%= regBean.getNum2() %></td>
	      <td><%= regBean.getEmail() %></td>
	      <td><%= regBean.getPhone() %></td>
	      <td><%= regBean.getZipcode() %>/<%= regBean.getAddress() %></td>
	      <td><%= regBean.getJob() %></td>
	    </tr>
	  	<%
	  	}
	  	%>
	  </tbody>
	</table>
	<br>
	total records : <%= cnt %>
</body>
</html>