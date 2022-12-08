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

margin-left: 350px;
}

hr{

width: 600px;
}

#card1{

margin-right:350px;
margin-top: -1000px;


}

#card2{

margin-right:350px;
margin-top: -1000px;


}

#hr2{

width: 270px;
}

body * { font-family: 'Spoqa Han Sans Neo', 'sans-serif'; }

.resbtn{
  display: flex;
    cursor: pointer;
    align-items: center;
    justify-content: center;
    width: 190px;
    height: 70px;
    margin-top: 60px;
    margin-left: 40px;
    border-radius: 5px;
    background: #6A92FE;
}
.restext{
  font-weight: 600;
  letter-spacing: -0.2px;
  font-size: 21px;
  line-height: 48px;
  color: white;
}
</style>
</head>
<body>
<img alt="" src="${root }/image/12.png" width="700px;" height="300px;" id="img1">




   <c:forEach var="pdto" items="${plist }">  
   <input type="hidden" name="partnerprof_num" value="${partnerprof_num }">    
<br><br><br><br>
<div class="part" style="border: none;">
<b style="font-size: 30px;">${pdto.partnerprof_subject } </b><br><br>
 <span style="font-size: 22px;">
 ${pdto.partner_name }&nbsp;펫시터</span>&emsp;
<%--  <i class="fa-solid fa-star" style="color: #6A92FE;"></i>
 ${pdto.partnerprof_star} --%>
 <br><br>
 <hr><br>
 
<i class="fa-solid fa-medal" style="font-size: 20px; color: gray;"></i> 
&emsp;<b style="font-size: 20px;">펫시터 경험</b> <br><br>
${pdto.partner_exp }<br><br><br>
<i class="fa-solid fa-clock" style="font-size: 20px; color: gray;"></i> 
&emsp; <b style="font-size: 20px;">가능한 시간대</b> <br><br>
 ${pdto.partner_time }<br><br><br>
<i class="fa-solid fa-calendar-days" style="font-size: 20px; color: gray;"></i> 
&emsp; <b style="font-size: 20px;">가능한 날짜</b><br><br>
 ${pdto.partner_date }<br><br>
 

<hr><br>
<b style="font-size: 20px;">펫시터 소개 영상</b><br><br><br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/sPuPMjzd50U" title="YouTube video player"
 frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen></iframe>


<!-- <div class="container mt-3">

  <div class="card" style="width:300px; height:200px; border: 2px solid #dcdcdc; float: right;" id="card1">
       
    <div class="card-body">
      <p class="card-text"><b>궁금한 내용이 있다면, 문의해주세요!</b></p>
      <hr id="hr2"><br>
      
 <button type="button" onclick="location.href=''" style="width: 200px; height: 50px;"
   class="btn btn-primary btn1">펫시터 정보 등록</button>
</div>
</div>  --> 
 
<div class="container mt-3">

  <div class="card" style="width:300px; height:150px; border: 2px solid #dcdcdc; float: right;" id="card2">
       
    <div class="card-body">
      <p class="card-text"><b>이용 요금</b></p>
      <hr id="hr2"><br>
      <p class="card-text">이용 가격 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
     
        <span>
          <fmt:formatNumber value="${pdto.partnerprof_price }" type="currency"></fmt:formatNumber>
        </span>
      </p>
      
      <div class="resbtn">
        <span class="restext" onclick="location.href='../petsitter/resform?partnerprof_num=${partnerprof_num}'">예약하기</span>
      </div>
      
   </div>
  </div>


</div>
 
 

</div>
</c:forEach>    

</body>
</html>
