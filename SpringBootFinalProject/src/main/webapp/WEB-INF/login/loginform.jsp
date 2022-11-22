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
<style type="text/css">
.login-box{
  position:relative;
  margin: 10px auto;
  width: 500px;
  height: 700px;
  background-color: #fff;
  padding: 10px;
  border-radius: 3px;
  -webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.33);
  -moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.33);
  box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.33);
}
.lb-header{
  position:relative;
  color: #00415d;
  margin: 5px 5px 10px 5px;
  padding-bottom:10px;
  border-bottom: 1px solid #eee;
  text-align:center;
  height:28px;
}
.lb-header a{
  margin: 0 25px;
  padding: 0 20px;
  text-decoration: none;
  color: #666;
  font-weight: bold;
  font-size: 15px;
  -webkit-transition: all 0.1s linear;
  -moz-transition: all 0.1s linear;
  transition: all 0.1s linear;
}
.lb-header .active{
  color: #007bff;
  font-size: 18px;
}
.social-login{
  position:relative;
  float: left;
  width: 100%;
  height:auto;
  padding: 10px 0 15px 0;
  border-bottom: 1px solid #eee;
}
.social-login a{
  position:relative;
  float: left;
  width:calc(40% - 8px);
  text-decoration: none;
  color: #fff;
  border: 1px solid rgba(0,0,0,0.05);
  padding: 12px;
  border-radius: 2px;
  font-size: 12px;
  text-transform: uppercase;
  margin: 0 5%;
  text-align:center;
}
.social-login a i{
  position: relative;
  float: left;
  width: 20px;
  top: 2px;
}
.social-login a:first-child{
  background-color: #49639F;
}
.social-login a:last-child{
  background-color: #DF4A32;
}
.email-login,.email-signup{
  position:relative;
  float: left;
  width: 100%;
  height:auto;
  margin-top: 20px;
  text-align:center;
}
.u-form-group{
  width:100%;
  margin-bottom: 10px;
  font-size: 0.7em;
}
.u-form-group input[type="text"],
.u-form-group input[type="password"]{
  width: calc(50% - 22px);
  height:45px;
  outline: none;
  border: 1px solid #ddd;
  padding: 0 10px;
  border-radius: 2px;
  color: #333;
  font-size:0.8rem;
  -webkit-transition:all 0.1s linear;
  -moz-transition:all 0.1s linear;
  transition:all 0.1s linear;
}
.u-form-group input[type="email"],
.u-form-group input[type="date"]{
  width: calc(50% - 22px);
  height:45px;
  outline: none;
  border: 1px solid #ddd;
  padding: 0 10px;
  border-radius: 2px;
  color: #333;
  font-size:0.8rem;
  -webkit-transition:all 0.1s linear;
  -moz-transition:all 0.1s linear;
  transition:all 0.1s linear;
}
.u-form-group input:focus{
  border-color: #6168ff;
}
.u-form-group button{
  width:50%;
  background-color: #007bff;
  border: none;
  outline: none;
  color: #fff;
  font-size: 14px;
  font-weight: normal;
  padding: 14px 0;
  border-radius: 2px;
  text-transform: uppercase;
}
.forgot-password{
  width:50%;
  text-align: left;
  text-decoration: underline;
  color: #888;
  font-size: 0.75rem;
}
</style>
<script type="text/javascript">
$(function(){
	
	$(".email-signup").hide();
	$("#signup-box-link").click(function(){
	  $(".email-login").fadeOut(100);
	  $(".email-signup").delay(100).fadeIn(100);
	  $("#login-box-link").removeClass("active");
	  $("#signup-box-link").addClass("active");
	});
	$("#login-box-link").click(function(){
	  $(".email-login").delay(100).fadeIn(100);;
	  $(".email-signup").fadeOut(100);
	  $("#login-box-link").addClass("active");
	  $("#signup-box-link").removeClass("active");
	});
	
	//중복체크 버튼클릭시 아이디 체크
	$("#btnidcheck").click(function(){
		
		$.ajax({
			type:"get",
			dataType:"json",
			url:"../member/idcheck",
			data:{"mem_id":$("#id").val()},
			success:function(res){
				
				if(res.count==0){
					$("span.idsuccess").text("사용가능한 아이디입니다.").css("color","#007bff");
				}else{
					$("span.idsuccess").text("이미 존재하는 아이디입니다.").css("color","red");
				} 
				
			}
		});
	});
	
	//id입력시 idsuccess값 지워지게
	$("#id").keyup(function(){
		$("input:checkbox[id='btnidcheck']").prop("checked", false);
		$("span.idsuccess").text("");
	});
	
	//2번째 비밀번호 입력시 체크
	$("#pass2").keyup(function(){
		
		var p1=$("#pass").val();
		var p2=$(this).val();
		
		if(p1==p2){
			$("span.passsuccess").text("비밀번호가 일치합니다.").css("color","#007bff");
		}else{
			$("span.passsuccess").text("비밀번호를 재확인해주세요.").css("color","red");
		}
	});
});

