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
	<p style=" font-size:17px; font-weight:500; color:#999999; line-height: 30px;">사회성 관련 최다 질문</p>	
	<p style="font-size: 32px; font-weight: 600; line-height:35px; color:black; ">다른 반려견을 무서워하거나 공격적으로 반응해요</p>
	<p style="font-size:17px;color:#999999;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word;margin-bottom: 0">
	- 다른 반려견을 보고 짖어요.
	- 다른 반려견을 무서워해요.
	- 다른 반려견에게 공격적이에요
	</p>
	<br><hr><br>
		<div style="margin-top:18px;margin-bottom:55px">
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500"><i class="bi bi-record-circle-fill"></i> 원인 분석</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			천성적인 성향과 사회화 시기 때 다른 반려견과의 교류 부족, 타 반려견에게 잘못된 놀이, 인사 방법 학습 등이 이루어지는 경우가 있으며 사건, 사고의 경험으로 인해 트라우마로 특정 반려견에게 무서워하게 되는 경우가 있습니다.
			</p>
		</div>
		
		<div style="margin-top:18px;">
			
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500;marg8in-top: -1"><i class="bi bi-record-circle-fill"></i> 솔루션 제안</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			반려견끼리의 사회성은 우리 사람이 조작적으로 개선해주기란 매우 어렵습니다. 대신, 타 반려견에게 익숙해질 수 있도록 환경을 조성해주어야 합니다.

			1. 당분간 애견 카페, 운동장의 방문을 지양해주세요.
			애견 운동장, 카페, 유치원의 경우 반려견이 피하고 싶으면 피할 수 있는 환경이 부족합니다. 보호자님과 함께 있다고 하더라도 긴장되는 상황이 생길 때마다 보호자님 품으로 도망가는 상황이 펼쳐진다면 스스로 타 반려견에 대해 적응하려고 하지 않을 수 있습니다. 물론, 반려견 전문 관리사님이 견종과 성향, 체급을 고려하여 적절히 반려견을 분리 시켜 반려견을 케어 하는 애견 유치원이 있다면 너무 좋습니다. 다만, 최종적으로 이 모든 공간에 성향이 젠틀한 반려견들만 있다면 매우 좋겠지만 현실적으로 반려견에게 부담스러운 상황이 불가피하게 마주할 수 있으므로, 애견 유치원을 택할 경우 직접 방문하여 케어의 방법, 사회화 교육에 대한 설명과 이해를 충분히 들으신 뒤 결정하시는 것이 좋겠습니다.
			
			2. 고정적인 산책 친구를 만들어주세요.
			다양한 반려견을 많이 만나는 경험보다 '반려견 자체'의 대한 두려움을 제거해주는 것이 첫 번째입니다. 이때 상대 반려견의 경우 성향과 행동이 모두 형성 된 2살 이상의 반려견이며 다른 반려견에게 크게 관심이 없는 반려견일 수록 좋습니다. 같이 붙어서 산책을 하지 않아도 상관 없습니다. 간격을 두고 서로 그림자처럼 산책을 하기도 하고 서로 교차하기도 하는 경험을 가져 주세요. / 모르는 반려견의 뒤를 15m-20m 거리를 두고 뒤를 쫓아가며 상대 반려견이 있던 장소(마킹)에서 냄새를 맡는 것도 큰 도움이 됩니다 :)
			* 서로의 장난감(공, 인형)을 만나기 전 서로 교환하는 경험을 해주세요. 타 반려견에 대한 정보를 간접적으로 느끼는 것에 큰 도움이 됩니다.
			
			✔ 보호자님의 적절한 대처 방법
			다른 반려견이 달려드는 상황 및 위험한 상황이 아니라면 안아주지 않도록 해주세요. 다른 반려견이 다가올 때 안아주는 것이 습관 되면 스스로 해결하지 않고 보호자님에게만 의지하려고 할 것입니다. 스스로 인사를 하고 싶으면 하고, 피하고 싶으면 피할 수 있도록 유도 정도만 해주세요. 이름을 부르거나 눈을 마주칠 필요 없습니다. 줄만 꼬이지 않게 해주세요.
			* 반려견이 서로 냄새를 맡고 있을 때 줄이 계속 당겨진다면 긴장도가 올라갑니다. 줄은 항상 느슨한 상태여야 하는 점 기억해주세요!
			
			이 밖에도 각종 상황과 반려견의 성향, 보호자님의 생활 습관 등에 따라 교육 방법이 달라지거나 추가해야 할 사항이 있을 수 있습니다. 직접적인 전문가의 도움을 받아보시는 것을 권장 드립니다 :-) 위 내용 중 이해가 안되거나 교육하시면서 어려운 일이 있다면 언제든지 추가 질문 해주세요! 그럼 행복한 반려 생활이 되시기를 바랍니다.
			</p>
		</div>
	</div> 
</div>	
	
</body>
</html>
