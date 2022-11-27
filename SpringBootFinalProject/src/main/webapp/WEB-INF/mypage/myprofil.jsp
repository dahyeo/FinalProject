<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
.btn{
	border: 1px solid black;
}
div{
	width: 1000px;
	
}
</style>
</head>
<body>
<div>
	
	<div style="margin-left: 200px">
		${dto.mem_id}
		${dto.myid }
		${mem_id }
		${mem_name }
		${dto.mem_name }
		<h2><b>${dto.mem_name }님, 안녕하세요!</b></h2>
		<br>
		<b>이메일 아이디</b><br>
		<b>${dto.mem_email } </b>
		<hr>
		<b>휴대폰 번호</b><br>
		
		<b>${dto.mem_phone } </b><button class="btn btn-default">번호변경</button>
		<hr>
		<b>내 주소</b><br>
		<b>${dto.mem_addr } </b><button class="btn btn-default">주소변경</button>
		<hr>
	
	</div>
	

</div>


</body>
</html>