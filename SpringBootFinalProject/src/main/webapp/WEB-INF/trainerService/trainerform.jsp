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
  <b>훈련사 지원서 작성하기</b>
  </div>

<div class="all" style="border: none;">

<div class="box1">
	<fieldset>
	<legend style="font-size: 30px;">개인 정보</legend><br><br>
	
	<input type="hidden" name="mem_id" value="${sessionScope.myid }">
		
		<label for="name"><b style="font-size: 20px;">이름</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;
			 <input type="text"  name="trainer_name" placeholder="이름" class="form-control" required="required"><br>
				
		<label for="mail"><b style="font-size: 20px;">생년월일</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&nbsp;
			 <input type="text" name="trainer_birth" placeholder="예)1994-01-01" class="form-control" required="required">&emsp;<span style="color: gray; font-size: 13px; font-style: italic;">03년생부터(만 18세이상) 지원이 가능합니다.</span><br><br>
					
					
        <label class="test_obj"><b style="font-size: 20px;">성별</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp;&emsp;&emsp;
              <input type="radio" name="trainer_gender" value="남성" required="required">
              <span>남성</span> 
	    </label>	
	    
	    <label class="test_obj">
             &emsp;
              <input type="radio" name="trainer_gender" value="여성" required="required">
              <span>여성</span> 
	    </label> <br><br>
	    
	    <label for="name"><b style="font-size: 20px;">이메일</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;
			 <input type="text"  name="trainer_email" placeholder="이메일" class="form-control" required="required"><br>
			 
	    
	    <label for="name"><b style="font-size: 20px;">연락처</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;
			&emsp;&emsp;&emsp;&emsp; 
			<input type="text" name="trainer_phone" placeholder="연락처" class="form-control" required="required">&nbsp;
			<span style="color: gray; font-size: 13px; font-style: italic;">&emsp;입력한 번호로 합격 문자를 보내드립니다.</span><br>
			 
		<label for="name"><b style="font-size: 20px;">주소</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; 
			 <input type="text" name="trainer_addr" placeholder="예)서울시 강남구 논현동" class="form-control" required="required">&emsp;
			 <span style="color: gray; font-size: 13px; font-style: italic;">시/군/구까지 입력해주세요.</span><br><br>
	    		
	    <label class="test_obj"><b style="font-size: 20px;">흡연여부</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp; <input type="radio" name="trainer_smoking" value="흡연" class="form-control" required="required">
              <span>흡연</span> 
	    </label>	
	    
	    <label class="test_obj">
             &emsp; <input type="radio" name="trainer_smoking" value="비흡연" required="required">
              <span>비흡연</span> 
	    </label> <br><br><br>		
	    		
	    <label for="name"><b style="font-size: 20px;">사진</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&emsp;&emsp;&emsp;&emsp; <input type="file" name="upload" ><br>
		</fieldset>		

 </div>   

