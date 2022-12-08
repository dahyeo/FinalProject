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
<title>Insert title here</title>
<!-- <style type="text/css">
.table{float: left;}
input.form-check-input{margin-left: 8px;}
.allcheck{margin-left: 40px;}
.carttb, h4{
   width: 800px;
   margin-left: 150px;
   margin-top: 20px;
}
.delbtn{
   margin-right: 35px;
}
.cart_num{
   float: left;
}
.info{
   float: left;
   margin-left: 30px;
   cursor: pointer;
}
.img{
   width: 100px;
   height: 80px;
}
.del{
   margin-right: 10px;
   cursor: pointer;
}
.totprice{
   margin-right: 45px;
}
.gongname{
   color: gray; font-size: 0.8em;
}
.infotb{
   margin-top: 20px;
   margin-left: 60px;
   width: 250px;
   height: 130px;
   font-size: 0.8em;
   border: 1px solid lightgray;
}
.infotb td{
   color: gray;
}
.paytb{
   margin-left: 60px;
   width: 250px;
   border: 1px solid lightgray;
}
.kakaopay, .kginicis{
   width: 100px;
   height: 50px;
   border-radius: 20px;
   margin-left: 40px;
}
</style>
<script type="text/javascript">
$(function(){
	
	//정보 클릭시 해당상품으로 이동
	$("div.info").click(function(){
		var class_num=$(this).attr("class_num");
		location.href="index.jsp?main=class/classdetail.jsp?class_num="+class_num;
	});
	
	//전체선택
	$("#allcheck").click(function(){
		
		//체크값 얻기
		var chk=$(this).is(":checked");
		console.log(chk); //true,false
		
		//전체 체크값을 글 앞의 체크값에 일괄전달
		$(".cart_num").prop("checked",chk);
		
		//바로 선택상품가격에 바로 출력되도록, 전체상품가격에도 출력
		var cnt=$(".cart_num:checked").length;
		if(cnt==0) {
			$(".selectprice").html("0");
			$(".endprice").html("0");
		}
		
		var price=0;
		
		$(".cart_num:checked").each(function(i,ele){
			price+=parseInt($(this).attr("class_price"));
			$(".selectprice").html(price.toLocaleString('ko-KR'));
			$(".endprice").html(price.toLocaleString('ko-KR'));
		});
	});
	
	//각 상품삭제
	$("span.del").click(function(){
		
		var cart_num=$(this).attr("cart_num");
		
		if(confirm("삭제하시겠습니까?")){
			del(cart_num);
			location.reload();
		}
	}); 
	
	//선택상품삭제
	$(".delbtn").click(function(){
		
		var cnt=$(".cart_num:checked").length;
		//alert(cnt);
		
		if(cnt==0){
			alert("삭제할 상품을 선택하세요.");
			return;
		}
		
		$(".cart_num:checked").each(function(i,ele){
			
			var cart_num=$(this).attr("cart_num");
			
			//선택한 상품 모두 삭제
			del(cart_num);
		});
		
		location.reload();
	});
	
	//개별 체크할때마다 선택상품가격에 바로 출력되도록,전체상품가격에도 출력
	var cnt=$(".cart_num:checked").length;
	if(cnt==0){
		$(".selectprice").html("0");
		$(".endprice").html("0");
	}
		
	$(".cart_num").click(function(){ 
		
		var cnt=$(".cart_num:checked").length;
		if(cnt==0) {
			$(".selectprice").html("0");
			$(".endprice").html("0");
		}
		
	    var price=0;
		
		$(".cart_num:checked").each(function(i,ele){
			price+=parseInt($(this).attr("class_price"));
			$(".selectprice").html(price.toLocaleString('ko-KR'));
			$(".endprice").html(price.toLocaleString('ko-KR'));
		});
		
	});
	
	//Tooltip
	// Initialize tooltips
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl)
});
		
});
function del(cart_num){
	
	$.ajax({
		type:"get",
		url:"class/cartdelete.jsp",
		dataType:"html",
		data:{"cart_num":cart_num},
		success:function(){
			
		}
	});
}
</script> -->
</head>
<body>

