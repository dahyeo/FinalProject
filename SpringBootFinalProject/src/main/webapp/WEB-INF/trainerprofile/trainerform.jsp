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

margin: 10px 430px;
margin-bottom:10px;
padding: 50px;
border-radius: 20px;
background-color: white;
width: 900px;

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
&emsp;<b>훈련사 프로필 등록</b><br> <br>
</div>	
	<div class="all" style="border: none;"><br>
 <div class="box">
	<fieldset>

	


	
	<input type="hidden" name="trainer_num" value="${trainer_num }">
	
	<label for="name"><b style="font-size: 20px;">이름</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp; 
			 <input type="text" name="trainer_name" value="${trainer_name }" class="form-control" required="required" style="width: 800px;"><br>
	
	<label for="name"><b style="font-size: 20px;">경력</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="trainer_career" value="${trainer_career }" class="form-control" required="required" style="width: 800px;"><br>
			 
	<label for="name"><b style="font-size: 20px;">방문 지역</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="trainer_loc" value="${trainer_loc }" class="form-control" required="required" style="width: 800px;"><br>
	
	<label for="name"><b style="font-size: 20px;">자기소개</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="trainer_content" value="${trainer_content }" class="form-control" required="required" style="width: 800px;"><br>
			 
	<label for="name"><b style="font-size: 20px;">가능 날짜</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="trainer_date" value="${trainer_date }" class="form-control" required="required" style="width: 800px;"><br>
			 	
	<!-- 사진 변경 안되게 -->		 	
    <label for="name"><b style="font-size: 20px;">사진</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br>
			<br>  <input type="file" class="form-control" name="${trainer_photo }" value="${trainer_photo }"style="width: 800px;"> 
			<br>
			 	
	<label for="name"><b style="font-size: 20px;">트레이닝 타이틀</b> &nbsp;<span style="color: red; font-size: 25px;">*</span> </label><br><br>		
			 <textarea style="width: 800px; height:100px;" placeholder="이곳에 직접 입력해주세요" name="trainerprof_subject" class="form-control" required="required"></textarea>
		
	<!-- 별점은 추후 리뷰별점의 평균으로 가져오도록 변경하기 -->
	<label for="name"><b style="font-size: 20px;">별점</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text"  name="trainerprof_star" placeholder="별점" class="form-control" required="required" style="width: 800px;"><br>
		
		<br>
	<label for="name"><b style="font-size: 20px;">전문분야</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text"  name="trainerprof_field" placeholder="전문분야" class="form-control" required="required" style="width: 800px;"><br>
			 
			 <label for="name"><b style="font-size: 20px;">이용 요금</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text"  name="trainerprof_price" placeholder="이용요금" class="form-control" required="required" style="width: 800px;"><br>
	
	</fieldset>	
	</div> <br>
 </div>  <br>

 <button type="submit" class="btn btn-primary" style="margin-left: 750px; width: 300px; height: 80px; font-size: 25px;"
  onclick="btn()">훈련사 프로필 등록</button>
 </form>
 <script type="text/javascript">

function btn(){
	alert('등록이 완료되었습니다');
}
</script>
</body>
</html>
