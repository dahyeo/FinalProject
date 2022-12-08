<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
<style type="text/css">
body{

overflow-x: hidden;

}

#img1{


 
  width: 100%;
  height:600px;
 opacity: 0.8;

}



button.btn2 {
  position: absolute;
  top: 400px;
  left : 200px;
   z-index: 1;
   border-radius: 20px;
   font-size: 25px;
}

div.ques{

position: absolute;
top: 150px;
left : 200px;
width: 100%;
height: auto;
font-size: 40px;

}

div.answer1{

position: absolute;
top: 650px;
left : 300px;
width: 100%;
height: auto;
font-size: 25px;

}

div.answer2{

position: absolute;
top: 630px;
left : 800px;
width: 100%;
height: auto;
font-size: 20px;

}


body * { font-family: 'Spoqa Han Sans Neo', 'sans-serif'; }

.number {
  width: 150px;
  height: 150px;
  margin: 0 auto;
 
  font-size: 100px;
  list-style: none;
  text-align: center;
  margin-top: 50px;
  color: #333;

}

div.hun{

position: absolute;
top: 700px;
left : 300px;
width: 100%;
height: auto;
font-size: 25px;
}

div.count_num{
position: absolute;
top: 700px;
left : 900px;
width: 100%;
height: auto;
font-size: 25px;
}

#img3{

position: absolute;
top: 900px;
left : 30px;
width: 100%;
height: auto;
font-size: 25px;

}
</style>


</head>
<body>
<img alt="" src="${root }/image/partner.png" width="700px;" height="300px;" id="img1">
<button type="button" class="btn btn-primary btn2" onclick="location.href='/partnerService/form2'" style="width: 300px; height: 80px; background-color: #6789F5; border:#6789F5;">펫시터 지원하기</button>

<div class="ques" style="border: none;">
<b>펫시터 모집중</b><br><br>
<div style="border: none; font-size: 20px;"  >
사랑스러운 강아지, 고양이를 돌보며 <br>
혼자 남겨진 반려동물에게 행복한 시간을 선물해볼까요?
</div>
</div>

<div style="width: 100%; height: 300px; background-color: #f8f8f8; border: none;">

<div class="answer1" style="border: none;"><br><br>
<b>예약 관리와 정산까지<br>
서비스 교육도 함께해요</b>
</div>


<div class="answer2" style="border: none;"><br><br>
<span style="color: gray;">
고객 예약 관리, 라이브 중계, 수입 통계, 페이지 관리 등 앱 내의 다양한 기능들을<br>
세부적으로 알려드려 펫시터로 어려움 없이 활동할 수 있도록 하고 있습니다.<br>
또한, 상황별 대처방법과 펫시팅 단계별 주의 사항 및 방법 등을 통해<br>
펫시터로 전문적으로 활동하는데 있어 어려움이 없도록 도와드립니다.
</span>
</div>

</div>
<img alt="" src="${root }/image/t1.png" width="700px;" height="200px;" id="img3">
</body>
</html>