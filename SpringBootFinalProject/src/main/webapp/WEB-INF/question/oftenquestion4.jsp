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
	<p style="font-size: 32px; font-weight: 600; line-height:35px; color:black; ">배변을 먹거나 가지고 노는 등 식분증이 있어요</p>
	<p style="font-size:17px;color:#999999;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word;margin-bottom: 0">
	- 배변을 먹어버려요
	- 대변을 가지고 놀아요
	</p>
	<br><hr><br>
		<div style="margin-top:18px;margin-bottom:55px">
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500"><i class="bi bi-record-circle-fill"></i> 원인 분석</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			식분증의 원인에 앞서 한 가지 설명을 드리자면, 강아지의 배변 활동은 사람처럼 단순한 활동이 아닌, 감정의 표현이기도 합니다. 대표적으로 소변으로 마킹을 하는 영역표시가 그렇습니다. 그래서 반려견들에게 배변 문제가 있을 때는 심리적인 접근이 중요합니다!

			✔️ 다양한 반려견 식분증의 원인
			- 맛있어서 맛으로 먹음
			- (식탐이 강해) 배변 외에도 대부분을 입으로 삼킴
			- 두려움으로 흔적을 없애기 위해 (배변으로 혼났던 기억 등)
			- 스트레스 성
			- 심심해서 (재미, 놀이로)
			- 기타 등등			
		</p>
		</div>
		
		<div style="margin-top:18px;">
			
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500;marg8in-top: -1"><i class="bi bi-record-circle-fill"></i> 솔루션 제안</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			반려견이 어디에서 입양되었는지도 영향이 있을 수 있습니다, 어린 퍼피 시기에 좁은 공간에 갇혀 있는 시간이 길었다면 식분증이 생겼을 확률이 높아집니다.
			호기심이 많은 어린 나이에 좁은 공간(유리장이나 울타리 등 좁은 공간)에서는 활동 공간에 제한이 생길 수밖에 없고 식기와 배변판, 담요 정도만 있는 공간에서 새롭게 추가되는 것은 자신의 대변이었을 겁니다.
			처음엔 호기심에 장난으로 가지고 놀던 것이 식분증으로 이어졌을 수도 있습니다.
			
			혹여 그렇지 않더라도 퍼피들에게 식분증은 꽤 많은 확률로 나타납니다.
			호기심이 많고, 식탐이 많을 수록 더욱 그렇습니다.
			식분증에 딱 한 가지 정확한 방법이 있는 것은 아니기 때문에 여러가지 방법을 적용해 보시는 것이 좋습니다.
			
			✔ 배변활동 뒤에 절대로 혼내지 마세요. 어차피 반려견이 왜 혼나는지 아이들은 알 수도 없고, 부정적 표현은 오히려 부작용으로 이어집니다. (식분증, 사람이 없을 때만 배변을 봄, 배변을 보면서 움직임 등)
			✔ 배변 후에 바로 대변을 치워주어 대변을 먹지 않는 것이 습관이 되게 할 수도 있습니다.
			✔ 배변 장소가 생활 공간에서 너무 가깝지 않은지 확인해 주세요. 가까이에서 배변 장소가 있다면 접근성이 좋아 호기심을 가질 확률이 더 높습니다.
			✔ 배변 후에 패드가 아닌 장소의 바닥에 간식을 주세요.
			✔ 맛있는 간식을 주지 않는 것이 좋습니다. 사료외 고기등의 맛있는 간식을 주고 대변을 보면 대변에서도 맛있는 냄새가 나기 때문에 맛으로 먹을 수 있습니다.
			✔ 식사량이 적지 않은지 체크해 주세요.
			✔ 대변을 야외에서 할 수 있게 해주세요. 야외 대소변 자체만으로 식분증이 사라집니다.
			(특히, 새벽 시간때 대변을 자주 먹는다면 자기전에 짧은 대소변 산책을 통해 배변을 보게 해주면 도움이 됩니다.)
			
			이정도의 규칙만 지켜주셔도 식분증은 시간이 지나면 자연스럽게 사라집니다!
			
			마지막으로, 혹시 반려견의 나이가 아직 어리다면 사회화 교육이 정말 중요할 시기입니다. 식분증의 문제는 위의 규칙만으로도 자연스럽게 사라질 수 있기 때문에 이외의 사회화 교육에도 많이 신경 써 주시기를 간절히 부탁 드립니다!!
			</p>
		</div>
	</div> 
</div>	
	
</body>
</html>
