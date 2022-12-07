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
	<p style=" font-size:17px; font-weight:500; color:#999999; line-height: 30px;">공격성 관련 최다 질문</p>	
	<p style="font-size: 32px; font-weight: 600; line-height:35px; color:black; ">빗질하거나 만질 때, 손이나 발을 자꾸 깨물어요</p>
	<p style="font-size:17px;color:#999999;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word;margin-bottom: 0">
	- 빗질할 때 입질을 해요
	- 산책 후 발을 닦이거나 목욕을 할 때 입질을 해요
	- 산책 줄을 맬 때 입질을 해요
	- 만져달라고 해서 만져주는데 갑자기 으르렁대요
	</p>
	<br><hr><br>
		<div style="margin-top:18px;margin-bottom:55px">
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500"><i class="bi bi-record-circle-fill"></i> 원인 분석</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			반려견들이 싫다는 감정을 무는 것으로 표현하기까지 분명 단계가 있었을 것입니다. 처음에는 싫다고 혀를 낼름거리며 표현하다가 그다음엔 발버둥쳐보고, 그래도 안되면 으르렁도 대고보, 그러다 무는것으로까지 표현하게 됐을것입니다.

			반려견이 싫다는 내색을 했을 때 "싫어하니까 하지 말아야겠다"가 아니라 "싫어하네? 이거 별거 아니라고, 괜찮다고 알려주고 좋아하게 만들어줘야겠다"라고 생각해 주면서 꾸준하게 교육을 진행해 주세요. 반려견이 매너있게 감정을 표현할 때 보호자가 그것을 알아주어야 쉽게 으르렁거리고 공격하는 반려견이 되지 않습니다.

			그리고 이미 보호자의 손길에 어느정도 부정적인 인식이 심어져 있어, 보호자가 무언가를 하려고 하면 믿고 따라오는게 아니라 의심하면서 일단 피하려고 한다는게 문제입니다. 손에 대한 재인식과 더불어 스킨십에 대한 긍정적 교육이 필요합니다!
			</p>
		</div>
		
		<div style="margin-top:18px;">
			
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500;marg8in-top: -1"><i class="bi bi-record-circle-fill"></i> 솔루션 제안</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			기본적으로 스킨십에 예민한 반려견들은 평소에도 스킨십자체를 많이 줄이셔야 합니다. 평소에도 안아주거나 쓰다듬는 행위를 많이 줄여주세요!
			특히 엎드려 쉬고 있을 때는 더욱 만지지 말아주세요. 더불어 사람 손에 대한 좋은 기억을 심어주기 위해서는 평소에 손으로 혼내는 행동을 자제하시고, 손에 대한 좋은 기억심기교육을 해주세요. (손가락으로 휘두르며 혼내지 않기, 코때리기나 억지로 안지 않기, 주둥이 잡기 등)
			
			물렸을 때 손을 피하거나 행동을 멈추거나 화를 내면 반려견은 순간적으로 문제가 해결됐다고 생각하거나 오히려 더 부정적인 생각을 하게 될 수 있습니다. 그래서 보호장갑을 착용하셔서 혹시 물리더라도 크게 반응하지 않아야 합니다. (물어도 보호자는 흔들리지 않으며, 무는 걸로 문제를 해결할 수 없음)
			동시에 손에 대한 좋은 기억과 스킨십 연습을 해주셔야 합니다.
			
			✔ 손터치 교육을 진행해 주세요
			- 칭찬구호를 정해주세요 (옳지, 잘했어, 오케이 등등)
			- 손바닥을 내민 뒤 반려견이 손바닥 냄새를 맡으러 고개를 내밀거나 코를 손바닥에 대면 옳지라고 말한 뒤 간식을 툭 던져주세요.
			- 다시한번 손을 접을 접었다가 다시 손바닥을 내밀고 냄새를 맡으면 간식을 주세요
			- 사람 손을 관심을 갖고 터치하면 오히려 좋은 일이 생긴다는 기억을 심어줄 수 있습니다. (이때 혹시 손바닥에 전혀관심이 없다면 손바닥에 간식냄새를 살짝 묻혀 힌트를 줄 수 있습니다)
			
			✔ 빗질 교육하기
			- 빗을 꺼내 바닥에 두고 주변에 간식을 뿌려준 뒤 다 먹고나면 빗을 치워줍니다. ( 빗이라는 물건 자체에 긍정적 기억심어주기)
			- 빗=간식 이라는 생각이 쌓이면 빗을 꺼내기만 해도 기분이 좋아집니다.
			- 앉아를 시킨 뒤 빗을 보여주고 냄새를 맡으면 칭찬구호 -> 간식을 툭 던져줍니다.
			- 앉아를 시킨 뒤 빗을 살짝 몸(머리, 목, 등, 발 등 중에 가장 괜찮아 하는 부분) 에 살짝 댔다가 바로 떼어준 뒤 칭찬구호 -> 간식을 줍니다.
			- 빗을 몇초정도 댔다가 칭찬구호 -> 간식
			- 빗을 살짝 쓰윽 움직인 뒤 칭찬구호 -> 간식
			- 빗을 두어번 쓰윽 움직인 뒤 칭찬구호 -> 간식
			- 부위를 점점 예민한 부분으로 조금씩 범위를 넓혀갑니다.
			* 이때 혹시라도 입을 대거나 뒤로 빠지는 등 불편한 신호를 보인다면, 좀 더 쉬운 단계에서 충분히 연습해 주셔야 합니다!
			
			✔ 발 닦기 연습하기
			- 보호자님 손바닥 위에 앞발을 올리는 손 개인기를 먼저 가르칩니다.
			- 처음에는 손바닥을 살짝 터치만해도 간식
			- 손바닥 위에 1-2초 머물면 간식
			- 손바닥 위에 1-2초 머물때 아주 살짝 쥐어본 뒤 다시 피고 간식
			- 손바닥 위에 1-2초 머물 때 살짝 쥐어본 뒤 살짝 주물럭 대는 느낌만 주고 간식
			- 손바닥 위에 물티슈를 올리고, 손바닥 살짝 터치하는 부분부터 다시 반복합니다.
			* 이런식으로 보호자님이 반려견의 발을 억지로 잡는게 아니라 반려견이 자신의 발을 보호자님의 손에 얹는 것으로 변경해 주셔야 하고, 처음에는 깨끗하게 발을 닦는다기보다는 연습을 목적으로만 해주세요.
			* 마찬가지로 혹시 발을 빼거나 싫어하는 신호를 보낸다면, 좀 더 쉬운 이전단계에서 충분히 연습해 주세요.
			
			공격성은 보호자님께서 겁을 먹거나 두려움이 생기는 순간 교육하시기가 정말 힘들어 집니다. 혹시, 보호자님께서 혼자 해결하기 힘드시다면 꼭 전문가의 도움을 받아 더 행동이 습관해 되기전에 빠른 시일 내 개선해 나가시기를 추천드립니다! 
			</p>
		</div>
	</div> 
</div>	
	
</body>
</html>