//submit전에 호출
function check(){
	
	//중복체크
	if($("span.idsuccess").text()!='사용가능한 아이디입니다.'){
		alert("아이디를 중복체크 해주세요.");
		return false;
	}
	
	//비밀번호
	if($("span.passsuccess").text()!='비밀번호가 일치합니다.'){
		alert("비밀번호가 서로 다릅니다. 재확인해주세요.");
		return false;
	}
}
</script>
</head>
<body>
<<<<<<< HEAD
<div style="margin: 50px 50px;">
  <form action="loginprocess" method="post" class="form-inline">
    <table class="table table-bordered" style="width: 300px;">
        <tr>
          <td colspan="2" align="center">
            <input type="checkbox" name="cbsave"
            ${sessionScope.saveok==null?"":"checked"}>아이디저장
          </td>
        </tr>
        
        <tr>
          <th width="100" bgcolor="#fcc">아이디</th>
            <td>
              <input type="text" name="mem_id" class="form-control"
              autofocus="autofocus" required="required" style="width: 120px;"
              value="${sessionScope.saveok==null?"":sessionScope.myid }">
            </td>
        </tr>
        
        <tr>
          <th width="100" bgcolor="#fcc">비밀번호</th>
            <td>
              <input type="password" name="mem_pass" class="form-control"
              autofocus="autofocus" required="required" style="width: 120px;">
            </td>
        </tr>
        
        <tr>
          <td colspan="2" align="center">
            <button type="submit" class="btn btn-success" style="width: 100px;">로그인</button>
          </td>
        </tr>
    </table>
  </form>
</div>
=======
  <div class="login-box">
    <div class="lb-header">
      <a href="#" class="active" id="login-box-link">Login</a>
      <a href="#" id="signup-box-link">Sign Up</a>
    </div>
    <div class="social-login">
      <a href="#">
        <i class="fa fa-facebook fa-lg"></i>
        페이스북 로그인
      </a>
      <a href="#">
        <i class="fa fa-google-plus fa-lg"></i>
        구글 로그인
      </a> 
    </div>
    
    <form action="loginprocess" method="post" class="email-login">
      <div class="u-form-group">
        <input type="text" name="mem_id" placeholder="ID" autofocus="autofocus" required="required" 
        value="${sessionScope.saveok==null?"":sessionScope.myid }">
      </div>
      <div class="u-form-group">
        <input type="password" name="mem_pass" placeholder="Password" autofocus="autofocus" required="required">
      </div>
      <div class="u-form-group">
        <input type="checkbox" name="cbsave"
            ${sessionScope.saveok==null?"":"checked"}> Keep Login
      </div>
      <div class="u-form-group">
        <button type="submit">Log in</button>
      </div>
      <div class="u-form-group">
        <a href="#" class="forgot-password">Forgot password?</a>
      </div>
    </form>
    
    <form action="../member/insert" method="post" onsubmit="return check()" class="email-signup">
      <div class="u-form-group">
        <input type="text" placeholder="ID" id="id" name="mem_id" required="required"/>
      </div>
      <div class="u-form-group">
        <input type="checkbox" id="btnidcheck"> 중복체크
        <span class="idsuccess"></span>
      </div>
      <div class="u-form-group">
        <input type="password" placeholder="Password" name="mem_pass" id="pass" required="required"/>
      </div>
      <div class="u-form-group">
        <input type="password" placeholder="Confirm Password" id="pass2" required="required"/>
      </div>
      <div class="u-form-group">
        <span class="passsuccess"></span>
      </div>
      <div class="u-form-group">
        <input type="text" placeholder="Name" required="required" name="mem_name"/>
      </div>
      <div class="u-form-group">
        <input type="email" placeholder="Email" required="required" name="mem_email"/>
      </div>
      <div class="u-form-group">
        <input type="date" name="mem_birth" required="required">
      </div>
      <div class="u-form-group">
        <input type="text" name="mem_phone" placeholder="010-0000-0000" required="required">
      </div>
      <div class="u-form-group">
        <input type="text" name="mem_addr" placeholder="Addr" required="required">
      </div>
      <div class="u-form-group">
        <button type="submit">Sign Up</button>
      </div>
    </form>
  </div>       

>>>>>>> branch 'main' of https://github.com/dahyeo/FinalProject.git
</body>
</html>