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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<c:set var="root" value="<%=request.getContextPath() %>"/>
<title>Insert title here</title>
</head>
<body>
<div style="width: 1000px;height:1039px;"> 
	<div style="width: 1000px; margin-top:5%; margin-left: 21%; margin-bottom: 15px;">
	<b style="font-size: 24px; color:#555555;">자주 묻는 질문</b>
	<a href="qna" style="font-size: 24px; color:gray; float:right; text-decoration: none;">목록으로 돌아가기 > </a><br>
	</div>
	
	<div style="width: 1000px; margin-left: 21%;">
	
	</div>
	
	<div style="width:1000px; margin-left: 21%; margin-top:10px; border:1px solid #e0e0e0; padding: 75px 80px 80px 80px; border-radius: 12px;">
	<img src="${root }/image/popular.png" style="width:23px;height:30px;margin-right:7px; float: left;">
	<p style=" font-size:17px; font-weight:500; color:#999999; line-height: 30px;">배변 관련 최다 질문</p>	
	<p style="font-size: 32px; font-weight: 600; line-height:35px; color:black; ">대소변을 못가리거나 마킹 문제가 있어요</p>
	<p style="font-size:17px;color:#999999;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word;margin-bottom: 0">
	- 대소변을 잘 못가려요
	- 대변만 실수를 해요
	- 배변을 움직이면서 봐요
	- 실내에서 마킹을 해요
	</p>
	<br><hr><br>
		<div style="margin-top:18px;margin-bottom:55px">
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500"><i class="bi bi-record-circle-fill"></i> 원인 분석</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			먼저 반려견들의 배변은 단순한 배설활동이 아닌 감정표현의 수단이기도 합니다! 현재 환경에 어떤 문제가 있을 때 배변으로 그 감정으로 표현하기도 하게 됩니다. 
			혹시 배변 실수가 언제부터 있었는지 궁금하고, 마킹인지 소변인지도 확인하여야 합니다. 크게 한두군데에만 본다면 마킹이 아니라 그냥 소변이라고 봐야 하고, 소변을 조금씩 이곳 저곳 여러군데에 손다면 마킹으로 봐야 합니다. 그리고 마킹은 특히 물건, 기둥, 모서리, 벽 등에 대고 하는 경우가 많습니다! 단순한 배변실수라면 배변 환경 및 생활 공간에 대한 재인식이 필요하고, 마킹 문제라면 생활환경이나 패턴등을 전반적으로 재점검하여야 합니다!
			</p>
		</div>
		
		<div style="margin-top:18px;">
			
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500;marg8in-top: -1"><i class="bi bi-record-circle-fill"></i> 솔루션 제안</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			반려견들은 자신들이 잠자고, 먹고, 놀고, 엎드려 쉬는 주 공간에서는 배변을 보지 않고, 주 공간으로부터 떨어진 곳에 배변을 하려고 하는 습성을 가지고 있습니다! 이런 습성을 이용하여 배변환경을 구성해 주세요.
			
			✔️ 기본적인 배변 환경 체크 리스트
			- 집과는 떨어진 구석쪽에 위치하는지
			- 패드의 크기는 넉넉하게 (반려견 몸 크기의 3~4배)
			- 패드는 항상 청결하게
			- 패드가 절대로 미끌리지 않도록 패드 밑에 미끄럼방지매트를 깔아줄 것
			- 다리를 들고 싸는 것을 좋아한다면 패드에 기둥을 세워주거나 벽쪽에 위치해 주기
			- 다견 가정이라면 패드 장소는 1군데 더 만들어놔보기
			
			이렇게 환경적으로 구성을 해두시고, 패드 외 장소에서 같이 엎드려 쉬고, 먹고, 놀이를 하는 등의 생활을 많이 할 수 있게 해주세요. 패드에 배변을 잘 봤을 때는 배변이 다 끝난 후에 칭찬과 함께 간식을 보상해 주세요! 그럼 자연스럽게 내가 주로 생활하는 주 생활공간이 생기게 되고, 주 공간에는 배변을 보지 않고 그 외 공간(패드)에 배변을 보게 되는 횟수가 늘어나게 됩니다.
			
			* 혹시 패드에서 엎드려 쉰다면, 패드에서 못쉬게 자꾸 불러내 주세요. ( 패드에서 엎드려 쉰다는 것은 패드가 배변장소가 아닌 주 공간의 개념이기 때문에 당연히 배변을 보려고 하지 않습니다.)
			
			만약 마킹이라고 한다면, 마킹의 원인부터 찾아야 합니다.
			반려견들은 자신의 주 생활공간에는 마킹을 하지 않습니다, 낯설거나 가족구성원이 바뀌거나 손님이 오는 등 어떤 환경변화가 생겼을 때 일시적으로 하거나 집 외의 공간에서 마킹을 하게 됩니다. 그래서 평소에 집 실내에다 마킹을 한다면 같이 사는 구성원과의 문제가 있거나 무언가 환경 적으로 큰 문제가 있다고 봐야합니다 :)
			
			그리고 마킹을 하는 반려견에게는 짧고 잦은 산책을 통해 실외에서는 마킹을 주로하고 실내에서는 마킹을 하지 않는 습관을 만드는 데에도 도움이 됩니다! 특히나 배변교육은 혼냈을 때 그 부작용이 더 많기 때문에 절대로 혼내지 말아주세요!
			</p>
		</div>
	</div> 
</div>	
	
</body>
</html>
