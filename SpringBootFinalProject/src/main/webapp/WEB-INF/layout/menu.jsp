<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gamja+Flower&family=Jua&family=Noto+Serif+KR&display=swap">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="./resources/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/4f8084f592.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<style type="text/css">
.fa-sign-in, .fa-sign-out{
  position: absolute;
  float: right;
  cursor: pointer;
  right: 150px;
  top: 15px;
}

.loginname{
  position: absolute;
  right: 250px;
  top: 12px;
}

.mypage{
  position: absolute;
  right: 100px;
  top: 12px;
  cursor: pointer;
} 
</style>
</head>
<body>
<c:if test="${sessionScope.loginok==null }">
  <span onclick="location.href='${root}/login/main'" class="login">
    <i class="fa fa-sign-in" aria-hidden="true"> 로그인</i>
  </span>
</c:if>
  
<c:if test="${sessionScope.loginok!=null }">
  <b class="loginname">${sessionScope.loginname }님</b>
  <span onclick="location.href='${root}/login/logoutprocess'">
    <i class="fa fa-sign-out" aria-hidden="true"> 로그아웃</i>
  </span>
</c:if> 

<c:if test="${sessionScope.loginok!=null }">
  <span onclick="location.href='${root}/mypage/home'" class="mypage">
    <i class="fa fa-user" aria-hidden="true"></i>
  </span>
</c:if>
</body>
</html>