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
</head>
<body>

<!-- 추후 nav로 꾸미기 -->
<h2 class="alert alert-info" style="width: 600px;">나의 예약내역</h2>
<table class="table table-bordered" style="width: 600px;">
  <c:forEach var="dto" items="${list }" varStatus="i">
    <tr>
      <td>${dto.trainerprof_num }</td>
      <td>${dto.partnerprof_num }</td>
      <td>${dto.res_visit }</td>
      <td><button type="button" class="btn btn-default" onclick="location.href='review'">리뷰쓰기</button></td>
    </tr>
  </c:forEach>
</table>

<h2 class="alert alert-info" style="width: 600px;">내 클래스의 예약내역</h2>


</body>
</html>