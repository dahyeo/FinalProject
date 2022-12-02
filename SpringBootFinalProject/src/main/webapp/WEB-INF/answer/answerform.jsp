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
<style type="text/css">

body *
{
	font-family: 'Spoqa Han Sans Neo';
}
input{
 padding: 6px 7px;

  
}
input:focus{
 padding: 6px 7px;
	 background-color : #E9F0FD;
}
.cate, .ani{
	width:570px;
	padding: 6px 7px;
    margin-bottom: 5px;
    text-align-last: center;
   	text-align: center;
   -ms-text-align-last: center;
   -moz-text-align-last: center;
}

.cate:focus, .ani:focus{
    border: 1px solid #7291F5;
    box-sizing: border-box;
    outline: 2px solid #6789F5;
}

.content{
	padding-left:10px;
	padding-right: 10px;
	
}
.content:focus{
	border: 1px solid #6789F5;
	outline: 2px solid #6789F5;
	padding-left:10px;
	padding-right: 10px;
	
}
</style>
</head>
<body>
<c:if test="${sessionScope.loginok==null }">
		<script type="text/javascript">
		alert("로그인 후 이용해주세요.");
		history.back();
		</script>
	</c:if>
	<div style="width:100%; margin-left:28%; margin-top: 5%;">
	<form action="ainsert" method="get">
		<table style="width:700px;">
		<tr>
			<td>
			<input type="hidden" name="que_num" value="${que_num }">
			<input type="hidden" name="trainer_num" value="${trainer_num}">
			<input type="hidden" name="trainer_name" value="${sessionScope.loginname}">
			
			<textarea style="width:570px; height: 200px;" name="ans_content" 
			placeholder="반려동물의 증상/행동에 대한 원인분석과 그에 따른 솔루션을 제안해주세요." 
			required="required" class="content"></textarea><br><br>
			
			<div style="margin-left: 210px;">
			<button type="submit" class="btn btn-primary" style="background-color:#6789F5; border:1px solid #6789F5;">답변등록</button>
			<button type="button" class="btn btn-secondary" onclick="location.href='que_detail?que_num=${que_num}'">취소</button>
			</div>
			</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>