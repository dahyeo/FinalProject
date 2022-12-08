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
  height: auto;
 opacity: 0.8;
 
}



button.btn1 {
  position: absolute;
  top: 400px;
  left : 200px;
   z-index: 1;
   border-radius: 20px;
   font-size: 25px;
}


div.ss {
  position: absolute;
  top: 150px;
  left : 200px;
   z-index: 1;
   border-radius: 20px;
   font-size: 40px;
}

div.ques{

position: absolute;
top: 600px;
left : 200px;
width: 100%;
height: auto;
font-size: 25px;

}

#img2{

position: absolute;
top: 1000px;
left : 30px;
width: 100%;
height: auto;
font-size: 25px;

}

div.answer{

position: absolute;
top: 800px;
left : 200px;
width: 100%;
height: auto;
font-size: 20px;

}



body * { font-family: 'Spoqa Han Sans Neo', 'sans-serif'; }


</style>


</head>
<body>
<button type="button" class="btn btn-primary btn1" onclick="location.href='trainerform'" style="width: 300px; height: 80px; background-color: #6789F5; border:#6789F5;">훈련사 지원하기</button>

<img alt="" src="${root }/image/list1.png" width="700px;" height="300px;" id="img1">
</body>
<div class="ss" style="border: none;">
<b>훈련사 모집중</b><br><br>
<div style="border: none; font-size: 20px;"  >
좋아하는 일 하며 수익을 얻어요.<br>
여러분의 지원을 기다립니다.
</div>
</div>
<div class="qa" style="width: 100%; height: 300px; background-color: #f8f8f8; border: none;">
<div class="ques" style="border: none;"><br><br>
<b>Q. 반려동물 훈련사는 무슨 역할을 할까요?</b>
</div>

<div class="answer" style="border: none;">
A. 반려동물의 행동학적 전문 지식과 카밍 시그널을 통하여 <br>
 &nbsp;&nbsp;&nbsp;&nbsp;   반려동물의 문제행동을 교정하고 교육 방법을 상담 또는 직접 행동교정 등의 교육을 실시하여 <br>
 &nbsp;&nbsp;&nbsp;&nbsp;   반려동물과 행복하게 생활할 수 있도록 도와주는 역할을 합니다.
</div>
</div>
<img alt="" src="${root }/image/t1.png" width="700px;" height="300px;" id="img2">
</html>