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
button{
	width: 300px;
	height: 100px;
	border: 0px solid black;
}
div{
	width: 1000px;
	
	
}

</style>
</head>
<body>
<div align="center">
	<button onclick="location.href='myprofil?id=${sessionScope.myid}'">내 프로필</button>
	<button onclick="location.href='petprofil'">반려동물 프로필</button>
</div>

</body>
</html>