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
	<p style=" font-size:17px; font-weight:500; color:#999999; line-height: 30px;">기본 예절 관련 최다 질문</p>	
	<p style="font-size: 32px; font-weight: 600; line-height:35px; color:black; ">양말이나 옷을 물거나 손발을 물어요</p>
	<p style="font-size:17px;color:#999999;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word;margin-bottom: 0">
	- 만져줄 때 자꾸 손을 물어요
	- 양말이나 옷가지 등을 물고 당겨요
	- 움직이거나 쉬고 있을 때 발을 물려고 해요
	</p>
	<br><hr><br>
		<div style="margin-top:18px;margin-bottom:55px">
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500"><i class="bi bi-record-circle-fill"></i> 원인 분석</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			어린 강아지의 경우 입으로 깨물고 뛰어놀면서 놀이를 하는 것이 정상입니다! 이갈이시기와 겹쳐 더욱 그런 행동들이 나타나게 되는데요, 어느정도가 살살무는 것이고 어느정도가 쎄게 무는 것인지 어떨때는 물면 안되는지 등을 모견과 동배들 사이에서 자라며 자연스럽게 배우게 됩니다.
			하지만, 보호자님께 입양되면서 그런 과정이 생략되게 됩니다. 그래서 이 시기때 무는 정도의 조절과 의미를 배우지 못하면 깨무는 행동이 점점 심해지면서 문제행동으로 발전되기도 합니다.
			
			장난감 놀이를 통해 입을 쓰고자 하는 욕구는 해소해 주면서, 바디블로킹을 통해 보호자님의 손/발/옷가지 등을 무는 행동을 제지해 주셔야 합니다. (바디블로킹을 하실 때에는 쓰읍! 안돼! 코때리기 등의 행동은 하지 말아주세요)
			</p>
		</div>
		
		<div style="margin-top:18px;">
			
			<h3 style="font-size:17px;letter-spacing:-0.1px;color:#999999;font-weight:500;marg8in-top: -1"><i class="bi bi-record-circle-fill"></i> 솔루션 제안</h3>
			<p style="font-size:17px;color:#333333;line-height:28px;word-break:keep-all;white-space:pre-line;text-align:left;word-wrap:break-word">
			1. 혹시 손으로 놀아준 적이 있으시다면 앞으로는 손으로는 놀아주지 않으셔야 합니다!
			2. 아파서 피하려는 행동이 반려견 입장에서는 앞뒤로 막 소리내면서 움직이는 아주 신나는 장난감 같아 보일 수 있기 때문에 거절을 하시려면 말은 하지 않고 간결한 바디블로킹을 통해 반려견이 이해할 수 있게 알려주어야 합니다.
			3. 물어도 되는 것과 물면 안되는 것을 구분하고, 물어도 되는 것은 더욱 신나게 놀아주세요!
			4. 터그 놀이를 통해 입을 쓰고자 하는 욕구는 해소시켜 주시고, "놔"or"아웃" 교육을 통해 물건을 스스로 놓는 연습도 꼭 해주세요!
			
			✔ 앉아 있을 때 손과발을 깨문 다면 벌떡 일어나세요.
			✔ 손과 발을 빼면서 피하지 마시고, 차라리 손을 팔짱을 끼고 발은 가만히 바닥에 딱 붙이고 계세요 (발은 못참을 정도로 아프다면, 깨끗한 신발을 신고 연습하세요)
			✔ 이때 말은 안하시는 것이 더 좋습니다. (ex. 야~ 안돼~ 쓰읍~ 하지마 등등)
			✔ 몸으로 가로막거나 밀어내는 것을 바디 블로킹이라고 하는데, 손이나 발을 깨물 때 몸을 이용하여 (손이 아니라 팔이나 어깨로, 발이 아닌 무릎이나 몸전체로 밀어내야 함) 밀어내 주세요. 밀어내는 방향은 뒤로 피하는게 아니라 오히려 반려견쪽으로 밀어내야 합니다.
			✔ 사람 몸이 아닌, 물어도 되는 물건 = 장난감 을 가지고 신나게 놀아주세요. 물고자 하는 욕구를 충분히 해소 시켜 주어야 합니다.
			✔ 터그 장난감을 흔들며 움직이면 = 놀자는 신호이고, 터그 장난감을 가만히 멈추면 = 놓는 신호 입니다.
			물어도 될때에는 재밌는 소리도 내면서 신나게 움직여 주시고, 놓아야 할 때는 팔을 최대한 몸으로 붙여 흔들리지 않게 멈춰주세요. 놓을 때까지 기다렸다가 놓으면 바로 다시 장난감을 흔들며 놀아주세요. (놓았을 때 손해를 보는게 아니라 다시 놀이를 시작하거나 간식을 주는 등 입에 있는 물건을 놓았을 때 오히려 더 이득이라는 인식이 심어져야 합니다!)
			
			이렇게 보호자님 손발을 물때는 단호하게 멈추고 바디블로킹 해주시고, 물어도 되는 건 먼저 제안하여 신나게 놀아주는 식으로 반복하시다 보면 반려견은 금방 이해하게 됩니다.
			</p>
		</div>
	</div> 
</div>	
	
</body>
</html>
