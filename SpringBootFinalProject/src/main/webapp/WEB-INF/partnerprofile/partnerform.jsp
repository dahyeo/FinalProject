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

margin: 10px 450px;
margin-bottom:10px;
padding: 50px;
border-radius: 20px;
background-color: white;

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

<form action="insert" method="post" >
<div class="jiwon" style="border: none;">
<b>????????? ????????? ??????</b><br><br>
</div>
<div class="all" style="border: none;"><br>
 <div class="box">
	<fieldset>

	
	
	
	<input type="hidden" name="partner_num" value="${partner_num }">
	
	<label for="name"><b style="font-size: 20px;">??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp; 
			 <input type="text" name="partner_name" value="${partner_name }" class="form-control" required="required" style="width: 700px;"><br>
	
	<label for="name"><b style="font-size: 20px;">??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="partner_gender" value="${partner_gender }" class="form-control" required="required" style="width: 700px;"><br>
			 
	<label for="name"><b style="font-size: 20px;">??????????????????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="partner_date" value="${partner_date }" class="form-control" required="required" style="width: 700px;"><br>
	
	<label for="name"><b style="font-size: 20px;">??????????????????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="partner_time" value="${partner_time }" class="form-control" required="required" style="width: 700px;"><br>
			 
	<label for="name"><b style="font-size: 20px;">????????????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="partner_exp" value="${partner_exp }" class="form-control" required="required" style="width: 700px;"><br>
			 	
	<label for="name"><b style="font-size: 20px;">?????? ?????????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span> </label><br><br>		
			 <textarea style="width: 700px; height:100px;" placeholder="????????? ?????? ??????????????????" name="partnerprof_subject" class="form-control" required="required"></textarea>
		
	<!-- ????????? ?????? ??????????????? ???????????? ??????????????? ???????????? -->
	<label for="name"><b style="font-size: 20px;">??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text"  name="partnerprof_star" placeholder="??????" class="form-control" required="required" style="width: 700px;"><br>
		
		<br>
	<label for="name"><b style="font-size: 20px;">?????? ??????</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text"  name="partnerprof_price" placeholder="????????????" class="form-control" required="required" style="width: 700px;"><br>
	
	</fieldset>	
	</div> <br>
 </div>  <br>
 <button type="submit" class="btn btn-primary" style="margin-left: 700px; width: 300px; height: 80px; font-size: 25px; background-color: #6789F5; border:#6789F5;"
 onclick="btn()">????????? ????????? ??????</button>
 </form>
 <script type="text/javascript">

function btn(){
	alert('????????? ?????????????????????');
}
</script>
</body>
</html>
