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
<script src="https://kit.fontawesome.com/4f8084f592.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<style type="text/css">
body {
  padding: 0px;
  margin: 0px;
}
.bg {
  width: 100%;
  height: 600px;
  overflow: hidden;
  margin: 0px auto;
  position: relative;
  background-color: #f7f8fa;
}
img{
  width: 100px;
  height: 30px;
  left: 300px;
  top: 15px;
}
.text {
  position: absolute;
  width: 100%;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
}
.title {
  padding-left: 200px;
  text-align: left;
  font-size: 60px;
  font-weight: bold;
  color: black;
}
.subtitle{
  padding-left: 200px;
  text-align: left;
  font-weight: 400;
  font-size: 18px;
  color: black;
}
.bannerimg{
  position: absolute;
  width: 600px;
  height: 100%;
  left: 600px;
}
</style>
</head>
<body data-bs-spy="scroll" data-bs-target="#navbarExample">

    <div class="bg">
      <img src="${root }/image/top_banner.png" class="bannerimg">
      <div class="text">
        <p class="title">반려생활<br><br><br>파트너</p><br><br>
        <p class="subtitle">반려가족의 하루에 와요가 함께하겠습니다.</p>
      </div>
    </div>

    

    
    <!-- Back To Top Button -->
    <button onclick="topFunction()" id="myBtn">
        <img src="images/up-arrow.png" alt="alternative">
    </button>
    <!-- end of back to top button -->
    	
</body>
</html>