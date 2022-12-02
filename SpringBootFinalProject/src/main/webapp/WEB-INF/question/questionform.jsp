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

<title>Insert title here</title>
</head>
<body>
<c:if test="${sessionScope.loginok==null }">
		<script type="text/javascript">
		alert("로그인 후 이용해주세요.");
		history.back();
		</script>
	</c:if>
	<div style="width:100%; margin-left:28%; margin-top: 7%;">
	<form action="qinsert" method="get">
	<h1>질문 작성하기</h1>
		<table style="width:700px;">
		<tr>
			<td>
			<input type="hidden" name="mem_name" value="${sessionScope.loginname}">
				<select name="que_category" required="required" class="cate" >
					<option value="배변">배변</option>
					<option value="산책">산책</option>
					<option value="공격성">공격성</option>
					<option value="짖음">짖음</option>
					<option value="기본예절">기본예절</option>
					<option value="기타">기타</option>
				</select> <br>
				<input type="text" name="que_subject" style="width:570px; margin-bottom: 5px;"
				placeholder="제목을 입력해주세요" required="required" ><br>

			<textarea style="width:570px; height: 200px;" name="que_content" 
			placeholder="증상 또는 행동이 어떤지, 언제부터 시작되었는지, 당시 보호자님의 반응과 주변상황에 대해 자세히 기술해주세요." 
			required="required" class="content"></textarea><br><br>
			
			<div style="margin-left: 210px;">
			<button type="submit" class="btn btn-primary" style="background-color:#6789F5; border:1px solid #6789F5;">질문등록</button>
			<button type="button" class="btn btn-secondary" onclick="location.href='qna'">취소</button>
			</div>
			</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
