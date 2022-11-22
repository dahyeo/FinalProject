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
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
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

</style>

</head>
<body>
<form action="insert" method="post" enctype="multipart/form-data">

<div class="jiwon" style="border: none;">
  <b>펫시터 지원서 작성하기</b>
  </div>

<div class="all" style="border: none;">

<div class="box1">
	<fieldset>
	<legend style="font-size: 30px;">개인 정보</legend><br><br>
		
		<label for="name"><b style="font-size: 20px;">이름</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text"  name="partner_name" placeholder="이름" class="form-control" required="required"></label><br>
				
		<label for="mail"><b style="font-size: 20px;">생년월일</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="partner_birth" placeholder="예)19940101" class="form-control" required="required">&emsp;<span style="color: gray; font-size: 13px; font-style: italic;">03년생부터(만 18세이상) 지원이 가능합니다.</span><br><br>
					
					
        <label class="test_obj"><b style="font-size: 20px;">성별</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp;&emsp;&emsp;&emsp; 
             <input type="radio" name="partner_gender" value="남성" placeholder="성별" required/>
              <span>남성</span> 
	    </label>	
	    
	    <label class="test_obj">
             &emsp; 
             <input type="radio" name="partner_gender" value="여성" placeholder="성별" required/>
              <span>여성</span> 
	    </label> <br><br>
	    
	    <label for="name"><b style="font-size: 20px;">연락처</b>&nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;
			&emsp;&emsp;&emsp;&emsp; 
			<input type="text" name="partner_phone" placeholder="연락처" class="form-control" required="required">&emsp;
			<span style="color: gray; font-size: 13px; font-style: italic;">입력한 번호로 합격 문자를 보내드립니다.</span><br>
			 
		<label for="name"><b style="font-size: 20px;">주소</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; 
			<input type="text" name="partner_addr" placeholder="예)서울시 강남구 논현동" class="form-control" required="required">&emsp;
			<span style="color: gray; font-size: 13px; font-style: italic;">시/군/구까지 입력해주세요.</span><br><br><br>
	    		
	   
	    <label class="test_obj"><b style="font-size: 20px;">흡연여부</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp;&emsp; 
             <input type="radio" name="partner_smoking" value="흡연"  required/>
              <span>흡연</span> 
	    </label>	
	    
	    <label class="test_obj">
             &emsp; 
             <input type="radio" name="partner_smoking" value="비흡연" required/>
              <span>비흡연</span> 
              <span style="color: gray; font-size: 13px; font-style: italic;">&emsp;직업 특성상 흡연을 하시는 경우, 파트너 활동이 어려울 수 있습니다.</span>
	    </label> <br><br><br>
	    
	     
	    <label for="name"><b style="font-size: 20px;">직업</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
	    <input type="radio" name="partner_job"   value="주부" required/>&emsp;주부&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;
	    
	    <input type="radio" name="partner_job"  value="학생" required/>&emsp;학생&emsp;&emsp;
	    <input type="radio" name="partner_job"  value="직장인" required/>&emsp;직장인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <input type="radio" name="partner_job"  value="프리랜서" required/>&emsp;프리랜서&emsp;&emsp;
	      <input type="radio" name="partner_job"  value="구직자" required/>&emsp;구직자<br><br><br>
		</fieldset>		

 </div> 
 
 
 <div class="box">
	<fieldset>
	<legend style="font-size: 30px;">활동 정보</legend><br><br>


	    <label for="name"><b style="font-size: 20px;">활동 가능한 일수</b> &nbsp;<span style="color: red; font-size: 25px;">*</span> 
	    <span style="color: gray; font-size: 13px; font-style: italic;">(한달기준)</span></label><br><br>
	    <input type="radio" name="partner_date"   value="주말 포함한 30일 모두 가능합니다." required/>&emsp;주말 포함한 30일 모두 가능합니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    
	    <input type="radio" name="partner_date"  value="평균 20일 이상 가능합니다." required/>&emsp;평균 20일 이상 가능합니다.<br><br>
	    <input type="radio" name="partner_date"  value="평균 20일 이하 가능합니다." required/>&emsp;평균 20일 이하 가능합니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;
	      <input type="radio" name="partner_date"  value="주말만 가능합니다." required/>&emsp;주말만 가능합니다.&emsp;
	      <span style="color: gray; font-size: 13px; font-style: italic;">(파트너로 활동이 어려울 수 있습니다).</span><br><br><br>
	
	   <label for="name"><b style="font-size: 20px;">활동 가능한 시간대</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>
	    <span style="color: gray; font-size: 13px; font-style: italic;">(중복선택 가능)</span></label><br><br>
			 <input type="checkbox" name="partner_time"  value="모두 가능합니다.">&emsp;모두 가능합니다.&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
			 <input type="checkbox" name="partner_time"  value="오전 타임(오전 8:00 ~ 오후 12:00)" >&emsp;오전 타임(오전 8:00 ~ 오후 12:00)&nbsp;&nbsp;<br><br>
			 <input type="checkbox" name="partner_time"  value="오후 타임(오후 12:00 ~ 오후 6:00)" >&emsp;오후 타임(오후 12:00 ~ 오후 6:00)&emsp;&emsp;&emsp;
			 <input type="checkbox" name="partner_time"  value="저녁 타임(오후 06:00 ~ 오후 10:00)" >&emsp;저녁 타임(오후 06:00 ~ 오후 10:00)
		</fieldset>		

 </div>
 
 
 <div class="box">
	<fieldset>
	<legend style="font-size: 30px;">개인 정보</legend><br><br>
		
					
					
        <label class="test_obj"><b style="font-size: 20px;">고양이 반려 경험 </b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp;&emsp; 
             <input type="radio" name="partner_exp_cat" value="있음" class="form-control" required/>
              <span>있음</span> 
	    </label>	
	    
	    <label class="test_obj">
             &emsp; 
             <input type="radio" name="partner_exp_cat" value="없음" required/>
              <span>없음</span> 
	    </label> <br><br>
	    
	    <label class="test_obj"><b style="font-size: 20px;">강아지 반려 경험 </b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp;&emsp; 
             <input type="radio" name="partner_exp_dog" value="있음" required/>
              <span>있음</span> 
	    </label>	
	    
	    <label class="test_obj">
             &emsp; 
             <input type="radio" name="partner_exp_dog" value="없음" required/>
              <span>없음</span> 
	    </label> <br><br><br>
	    
	     
	    <label for="name"><b style="font-size: 20px;">펫시터 활동 경력</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
	    <input type="radio" name=partner_exp   value="과거에 활동했지만, 현재는 활동하지 않음" >&emsp;과거에 활동했지만, 현재는 활동하지 않음.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;
	    <input type="radio" name="partner_exp"  value="현재도 활동하고 있음" >&emsp;현재도 활동하고 있음&emsp;&emsp;<br><br>
	    <input type="radio" name="partner_exp"  value="타인의 강아지/고양이를 돌봐준 적이 있음" >&emsp;타인의 강아지/고양이를 돌봐준 적이 있음&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <input type="radio" name="partner_exp"  value="펫시터로 활동을 해본 적이 없음" >&emsp;펫시터로 활동을 해본 적이 없음&emsp;&emsp;
	
		</fieldset>		

 </div>
 
 
 
 </div>
 <button type="submit"  class="btn btn-primary" style="margin-left: 700px; width: 300px; height: 80px; font-size: 25px;">지원서 제출</button>
 </form>
 <script>
function submit(){
	alert('신청이 완료되었습니다');
	
}
</script>
</body>
</html>
