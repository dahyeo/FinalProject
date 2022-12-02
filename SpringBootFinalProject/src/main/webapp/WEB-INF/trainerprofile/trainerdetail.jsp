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
    <script src="https://kit.fontawesome.com/4f8084f592.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style type="text/css">
body{

overflow-x: hidden;

}

#img1{

  width: 100%;
  height:400px;

}

div.part{

margin-left: 250px;
}

hr{

width: 600px;
}

#card1{

margin-right:220px;
margin-top: -780px;


}

#card2{

margin-right:220px;
margin-top: -1000px;


}

#hr2{

width: 270px;
}

#hr3{

width: 810px;
}



.img2{

  float: left;
  width: 22%;

vertical-align: bottom;
}


body * { font-family: 'Spoqa Han Sans Neo', 'sans-serif'; }
</style>
</head>
<body>
<div class="img2">

 <img alt="" src="${root }/image/tp1.png"  style="width: 900px; height: 400px;"  ></div>
<div class="img2"><img alt="" src="${root }/image/tp2.png"  style="width: 850px; height: 400px; margin-left: 500px;"></div><br>



   <c:forEach var="tdto" items="${tlist }">  <br><br><br><br><br><br><br><br><br><br><br>
   <input type="hidden" name="trainerprof_num" value="${trainerprof_num }"> 
<br><br><br><br>
<div class="part" style="border: none;"><br><br>
<b style="font-size: 30px;">${tdto.trainerprof_subject } </b><br><br>

 <span style="font-size: 22px;">
 ${tdto.trainer_name }&nbsp;훈련사</span>&emsp;
 <i class="fa-solid fa-star" style="color: #6A92FE;"></i>
 <br><br>

 <hr id="hr3"><br>
 
<i class="fa-solid fa-medal" style="font-size: 20px; color: gray;"></i> 
&emsp;<b style="font-size: 20px;">훈련사 경력</b> <br><br>
${tdto.trainer_career }<br><br><br>
<i class="fa-solid fa-clock" style="font-size: 20px; color: gray;"></i> 
&emsp; <b style="font-size: 20px;">방문 지역</b> <br><br>
 ${tdto.trainer_loc }<br><br><br>
<i class="fa-solid fa-calendar-days" style="font-size: 20px; color: gray;"></i> 
&emsp; <b style="font-size: 20px;">가능 날짜</b><br><br>
 ${tdto.trainer_date }<br><br>
 

<hr id="hr3"><br>

<b style="font-size: 20px;">훈련사님의 지원동기</b><br><br>
 <span style="font-size: 17px;">${tdto.trainer_content }</span><br><br>
 <hr id="hr3"><br>
<b style="font-size: 20px;">훈련사 소개 영상</b><br><br><br>


<iframe width="560" height="315" src="https://www.youtube.com/embed/733b_FctZiQ" title="YouTube video player"
 frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen></iframe>


 
<div class="container mt-3">

  <div class="card" style="width:300px; height:150px; border: 2px solid #dcdcdc; float: right;" id="card1">
       
    <div class="card-body">
      <p class="card-text"><b>이용 요금</b></p>
      <hr id="hr2"><br>
      <p class="card-text">이용 가격 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
      
  
<span>
<fmt:formatNumber value="${tdto.trainerprof_price }" type="currency"></fmt:formatNumber>
</span>
</p>
      
   </div>
  </div>


</div>
 
    
 <div class="container mt-3">

  <div class="card" style="width:300px; height:200px; border: 2px solid #dcdcdc; float: right;" id="card2">
       
    <div class="card-body">
      <p class="card-text"><b>궁금한 내용이 있다면,<br> 훈련사님에게 문의해주세요!</b></p>
      <hr id="hr2"><br>
      
 <button type="button" onclick="location.href='/trainer/qna'" style="width: 270px; height: 50px;"
   class="btn btn-primary btn1">문의하기</button>
</div>
</div>  

</div>
</div>
</c:forEach>  


</body>
</html>