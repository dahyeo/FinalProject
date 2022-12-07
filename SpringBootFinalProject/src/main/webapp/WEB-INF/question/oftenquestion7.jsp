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
	<p style=" font-size:17px; font-weight:500; color:#999999; line-height: 30px;">분리불안 관련 최다 질문</p>	
	<p style="font-size: 32px; font-weight: 600; line-height:35px; color:black; ">가족이 외출하면 짖고, 집에서 하루종일 따라다녀요</p>
	<p style="font-size:17px;color:#999999;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word;margin-bottom: 0">
	- 보호자님이 외출 시에 짖고 하울링이 있어요
	- 다른 가족이 있어도 제가 나가면 낑낑대요
	- 호텔링을 맡기면 스트레스만 받다 와요
	- 집 안에서도 화장실이나 방 모든 곳을 따라다녀요
	</p>
	<br><hr><br>
		<div style="margin-top:18px;margin-bottom:55px">
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500"><i class="bi bi-record-circle-fill"></i> 원인 분석</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			반려견들이 무언가와 분리됐을 때 느끼는 불안한 마음을 분리불안 이라고 하는데요, 그 무언가가 사람일수도 있고, 동물일수도 있고, 물건일 수도 있습니다. 분리불안의 증세는 짖음, 파괴행동, 음식을 먹지않음, 아무것도 하지 않음 등 여러가지 행동으로 표현됩니다.
			
			분리불안은 보통 보호자님과 너무 많은 것을 하게 될수록 의지하는 성향이 강해져 분리불안이 발생하게 됩니다. 보호자와 함께 잠을 자고, 보호자 옆에서만 쉬고, 보호자와만 놀고 했을 때 분리불안이 쉽게 발생하게 됩니다. 혼자 남겨졌을 때 뿐만 아니라 집에 다른 보호자가 있는데도 특정 보호자가 사라지면 낑낑거린다면, 분리불안 증상이 있을 걸로 판단됩니다.
			* 누구인지는 상관없이 사람or반려견 누구라도 있으면 괜찮다면 분리불안이 아닌 혼자 남겨진 것에 대한 두려움으로 조금 다른 방식의 교육이 필요합니다.
			</p>
		</div>
		
		<div style="margin-top:18px;">
			
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500;marg8in-top: -1"><i class="bi bi-record-circle-fill"></i> 솔루션 제안</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			분리불안 교육은 정말 오랜 시간 꾸준히 교육하셔야 하는 교육이고, 문제행동이 없어진다고 해서 그만두는 것이 아니라 반려견과 함께 사는 동안 꾸준하게 지켜야 할 교육입니다. 한 두가지 방법으로 개선되기 보다는 생활방식변경과 분리연습, 외출연습 등 여러가지면에서 교육이 이루어져야 합니다.

			✔ 잠자리 분리하기
			✔ 제한급식하기
			✔ 하우스 훈련하기
			✔ 놀이방식 변경과 스킨십 줄이기
			✔ 외출연습하기
			✔ 평소에도 분리되는 연습하기
			
			1. 밀어내기와 하우스 교육
			평소에도 보호자님만 따라다니고, 옆에서만 자고 쉴려고 한다면 보호자님이 사라졌을 때 당연히 불안해집니다. 그래서 평소에도 잠자리를 분리하고, 보호자님 옆에서 자꾸 쉬지 못하도록 밀어내 주시면서 동시에 반려견만의 자리를 만들어주고 그 자리에 가면 칭찬받고 간식도 먹을 수 있게 해주세요. 스스로 자기자리로 가서 쉬는 아주아주 건강한 행동이 나타것을 보게 되실거에요!
			
			2. 혼자서도 할 수 있는 놀이를 통해 자립심 심어주기
			노즈워크 놀이를 하거나 보호자님께서 TV를 보거나 할 때에도 옆에서 지켜보거나 반려견을 무릎 위에 올려 두지 마시고, 은근슬쩍 떨어져 보세요. 보호자 옆에서만 놀이를 하는 것이 아닌, 혼자서도 활동하고 그에 대한 보상으로 간식도 획득하면서 자신감이 올라갈 수 있고, 보호자의 옆보다 자기자리로 갔을 때 더 편하게 쉴 수 있다는 기억을 심어주세요. 또한, 보호자님 외의 사람과 놀이를 하거나 간식을 먹는 등의 기억도 자주 심어주시면 좋습니다.
			
			3. 외출 연습하기
			실제 외출 말고도 평소에도 외출연습을 통해 반려견의 흥분도를 낮춰주세요. 꼭 현관문이 아니라 방과 방사이도 좋습니다, 반려견을 두고 문을 통해 나가고 들어오는 연습을 하시는데 그 떨어져 있는 시간은 1초 7초 3초 10초 이렇게 랜덤하게 하시고, 짖지 않고 참을 수 있을 정도의 시간으로 연습하여야 합니다! (짖을 때 문을 열고 들어가면 안돼요) 들어가셔서도 문 열자마자 바로 칭찬하는 것이 아니라 아무렇지 않게 들어와야 합니다.
			평소에 외출 후 집에 들어고 나갈 때에도 너무 반갑게 인사하지 말아주세요!
			
			분리불안 교육의 가장 중요한 부분은 보호자의 ‘인내심’ 입니다. 보호자가 온세상의 중심이었던 반려견에게 어느날 갑자기 독립하라고 하면 당연히 이해하지 못합니다. 모든 교육은 충분히 반려견이 이해하고 받아들이는게 확실했을 때 조금씩 단계를 넘어가야 합니다. 분리불안이 있던 기간이 길수록 더더욱 그렇습니다. 보호자가 포기하지 않는 한 꾸준한 교육에는 성과가 있기 마련입니다, 반려견과 행복한 반려 생활을 응원합니다!
			</p>
		</div>
	</div> 
</div>	
	
</body>
</html>
