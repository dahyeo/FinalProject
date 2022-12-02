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

div.all {

background-color: #f8f8f8;
margin: -200px;

}

.card{

height: 500px;
width: 500px;
margin-left: 300px;


}

div.answer2{

position: absolute;
top: -60px;
left : 670px;
width: 100%;
height: auto;
font-size: 40px;


}

div.a{

position: absolute;
top: 150px;
margin-left:580px;
width: 100%;
height: auto;
font-size: 20px;


}

.btn1{

margin-top:200px;
margin-left: 1450px;

}


body * { font-family: 'Spoqa Han Sans Neo', 'sans-serif'; }
</style>
</head>
<body>
<div style="width: 100%; height: 300px; border: none; margin-bottom: 200px;">
<div class="answer2" style="border: none;"><br><br>

<b>훈련사를 소개합니다!</b>

</div>


<div class="a" style="border: none;">
<span style="color: gray;">
&emsp;&emsp;&emsp;나와 우리 반려견에게 꼭 맞는 훈련사를 찾아보세요!
</span>
</div>
<%--  <c:if test="${sessionScope.loginok!=null || sessionScope.myid=='admin' }">  --%> 

<button type="button" onclick="location.href='/trainerprofile/trainerform'" style="width: 200px; height: 50px;"
   class="btn btn-primary btn1">훈련사 정보 등록</button>
  
<%--  </c:if>    --%>
 
   </div>
 <div class="all" style="border: none;"><br><br>
  <c:forEach var="tdto" items="${tlist }">      

<div class="container mt-3">

  <div class="card" style="width:750px; height:220px; border: 2px solid #dcdcdc;" >
       
     
     <%--  <img class="card-img-top" src="../photo/${tdto.trainer_photo }" alt="Card image" style="width:200px;">  --%>

  
    <div class="card-body">

      <h4 class="card-title">${tdto.trainer_name}&nbsp;훈련사</h4><br>
         <span style="float: right;"><br>
      <fmt:formatNumber value="${tdto.trainerprof_price }" type="currency"></fmt:formatNumber>  </span></p>
      <p class="card-text" style="font-size: 20px;">${tdto.trainerprof_subject } <br>
      <hr>
      <p class="card-text">#${tdto.trainerprof_field } 
   
   


<span style="float: right;">
      <a href="trainerdetail?trainerprof_num=${tdto.trainerprof_num}" class="btn btn-primary">훈련사 프로필 보기</a>  
              </span>      </div>
  </div>


</div>


</c:forEach>      
     <br>
<br>
 </div>

</body>

</html>
