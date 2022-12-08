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
	<p style="font-size: 32px; font-weight: 600; line-height:35px; color:black; ">산책을 나가면 움직이지 않거나 무서워해요</p>
	<p style="font-size:17px;color:#999999;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word;margin-bottom: 0">
	- 산책 시에 움직이지 않아요.
	- 사람이나 다른 반려견을 만나면 뒤로 숨거나 피하려고 해요.
	- 오토바이나 자동차가 지나가면 긴장하며 도망가려고 해요.</p>
	<br><hr><br>
		<div style="margin-top:18px;margin-bottom:55px">
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500"><i class="bi bi-record-circle-fill"></i> 원인 분석</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			반려견의 성향과 사회화 교육의 부재, 사건 사고의 계기등 다양한 이유로 산책을 원활하게 진행하지 못하는 경우가 있습니다. 
			또한, 이러한 성향을 개선하여 주기 위해 애견 카페, 애견 운동장, 사람이 많은 공원 등에 방문하여 익숙해지게끔 하는 노력들이 어쩌면 상황을 악화될 수도 있어, 적절한 산책 적응 교육이 필요합니다.</p>
		</div>
		
		<div style="margin-top:18px;">
			
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500;marg8in-top: -1"><i class="bi bi-record-circle-fill"></i> 솔루션 제안</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			1. 산책을 나가지 않더라도 줄을 착용하는 경험을 시켜주세요.
			산책을 무서워하는 반려견은 산책 줄을 착용하는 순간부터 긴장을 할 수 있습니다. 흥분과 긴장을 최대한 낮춘 상태에서 산책을 시작한다면 보다 수월한 산책 교육이 될 수 있습니다. 따라서, 산책을 나가지 않더라도 평소에 갑자기 줄을 착용하고 생활하다가 다시 줄을 풀어주는 등의 경험이 이루어진다면 평소보다 줄을 착용하는 것에 대해 긴장을 덜게 될 수 있습니다.
			
			2. 자극적이지 않은 산책 하기
			반려견은 자신이 불편한 자리에서는 엎드리는 행동을 하기 싫어합니다. 따라서 보호자님께서 방석이나 간이 의자를 복도에 두고 앉아 있는 모습을 보여 준다면 훨씬 더 편안한 경험이 될 수 있습니다. 바깥에서 쉴 때 지속적으로 반려견을 쳐다보거나 부를 필요는 없습니다. 책을 보셔도 좋으니 계단 또는 야외에서 머무르는 시간을 최소 10~20분까지 머물러주세요.
			* 교육 도중 사람이 나타나거나, 소음이 많이 나는 경우 원활한 교육에 큰 방해가 됩니다. 사람의 왕래가 적은 이른 아침(새벽 5시~아침 7시) 늦은 저녁 (저녁 11시 ~ 새벽 1시) 사이 산책을 진행 해주세요.
			
			3. 길게 자극을 노출하는 것보다 짧더라도 자주 꾸준히 반복하는 것이 중요합니다. 
			5분도 좋습니다. 바깥을 나가는 것이 정말 아무것도 아니라는 것을 알려주기 위해서는 이러한 노력이 필요하므로, 하루 최소 2~3번 이상 계단, 집 앞 공원 등을 짧게라도 다녀와 주세요. 산책을 끝내면서 집으로 돌아올때는 후다닥 들어오는 것이 아닌, 여유롭게 들어오도록 해주세요. 빠르게 집으로 도망치듯 들어오게 된다면 바깥의 자극들을 도피하는 것으로 밖에 인식이 되지 않습니다. 줄을 당기면 제자리에 멈춰 앉아주시고, 집으로 들어간 이후 다시 밖으로 나와 5분 정도 바깥에서 머무른 뒤 다시 집으로 들어가 주세요.
			
			4. 짧더라도 꾸준히 반복해주세요.
			일반 반려견처럼 산책하는 모습을 기대하는 것은 힘들 수 있습니다. 단기간에 나아지는 것을 기대하기 보다는 점진적으로 나아가는 것으로 이해해주시면 좋겠습니다. 30분 이하 - 10분, 20분 만에 다시 집으로 돌아와도 상관 없습니다. 바깥을 두려워하지 않아도 된다는 것을 음성이 아닌 행동으로 보여주세요.
			
			5. 익숙한 산책로 설정하기
			반려견은 자신이 익숙하고 아는 공간에서는 훨씬 편안함을 느낄 수 있습니다. 당장 새로운 산책로를 설정하여 이동하는 것보다 한적하고 자극이 덜한 산책로를 지정하여 그 구간을 반복하는 산책을 해주세요. 점차 개선이 된다면 다른 산책로까지 넓히는 것으로 천천히 진행해주시는 것이 좋겠습니다.
			* 산책로 중간에 친숙한 물건(보호자님의 물건, 장난감 등)을 미리 산책로에 놓고 산책 때 찾게 해준다면 훨씬 더 안정적인 경험이 될 수 있습니다.
			
			트라우마, 두려움이 있는 문제는 많은 시간과 노력이 필요합니다. 교육하시면서 어려운 사항이나 추가 질문 사항이 있으시다면 편하게 질문 남겨주세요! 그럼 행복한 반려 생활 되시기를 바랍니다.
			</p>
		</div>
	</div> 
</div>	
	
</body>
</html>
