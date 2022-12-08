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
	border : 1px solid lightgray;
	border-radius: 10px;
	
}
.content:focus{
	border: 1px solid #6789F5;
	outline: 2px solid #6789F5;
	padding-left:10px;
	padding-right: 10px;
	
}
img.ani{
	width:25px;
	height:25px;
	border-radius: 100px;
	padding: 0;
	overflow: hidden;
	object-fit: fill;
	object-position: 50% 50%;
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
	<div style="width:100%; margin-left:30%; margin-top: 3%;">
	<form action="ainsert" method="get">
		<table style="width:700px;">
		<tr>
			<td>
			<input type="hidden" name="que_num" value="${que_num }">
			<input type="hidden" name="trainer_num" value="${trainer_num}">
			<input type="hidden" name="trainer_name" value="${sessionScope.loginname}">
			
			<div style="border:1px solid lightgray; width:570px; padding:20px 10px 10px 20px; border-radius: 10px;">
				<p style="font-size: 14px; margin-left:70px; margin-bottom: -1px;"> 카테고리 | ${qdto.que_category }</p> 
				<img src="${root }/image/question.png" alt="질문" style="width: 54px; height: 39px; margin-right: 13px;float:left;">
				<p style="font-size: 25px; font-weight: 600; line-height:35px; margin-left: 60px; color:black; ">
				${qdto.que_subject }</p> 
				<p style="margin-left: 70px; margin-top: -13px;">${qdto.mem_name }님의 반려동물 &nbsp; | &nbsp;${andto.ani_name }
					 <c:if test="${andto.ani_type=='강아지' }">
						( <img src="${root }/image/ani_dog.png" class="ani">)
					</c:if> 
					<c:if test="${andto.ani_type=='고양이' }">
						(<img src="${root }/image/ani_cat.png" class="ani">)
					</c:if>
				</p>
					<div style="padding:10px 20px 10px 20px;">
					<p style="white-space:pre-line; " >${qdto.que_content }</p>
					</div>
			</div>
			
			<div style="margin-top: 20px; border: 1px solid lightgray; padding:20px 10px 10px 20px; border-radius: 10px; width:570px;">
				<img src="${root }/image/answer.png" alt="답변" style="width: 51px; height: 47px; margin-right: 13px; float:left; border-radius:100px;">
				<div>
				 <p style="font-size: 25px; font-weight: 600; line-height:35px; margin-left: 60px; color:black; margin-top: 4px;">
				 ${sessionScope.loginname } 훈련사님, 답변을 기다리고 있어요!</p>
				
				<textarea style="width:530px; height: 200px;" name="ans_content" 
				placeholder="반려동물의 증상/행동에 대한 원인분석과 그에 따른 솔루션을 제안해주세요." 
				required="required" class="content"></textarea><br><br>
				</div>
				
				<div style="margin-left: 180px;">
				<button type="submit" class="btn btn-primary" style="background-color:#6789F5; border:1px solid #6789F5;">답변등록</button>
				<button type="button" class="btn btn-secondary" onclick="location.href='que_detail?que_num=${que_num}'">취소</button>
				</div>
				
			</div>
			</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
