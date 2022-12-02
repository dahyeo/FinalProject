<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>

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
margin-left: 360px;


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
<c:set var="root" value="<%=request.getContextPath() %>"/>
<body>
<div style="width: 100%; height: 300px; border: none; margin-bottom: 200px;">
<div class="answer2" style="border: none;"><br><br>

<b>펫시터를 소개합니다!</b>

</div>


<div class="a" style="border: none;">
<span style="color: gray;">
까다로운 펫시터 선발·관리 체계와 안전 시스템을 구축하였습니다.
</span>
</div>
<button type="button" onclick="location.href='/partnerprofile/partnerform'" style="width: 200px; height: 50px;"
   class="btn btn-primary btn1">펫시터 정보 등록</button>
</div>

<%--  <c:if test="${sessionScope.loginok!=null and sessionScope.myid=='admin' }">  
   
  
   
 </c:if>   --%>   
 
   
 <div class="all" style="border: none;"><br><br>
  <c:forEach var="pdto" items="${plist }">      

<div class="container mt-3">

  <div class="card" style="width:600px; height:200px; border: 2px solid #dcdcdc; "><br>
       
     
<!--         <img class="card-img-top" src="../image/12.png" class="rounded-circle" alt="Cinque Terre"> -->
  
    <div class="card-body">
      <h4 class="card-title">${pdto.partner_name}&nbsp;펫시터</h4>
      <p class="card-text">${pdto.partner_gender } 
      <span style="float: right;">
    #${pdto.partner_exp }</span></p>
<hr>
${pdto.partnerprof_subject }


<span style="float: right;">
      <a href="partnerdetail?partnerprof_num=${pdto.partnerprof_num}" class="btn btn-primary">펫시터 프로필 보기</a>  
              </span>      </div>
  </div>


</div>


</c:forEach>      
     <br>
<br>
 </div>

</body>
</html>