<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gamja+Flower&family=Jua&family=Noto+Serif+KR&display=swap">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://kit.fontawesome.com/4f8084f592.js"
	crossorigin="anonymous"></script>
<style type="text/css">
body *
{
	font-family: 'Spoqa Han Sans Neo';
}

div.whole{
	width:100%;
	height: 100%;
	margin-top:25%;
}


ul.oq_list, ul.q_category
{
list-style:  none;
margin-left: -35px;
margin-top: 20px;

}
ul.oq_list li
{
	border:1px solid #DFE3EA;
	box-shadow:0 0px 3px 3px rgba(0,0,0,0.03);
	border-radius: 10px;
	width: 180px;
	height: 60px;
	float: left;
	margin-right: 15px;
	margin-bottom:10px;
	text-align: center;
	line-height: 60px;
}

#qlist
{
	width:470px;
	height:450px;
	background-color: white;
	box-shadow: 0 0px 3px 3px rgba(0,0,0,0.07);
	border-radius: 7px;
	margin-bottom: 50px;
	padding: 30px 30px 30px 30px;
	float:left; 
	margin-right: 40px;
	cursor: pointer;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="position-absolute top-0 start-50 translate-middle whole">
<div>
  <div style=" margin-left:15.5%;">
	<div style="width: 85%;  margin-top: 6%;">
		<div>
			<h1 style="font-size:50px; font-weight: 600; color:#555555;">펫시팅 후기</h1>
		</div>

	
	<div style="width:85%; margin-top:15%;">
	<p style="color:gray; font-size:25px; margin-bottom: 20px;">${count }개의 후기<br><br><br>
		<button type="button" class="btn btn-light" onclick="location.href='#'">
		<c:forEach var="dto" items="${list}">
		<div id="qlist" style="margin-left: 80px; margin-top: 6%;">
			<img src="../photo/${ani_photo}" style="width: 80px; height: 80px; margin-right:13px; margin-top: 9px; border-radius: 100px;">
			&nbsp;&nbsp;
			<span style="font-size:1.2em; font-weight:bold;"> ${mem_addr } </span><br>
			<span style="font-size:1.2em; ">${ani_name }&nbsp;&nbsp;</span><br>
			
			<c:if test="${dto.rev_star==1 }">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			</c:if>
			
			<c:if test="${dto.rev_star==2 }">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			</c:if>
			
			<c:if test="${dto.rev_star==3 }">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			</c:if>
			
			<c:if test="${dto.rev_star==4 }">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			</c:if>
			
			<c:if test="${dto.rev_star==5 }">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			<img src="../photo/star.png" style="width: 20px; height:20px;">
			</c:if>
			
			<hr><br>
			<img alt="" src="../photo/${dto.rev_photo}" style="width: 200px; height: 150px;"><br>
			${dto.rev_content}
		</div>
		</c:forEach>
			
	</div>
  </div>
  </div>
  
</div>
</body>
</html>