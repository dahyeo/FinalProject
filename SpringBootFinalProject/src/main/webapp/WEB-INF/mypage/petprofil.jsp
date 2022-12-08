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
	color: white;
	background-color: #94dbff;
	border-radius: 60px;
	width: 300px;
}

</style>
</head>
<body>
<c:if test="${dto.ani_num == null }">
	<div align="center">
		<div>
			<h3><b>반려동물이 없습니다</b></h3>
			<h4>프로필을 등록하면 빠른 예약이 가능해요!</h4>
			<br>
			<button>등록하기</button>
		</div>
		
	</div>
</c:if>
</body>
</html>