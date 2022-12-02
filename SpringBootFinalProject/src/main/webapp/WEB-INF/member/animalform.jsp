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
        background-color: #007bff;
        color: #ffffff;
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
</style>
<script type="text/javascript">

//사진 불러오면 이미지 미리보기
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
</script>
</head>
<body>
  <form action="animalinsert" method="post" enctype="multipart/form-data">
  <input type="hidden" name="mem_num" value="${mem_num }">
  
  <div class="jiwon" style="border: none;">
  <b>반려동물 정보 작성하기</b>
  </div>

<div class="all" style="border: none;">

<div class="box1">
	<fieldset>
	<legend style="font-size: 30px;">반려동물 정보</legend><br><br>
	 
	  <div>
	      <label for="name" style="width: 150px;">
	      <b style="font-size: 20px;">사진</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;
	      <img id="showimg">
		  </label>
	  </div><br>
	  
	      <label for="name" style="position: relative; left: 160px;">
		  <input type="file" name="upload" class="form-control" style="width: 300px;"
			 id="upload" onchange="readURL(this);"><br>
		  </label>
		
		<label for="name"><b style="font-size: 20px;">이름</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="ani_name" placeholder="반려동물 이름" class="form-control" required="required"></label><br><br>	
					
        <label class="test_obj"><b style="font-size: 20px;">성별</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp;&emsp;&emsp;&emsp; 
             <input type="radio" name="ani_gender" value="수컷" placeholder="성별" required/>
              <span>수컷</span> 
	    </label>	
	    
	    <label class="test_obj">
             &emsp; 
             <input type="radio" name="ani_gender" value="암컷" placeholder="성별" required/>
              <span>암컷</span> 
	    </label> <br><br>		
	   
	    <label class="test_obj"><b style="font-size: 20px;">종류</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp;&emsp;&emsp;&emsp; 
             <input type="radio" name="ani_type" value="강아지"  required/>
              <span>강아지</span> 
	    </label>	
	    
	    <label class="test_obj">
             &emsp; 
             <input type="radio" name="ani_type" value="고양이" required/>
              <span>고양이</span> 
	    </label> <br><br><br>
	    
	    <button type="submit" class="btn btn-primary" style="margin-left: 130px; width: 300px; height: 80px; font-size: 25px;">등록하기</button>
	    
		</fieldset>

 </div>
 
 </div>
</form>
</body>
</html>