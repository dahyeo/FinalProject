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
	background-color: #94dbff;
	border-radius: 30px;
	width: 200px;
}
.in{
	width: 250px;
	border: 0px solid;
	
}
form div{
	margin-top: 50px;
}
hr { 
  display: block;
  margin-top: 0.5em;
  margin-bottom: 0.5em;
  margin-left: auto;
  margin-right: auto;
  border-style: inset;
  border-width: 1px;
  width: 250px;
}
</style>
</head>
<body>
<form action="hpupdate" method="post" enctype="form-data">
<input type="hidden" name="mem_num" value="${dto.mem_num }">
<input type="hidden" name="mem_email" value="${dto.mem_email }">
<input type="hidden" name="mem_pass" value="${dto.mem_pass }">
<input type="hidden" name="mem_name" value="${dto.mem_name }">
<input type="hidden" name="mem_addr" value="${dto.mem_addr }">
	<div align="center">
		<h2><b>휴대폰 번호 변경</b></h2><br>
		<input class="in form-control" type="text" name="mem_phone" placeholder="휴대폰 번호 입력"><hr><br><br>
		<button type="submit" class="btn">변경완료</button>
	</div>
</form>

</body>
</html>