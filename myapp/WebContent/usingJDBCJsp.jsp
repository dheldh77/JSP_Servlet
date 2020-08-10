<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, myapp.*" %>
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
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String id = "", pw = "", name ="", num1 = "", num2 ="", email = "", phone = "", zipcode = "", address = "", job = "";
	int cnt = 0;
	
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("SELECT * FROM tblRegister");
	%>
	<h1>JSP에서 데이터베이스 연동</h1>
	<h3>회원 정보 </h3>
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">ID</th>
	      <th scope="col">PW</th>
	      <th scope="col">Name</th>
	      <th scope="col">num1</th>
	      <th scope="col">num2</th>
	      <th scope="col">email</th>
	      <th scope="col">phone</th>
	      <th scope="col">zipcode</th>
	      <th scope="col">address</th>
	      <th scope="col">job</th>
	    </tr>
	  </thead>
	  <tbody>
	  <%
	  	if(rs != null){
	  		while(rs.next()){
	  			id = rs.getString("id");
	  			pw = rs.getString("pwd");
	  			name = rs.getString("name");
	  			num1 = rs.getString("num1");
	  			num2 = rs.getString("num2");
	  			email = rs.getString("email");
	  			phone = rs.getString("phone");
	  			zipcode = rs.getString("zipcode");
	  			address = rs.getString("address");
	  			job = rs.getString("job");
	  %>
	    <tr>
	      <td><%= id %></td>
	      <td><%= pw %></td>
	      <td><%= name %></td>
	      <td><%= num1 %></td>
	      <td><%= num2 %></td>
	      <td><%= email %></td>
	      <td><%= phone %></td>
	      <td><%= zipcode %></td>
	      <td><%= address %></td>
	      <td><%= job %></td>
	      
	      <% 
	      		cnt++;
			}
		}
	
	      %>
	    </tr>
	  </tbody>
	</table>
	<br>
	total records : <%= cnt %>
	<%
	} catch(SQLException sqlException){
		System.out.println("sql exception");
	} catch(Exception exception){
		System.out.println("exception");
	} finally {
		if(rs != null){
			try{ rs.close();}
			catch(SQLException ex) {}
		}
		if( stmt != null){
			try{ stmt.close();}
			catch(SQLException ex) {}
		}
		if( conn != null){
			try{ conn.close();}
			catch(SQLException ex) {}
		}
	}
	%>
</body>
</html>