<div class="box">
	<fieldset>
	<legend style="font-size: 30px;">활동 정보</legend>
		
		<!-- <label for="name"><b>방문 훈련시 이동 수단</b> &nbsp;<span style="color: red; font-size: 25px;">*</span> <span style="color: gray; font-size: 13px; font-style: italic;">(중복선택 가능)</span></label><br><br>
			 <input type="checkbox" name="trainer_smoking"  value="자차">&emsp;자차&nbsp;&nbsp;
			 <input type="checkbox" name="trainer_smoking"  value="대중교통">&emsp;대중교통&nbsp;&nbsp;
			 <input type="checkbox" name="trainer_smoking"  value="자전거">&emsp;자전거 -->

	    <br><br>
	    <label for="name"><b style="font-size: 20px;">활동 가능한 일수</b> &nbsp;<span style="color: red; font-size: 25px;">*</span> <span style="color: gray; font-size: 13px; font-style: italic;">(한달기준)</span></label><br><br>
	    <input type="radio" name="trainer_date"   value="주말 포함한 30일 모두 가능합니다.">&emsp;주말 포함한 30일 모두 가능합니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;
	    <input type="radio" name="trainer_date"  value="평균 20일 이상 가능합니다.">&emsp;평균 20일 이상 가능합니다.<br><br>
	    <input type="radio" name="trainer_date"  value="평균 20일 이하 가능합니다.">&emsp;평균 20일 이하 가능합니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;
	      <input type="radio" name="trainer_date"  value="주말만 가능합니다.">&emsp;주말만 가능합니다.<br><br><br>
			 
			 
		<label for="name"><b style="font-size: 20px;">방문 가능 지역</b> &nbsp;<span style="color: red; font-size: 25px;">*</span> <span style="color: gray; font-size: 13px; font-style: italic;">(중복선택 가능)</span></label><br><br>
		<span style="color: gray; font-size: 15px;">수도권 외 지역이나 수도권 내 일부 지역만 가능하시다면 가능하신 지역을 시 혹은 구단위로 직접 입력해주세요.<br>
        (예. 서울 전지역 / 경기 수원시, 안양시 / 대전 유성구, 부산 해운대구)</span><br><br>
			 <input type="checkbox" name="trainer_loc"  value="서울 전지역">&emsp;서울 전지역&emsp;
			 <input type="checkbox" name="trainer_loc"  value="경기 지역">&emsp;경기 지역&emsp;
			 <input type="checkbox" name="trainer_loc" value="인천 지역">&emsp;인천 지역&emsp;
			 <input type="checkbox" name="trainer_loc" value="수도권외 지역" >&emsp;수도권외 지역<br><br>
			 <textarea style="width: 700px;" placeholder="이곳에 직접 입력해주세요" name="trainer_loc" class="form-control"></textarea>
	    		
		</fieldset>		

 </div>
 
 <div class="box">
	<fieldset>
	<legend style="font-size: 30px;">경력 사항</legend><br><br>
		
		<label for="name"><b style="font-size: 20px;">훈련 자격증</b> &nbsp;<span style="color: red; font-size: 25px;">*</span> <span style="color: gray; font-size: 13px; font-style: italic;">(중복선택 가능)</span></label><br><br>
			 <input type="checkbox" name="trainer_certificate"  value="반려견지도사/훈련사 3급">&emsp;반려견지도사/훈련사 3급&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="checkbox" name="trainer_certificate"  value="반려견지도사/훈련사 2급">&emsp;반려견지도사/훈련사 2급<br><br>
			 <input type="checkbox" name="trainer_certificate" value="반려견지도사/훈련사 1급">&emsp;반려견지도사/훈련사 1급&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="checkbox" name="trainer_certificate"  value="반려동물관리사/행동교정사">&emsp;반려동물관리사/행동교정사<br><br>
			 <input type="checkbox" name="trainer_certificate" value="KPA 수료증 (CTP, Foundation 등)">&emsp;KPA 수료증 (CTP, Foundation 등)<br>

	    <br><br>
	    <!-- <label for="name">진행해본 방문(출장)훈련 횟수  &nbsp;* (한달기준)</label><br><br>
	    <input type="radio" name="food" value="아직 한번도 진행해본 적 없어요">아직 한번도 진행해본 적 없어요&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="radio" name="food" value="1회 - 10회">1회 - 10회<br>
	    <input type="radio" name="food" value="11회 - 100회">11회 - 100회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="radio" name="food" value="100회 이상">100회 이상<br><br><br> -->
			 
			 
		<label for="name"><b style="font-size: 20px;">경력 사항</b> &nbsp;<span style="color: red; font-size: 25px;">*</span> </label><br><br>
		<span style="color: gray; font-size: 15px;">회사명/근무 기간/하신 업무 (작성해주신 경력에 대해서는 추후 사실 여부를 확인할 수 있습니다)</span><br><br>
			
			 <textarea style="width: 700px; height: 100px;" placeholder="이곳에 직접 입력해주세요" name="trainer_career" class="form-control" required="required"></textarea><br>
	    		
	    <br>		
	    <label for="name"><b style="font-size: 20px;">지원 동기</b> &nbsp;<span style="color: red; font-size: 25px;">*</span> </label><br><br>
		
			
			 <textarea style="width: 700px; height:200px;" placeholder="이곳에 직접 입력해주세요" name="trainer_content" class="form-control" required="required"></textarea>
	    		
		</fieldset>		
		
		<br>
	
 </div>     

       
</div> 

<button type="submit" class="btn btn-primary" style="margin-left: 700px; width: 300px; height: 80px; font-size: 25px; background-color: #6789F5; border:#6789F5;"
onclick="btn()">지원서 제출</button>

</form>

<br>

<br>
<script type="text/javascript">

function btn(){
	alert('신청이 완료되었습니다');
}
</script>
</body>
</html>