<!-- 일반회원의 경우 나의 예약내역만 보이도록 -->
<c:if test="${status==0 }">
  
 <div class="container mt-3">
  <h2>MyPage</h2>
  <br>
  
    <ul class="nav nav-tabs" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" data-bs-toggle="tab" href="#home">예약 내역</a>
      </li>
      <!-- <li class="nav-item">
        <a class="nav-link" data-bs-toggle="tab" href="#menu1">예약 확정 클래스</a>
      </li> -->
    </ul>
 
  <!-- Tab panes -->
  <div class="tab-content">
  
    <div id="home" class="container tab-pane active"><br>
      <h2 class="alert alert-info" style="width: 600px;">나의 예약내역</h2>
        <table class="carttb table table-bordered" style="width: 600px;">
         <!-- <tr>
           <td colspan="5" align="left">
             <input type="checkbox" class="form-check-input" id="allcheck"> 
             <label class="allcheck"> 전체선택</label>
             <button type="button" class="delbtn btn btn-light">선택삭제 <i class="fa fa-times" aria-hidden="true"></i></button> 
           </td>
         </tr> -->
  
          <c:forEach var="dto" items="${list }" varStatus="i">
            <tr>
              <!-- <td>
                <input type="checkbox" name="" res_num="" trainerprof_price="" class="cart_num form-check-input">
                
              </td> -->
              <td>${i.count }</td>
              <td>${dto.res_visit }</td>
              
              <c:if test="${dto.res_norm_date!=null }">
                <td>${dto.res_norm_date }</td>
              </c:if>
              <c:if test="${dto.res_rout_date!=null }">
                <td>${dto.res_rout_date }</td>
              </c:if>
              
              <td>${dto.res_time }</td>
              
              <%-- <td>
	    <span class="del" cart_num="<%=map.get("cart_num")%>"><i class="fa fa-times" aria-hidden="true"></i></span>
	    
	    <%=nf.format(class_price) %>
	    </td> --%>
	    
              <td><button type="button" class="btn btn-default" onclick="location.href='review'">리뷰쓰기</button></td>
            </tr>
          </c:forEach>
       </table>
    </div>
    
    <div id="menu1" class="container tab-pane fade"><br>
      <h3>예약 확정 클래스</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    
  </div>
 </div>
</c:if>
  
  <!-- 훈련사회원의 경우 내 클래스의 예약내역만 보이도록 -->
  <c:if test="${status==1 }">
  
  <div class="container mt-3">
  <h2>MyPage</h2>
  <br>
  
    <ul class="nav nav-tabs" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" data-bs-toggle="tab" href="#home">내 클래스의 예약내역</a>
      </li>
    </ul>
    
    <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
      <h2 class="alert alert-info" style="width: 600px;">내 클래스의 예약내역</h2>
        <table class="table table-bordered" style="width: 600px;">
          <c:forEach var="tfdto" items="${tflist }" varStatus="i">
            <tr>
              <td>${i.count }</td>
              <td>${tfdto.res_visit }</td>
              
              <c:if test="${dto.res_norm_date!=null }">
                <td>${tfdto.res_norm_date }</td>
              </c:if>
              <c:if test="${dto.res_rout_date!=null }">
                <td>${tfdto.res_rout_date }</td>
              </c:if>
              
              <td>${tfdto.res_time }</td>
            </tr>
          </c:forEach>
       </table>
    </div>
  </div>
 </div>
</c:if>

<!-- 파트너회원의 경우 내 클래스의 예약내역만 보이도록 -->
<c:if test="${status==2 }">
  
  <div class="container mt-3">
  <h2>MyPage</h2>
  <br>
  
    <ul class="nav nav-tabs" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" data-bs-toggle="tab" href="#home">내 클래스의 예약내역</a>
      </li>
    </ul>
    
    <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
      <h2 class="alert alert-info" style="width: 600px;">내 클래스의 예약내역</h2>
        <table class="table table-bordered" style="width: 600px;">
          <c:forEach var="pfdto" items="${pflist }" varStatus="i">
            <tr>
              <td>${i.count }</td>
              <td>${pfdto.res_visit }</td>
              
              <c:if test="${dto.res_norm_date!=null }">
                <td>${pfdto.res_norm_date }</td>
              </c:if>
              <c:if test="${dto.res_rout_date!=null }">
                <td>${pfdto.res_rout_date }</td>
              </c:if>
              
              <td>${pfdto.res_time }</td>
            </tr>
          </c:forEach>
       </table>
    </div>
  </div>
 </div>
</c:if>

</body>
</html>