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
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<title>Insert title here</title>
<style type="text/css">
div.all {
background-color: #f8f8f8;
}

input[type=text], select {
  width: 300px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border-top:none;
  border-left:none;
  border-right:none;
  border-bottom: 2px solid gray;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

 .test_obj input[type="radio"] {
        display: none;
    }
 
    .test_obj input[type="radio"] + span {
        display: inline-block;
        padding: 15px 10px;
        border: 1px solid #dfdfdf;
        background-color: #ffffff;
        text-align: center;
        cursor: pointer;
        width: 100px;
    }
 
     .test_obj input[type="radio"]:checked + span {
        background-color: blue;
        color: #ffffff;
    }  
    
div.box{

margin: 10px 400px;
margin-bottom:10px;
padding: 50px;
border-radius: 20px;
background-color: white;
}

div.box1{

margin: 100px 400px;
margin-bottom:10px;
padding: 50px;
border-radius: 20px;
background-color: white;
border: none;
}

body * { font-family: 'Spoqa Han Sans Neo', 'sans-serif'; }

div.jiwon{

   margin-left: 400px;
   margin-top: 100px;
   font-size: 50px;

}

 input[type=checkbox], input[type=radio] {
     accent-color: blue;
    
    width: 20px;
    height: 20px;
    border: 1px;
}

#showimg{
  position: relative;
  border: 1px solid gray;
  left: 160px;
  width: 200px;
  height: 160px;
}

.modal{
  position: absolute;
  top: 0;
  left: 0;
  height: 1000px; /*100%*/
  width: 1000px; /*100%*/
  background-color: gray;
}

.modal-dialog{
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto;
  width: 500px;  
  height: 300px;
}
</style>
<script type="text/javascript">

//?????? ???????????? ????????? ????????????
function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('showimg').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('showimg').src = "";
	  }
}

$(function(){
	
	$("input[name='res_visit']").change(function(){
		var res_visit = $("input[name='res_visit']:checked").val();
		
		if(res_visit=="?????? ??????"){
			$("div.norm").show();
			$("div.rout").hide();
		}else{
			$("div.norm").hide();
			$("div.rout").show();
		}
	});

});
</script>
</head>
<body>
<!-- <form action="insert" method="post"> -->
<form action="" id="frm">

<!-- ???????????? id??? ?????? mem_num, ani_num ????????? -->
<input type="hidden" name="mem_num" value="${mem_num }">
<input type="hidden" name="ani_num" value="${ani_num }">

<!-- ?????? trainer ??????????????? '??????'?????????????????? trainerprof_num??? hidden?????? ????????? -->
<input type="hidden" name="trainerprof_num" value="${trainerprof_num} ">

  <div class="jiwon" style="border: none;">
  <b>???????????? ????????????</b>
  </div>

