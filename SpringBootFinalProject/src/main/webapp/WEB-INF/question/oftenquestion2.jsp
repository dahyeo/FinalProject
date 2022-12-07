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
	<p style=" font-size:17px; font-weight:500; color:#999999; line-height: 30px;">산책 관련 최다 질문</p>	
	<p style="font-size: 32px; font-weight: 600; line-height:35px; color:black; ">산책을 나갈 때나 산책할 때 주변을 향해 짖어요</p>
	<p style="font-size:17px;color:#999999;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word; margin-bottom: 0">
	- 산책할 때 다른 반려견을 향해 짖어요
	- 산책할 때 다른 사람을 향해 짖어요
	- 오토바이나 킥보드 탄 어린이 들이 지나갈 때 짖어요
	- 산책을 나가는 복도에서부터 계속 짖어요</p>
	<br><hr><br>
		<div style="margin-top:18px;margin-bottom:55px">
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500"><i class="bi bi-record-circle-fill"></i> 원인 분석</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			산책 시 여러 자극들이 있어 산책을 나가는 순간부터 긴장과 흥분 짖음이 발생 할 수 있습니다. 이외 아래와 같은 내용의 원인이 있을 수 있습니다.
			
			1. 상대와 만나고 싶어서, 놀자는 신호
			막상 만나면 공격적인 모습이 아닌, 냄새를 맡고 호의적인 모습이라면 상대에 대한 관심의 표현이 잘못 변질이 되었을 수 있습니다. 이러한 이유라도 상대방이 위협적으로 받아 들여 잘못된 방향으로 이어질 수 있으므로, 상대에게 짖을 경우 만날 수 없거나, 상대방이 싫어한다는 것을 교육해주어야 할 필요가 있습니다.
			
			2. 두려움, 방어적 신호
			새로운 대상과의 만남이 있을 때 두렵거나 긴장을 하게 될 경우 스스로를 보호하기 위해 예민하게 반응을 하는 경우가 있습니다. 새로운 대상과의 만남, 경험을 좋은 기억으로 연결 시켜주어야 할 필요가 있습니다.</p>
		</div>
		
		<div style="margin-top:18px;">
			
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500;marg8in-top: -1"><i class="bi bi-record-circle-fill"></i> 솔루션 제안</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			1. 원활한 산책을 위한 기본 구성
			자동줄 사용은 요구적 행동과 줄의 텐션으로 긴장도가 항상 올라갈 수 있습니다. 자동줄을 사용한다면 고정 리드줄로 교체해주세요. 실내에서 보호자님 신호에 집중하는 연습을 해주세요. 이름> 눈 마주침 > 보상 - 이 교육 진행이 원활하게 된다면 야외에서 진행을 해주시고 교육 효과를 높이기 위해, 제한 급식, 교육 시 사료 급여량으로 대체 등 음식에 대한 특별함을 높여주세요.
			
			2. 보호자 신호에 집중 하는 연습하기
			실내에서 이름을 부르고 눈을 마주치는 연습을 통해 바깥에서 여러 자극이 있을 때 보호자님의 신호에 집중할 수 있도록 해주세요. 단순히 <이름 → 눈 마주침 → 간식> 방법을 반복 해주시고 이때, 반려견의 이름은 하이톤으로 짧고 간결하게 불러주시고 좋아하는 간식을 통해 보상해주시면 좋겠습니다.
			
			3. 산책을 나가지 않더라도 줄을 착용하는 경험을 시켜주세요.
			산책을 무서워하는 반려견은 산책 줄을 착용하는 순간부터 긴장을 할 수 있습니다. 흥분과 긴장을 최대한 낮춘 상태에서 산책을 시작한다면 보다 수월한 산책 교육이 될 수 있습니다. 따라서, 산책을 나가지 않더라도 평소에 갑자기 줄을 착용하고 생활하다가 다시 줄을 풀어주는 등의 경험이 이루어진다면 평소보다 줄을 착용하는 것에 대해 긴장을 덜게 될 수 있습니다.
			
			4. 보호자님의 적절한 대처 방법
			여러 상황에서 반려견이 짖고 흥분 할 경우 위험한 상황이 아니라면 안아주지 않도록 해주시고, 여러 차례 반려견의 이름을 부르지 않도록 해주세요. 안아주거나 여러 차례 이름을 부르게 될 경우 문제 행동에 대해 동조하는 것으로 받아 들일 수 있으며 혼내게 될 경우도 마찬가지로 자신의 행동이 아닌 대상 때문에 혼났다고 생각하게 될 수 있으므로 이점 유의해주시고, 줄을 살짝 당겨도 좋으니, 자극적인 공간에서 벗어나 주는 정도로만 대처해주세요. 이때 최대한 의연한 태도를 보여주세요. 가장 좋은 방법은 위의 말씀드린 내용을 토대로 미리 방어적인 산책을 통해 자극적인 요소들을 거리를 두고 점진적으로 적응 할 수 있도록 도와주는 것입니다.
			
			짖음 문제의 경우 주변 환경에 대한 애로 사항이 있어 더욱 많은 노력이 필요합니다! 교육하시면서 어려운 사항이나 추가 질문 사항이 있으시다면 편하게 질문 남겨주세요! 그럼 행복한 반려 생활 되시기를 바랍니다.
			</p>
		</div>
	</div> 
</div>	
	
</body>
</html>
