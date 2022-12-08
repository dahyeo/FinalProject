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
<script type="text/javascript">
$(function(){
	
	//훈련사 승인
	$(".confirmTrainer").click(function(){
		
		 $.ajax({
			type:"get",
			url:"updateTrainerStatus",
			data:{"mem_num":$(this).attr("mem_num")},
			dataType:"html",
			success:function(){
				
				alert("승인했습니다.");
				emailSend();
			}
		}); 
	});
	
	//펫시터 승인
	$(".confirmPetsitter").click(function(){
		
		 $.ajax({
			type:"get",
			url:"updatePetsitterStatus",
			data:{"mem_num":$(this).attr("mem_num")},
			dataType:"html",
			success:function(){
				
				alert("승인했습니다.");
				emailSend();
			}
		}); 
	});
});

//이메일 발송
function emailSend(){
        
        $.ajax({
            url: "../mail"
            ,type: "post"
            ,success: function(data) {

            },error: function(jqXHR,textStatus,errorThrown) {
                alert("이메일 전송에 실패하였습니다.");
            }
        });
    }

//각 status가 0이면 '승인 대기중',1이면 '승인' 되도록
/* function status(){
	
	$.ajax({
		
		type:"get",
		url:"status",
		data:{"mem_num":$(.showstatus).attr("mem_num")},
		dataType:"html",
		success:function(res){
			
			var s="";
			
			if(res.status==0){
				s+="<input type='button' class='confirmTrainer btn btn-warning' mem_num='${tdto.mem_num}' value='승인 대기중'>";
			} else{
				s+="<input type='button' class='btn btn-primary' mem_num='${tdto.mem_num}' value='승인'>";
			}
			
			$(".statusbtn").html(s); 
		}
	});
} */
</script>
</head>
<body>
<c:if test="${sessionScope.myid=='admin'}">
  
  <!-- 추후 할일 -->
  <!-- 1.각 status가 0이면 '승인 대기중',1(훈련사) or 2(펫시터)이면 '승인' 되도록 js 수정하기 -->
  <!-- 2.지금 너무 안예쁘므로, 추후 css 추가 -->
  
  <div style="padding-top: 85px; width: 1000px; margin: 0px auto; padding-bottom: 30px;">
	<h1 style="font-size: 50px; font-weight: 600; color: #555555">파트너 지원현황</h1>
	<p style="font-size: 17px; color: #333333; margin-top: 26px">"승인" 시 파트너에게 승인 이메일이 발송됩니다.</p>
  </div>
  
  <div class="container mt-3" style="margin-left: 200px;">
  <!-- Nav pills -->
  <ul class="nav nav-pills" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-bs-toggle="pill" href="#home">훈련사 지원현황</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="pill" href="#menu1">펫시터 지원현황</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
      <table class="table table-bordered" style="width: 700px;">
        <c:forEach var="tdto" items="${tlist }" varStatus="i">
          <tr>
            <td style="width: 30px;">${i.count }
              <input type="hidden" class="showstatus" mem_num="${tdto.mem_num }">
            </td>
            <td style="text-align: center;">${tdto.trainer_name }</td>
            <td style="text-align: center;">${tdto.trainer_gender }</td>
            <td style="width: 50px;">
              <input type="button" class="confirmTrainer btn btn-warning" mem_num="${tdto.mem_num }" value="승인">
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>
    
    <div id="menu1" class="container tab-pane fade"><br>
      <table class="table table-bordered" style="width: 700px;">
        <c:forEach var="pdto" items="${plist }" varStatus="i">
          <tr>
            <td style="width: 30px;">${i.count }</td>
            <td style="text-align: center;">${pdto.partner_name }</td>
            <td style="text-align: center;">${pdto.partner_gender }</td>
            <td style="width: 50px;">
              <input type="button" class="confirmPetsitter btn btn-warning" mem_num="${pdto.mem_num }" email="${pdto.partner_email }" value="승인"></button>
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </div>
</div>
  
</c:if> 
</body>
</html>