<div class="all" style="border: none;">

 <div class="box1">
	<fieldset>
	<legend style="font-size: 30px;">?????? ??????</legend><br><br>
		<label for="name"><b style="font-size: 20px;">????????? ????????????????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br>
			 <input type="text" name="mem_addr" value="${mem_addr }" class="form-control" required="required"><br><br>
	    
	    <!-- ??????1_?????? ?????? -->
	    <label for="name"><b style="font-size: 20px;">???????????? ??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
	    <input type="text" name="res_pub_pass" placeholder="?????? ?????? ????????????">
	    <input type="text" name="res_priv_pass" placeholder="?????? ?????? ????????????"><br><br>
	    
	    <!-- ??????2_????????? ??? -->
	    <label for="name"><b style="font-size: 20px;">????????? ?????? ??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
	    <textarea style="width: 500px;" placeholder="???)????????? ?????? ?????? ???????????? ???????????????." name="res_key_loc"></textarea><br><br>
	    
	    <!-- ??????3_????????? ?????? ?????? -->
	    <label for="name"><b style="font-size: 20px;">????????? ?????? ??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
	    <textarea style="width: 500px;" placeholder="???)??? ?????? ???????????? 010-0000-0000 ????????? ??????????????? ?????? ??????????????????." name="res_contact_method"></textarea>
	</fieldset>		
 </div>   

 <div class="box">
	<fieldset>
	<legend style="font-size: 30px;">?????? ??????</legend><br><br>
					 
		<input type="radio" name="res_visit" value="?????? ??????">&nbsp;&nbsp;?????? ??????&nbsp;&nbsp;
		<input type="radio" name="res_visit" value="?????? ??????">&nbsp;&nbsp;?????? ??????&nbsp;&nbsp;<br><br>
			 
		<!-- ?????? ?????? -->
		<div class="norm">
		<label for="name"><b style="font-size: 20px;">?????? ??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>	
		<input type="date" name="res_norm_date" class="form-control"><br><br>
		</div>
		
		<!-- ?????? ?????? -->
		<div class="rout">
		<label for="name"><b style="font-size: 20px;">?????? ??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
		<input type="checkbox" name="res_rout_date" value="???"> ???&nbsp;&nbsp;
		<input type="checkbox" name="res_rout_date" value="???"> ???&nbsp;&nbsp;
		<input type="checkbox" name="res_rout_date" value="???"> ???&nbsp;&nbsp;
		<input type="checkbox" name="res_rout_date" value="???"> ???&nbsp;&nbsp;
		<input type="checkbox" name="res_rout_date" value="???"> ???&nbsp;&nbsp;
		<input type="checkbox" name="res_rout_date" value="???"> ???&nbsp;&nbsp;
		<input type="checkbox" name="res_rout_date" value="???"> ???&nbsp;&nbsp;<br><br><br>
		
		<label for="name"><b style="font-size: 20px;">?????? ??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
		<input type="date" name="res_rout_start" class="form-control"><br><br>
		</div>
		
		<label for="name"><b style="font-size: 20px;">?????? ??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
	    <select name="res_time">
	      <option value="8:00">8:00
	      <option value="9:00">9:00
	      <option value="10:00">10:00
	      <option value="11:00">11:00
	      <option value="12:00">12:00
	      <option value="13:00">13:00
	      <option value="14:00">14:00
	      <option value="15:00">15:00
	      <option value="16:00">16:00
	      <option value="17:00">17:00
	      <option value="18:00">18:00
	      <option value="19:00">19:00
	      <option value="20:00">20:00
	      <option value="21:00">21:00
	    </select>
	    <br><br>
	    
		</fieldset>		
 </div>
 
 <div class="box">
	<fieldset>
	<legend style="font-size: 30px;">???????????? ??????</legend><br><br>
	 
	  <div>
	      <label for="name" style="width: 150px;">
	      <b style="font-size: 20px;">??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;
	      <img src="../photo/${ani_photo }" id="showimg">
		  </label>
	  </div><br>
	  
		<label for="name"><b style="font-size: 20px;">??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" value="${ani_name }" class="form-control" readonly="readonly"></label><br><br>	
					
        <label class="test_obj"><b style="font-size: 20px;">??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp;&emsp;&emsp;&emsp; 
             <input type="text" value="${ani_gender }" class="form-control" readonly="readonly"></label><br><br> 
	   
	    <label class="test_obj"><b style="font-size: 20px;">??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp;&emsp;&emsp;&emsp; 
             <input type="text" value="${ani_type }" class="form-control" readonly="readonly"></label><br><br> 
	   	    
		</fieldset>

 </div>
   
   <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal"
   style="margin-left: 570px; width: 300px; height: 80px; font-size: 25px;">????????????</button>
   

<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body" style="margin: 0 auto; font-size: 2em;">
        <!-- ?????? ?????? -->
        <button type="button" class="paybtn btn btn-warning"
        style="margin-right: 30px;">???????????????</button>
        <button type="button" class="inicisbtn btn btn-danger">KG????????????</button>
      </div>
      
    </div>
  </div>
 </div>
 
</div> 
  
<!-- ?????? ???????????? -->
<script type="text/javascript">
//???????????????
IMP.init('imp00408122');
$(".paybtn").click(function(){
	IMP.request_pay({
		
		pg: "kakaopay",
		pay_method: "card",
		merchant_uid: "iamport_sist2",
		name: "WAYO",
		amount: ${trainerprof_price},
		buyer_name: "${mem_name}",
		buyer_tel: "${mem_phone}"
	}, function(rsp){
		console.log(rsp);
		
		if(rsp.success){
			
			var msg="????????? ?????????????????????.";
			//msg+="\n??????ID : " + rsp.imp_uid;
			//msg+="\n????????????ID : " + rsp.merchant_uid; 
			msg+="\n???????????? : " + rsp.paid_amount + " ???";
			
			//insert restApi
			$.ajax({
				type:"post",
				url:"insert",
				data:$("#frm").serialize(),
				dataType:"html",
				success:function(){
					
					alert("????????? ?????????????????????.");
				}
			});
			
			location.href="../mypage";
			} else {
			
			var msg="????????? ?????????????????????.";
			msg+=rsp.error_msg;
			
			//????????? reload
			location.reload();
			}
		    alert(msg);
	});	
});

//KG????????????
$(".inicisbtn").click(function(){
	IMP.request_pay({
		
		pg: "html5_inicis",
		pay_method: "card",
		merchant_uid: "iamport_sist2",
		name: "WAYO",
		amount: ${trainerprof_price},
		buyer_name: "${mem_name}",
		buyer_tel: "${mem_phone}"
	}, function(rsp){
		console.log(rsp);
		
		if(rsp.success){
			
			var msg="????????? ?????????????????????.";
			//msg+="\n??????ID : " + rsp.imp_uid;
			//msg+="\n????????????ID : " + rsp.merchant_uid; 
			msg+="\n???????????? : " + rsp.paid_amount + " ???";
			
			//insert restApi
			$.ajax({
				type:"post",
				url:"insert",
				data:$("#frm").serialize(),
				dataType:"html",
				success:function(){
					
					alert("????????? ?????????????????????.");
				}
			});
			
			location.href="../mypage";
			} else {
			
			var msg="????????? ?????????????????????.";
			msg+=rsp.error_msg;
			
			//????????? reload
			location.reload();
			}
		    alert(msg);
	});	
});
</script>
  
</form>
</body>
</html>