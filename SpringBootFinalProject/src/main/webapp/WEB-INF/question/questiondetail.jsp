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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<c:set var="root" value="<%=request.getContextPath() %>"/>
<title>Insert title here</title>

<style type="text/css">
p.cont, p.a_cont
{
	white-space:pre-line;
}
</style>
</head>
<body>
<div style="width: 1000px;height:1039px;"> 
	<div style="width: 1000px; margin-top:5%; margin-left: 21%; margin-bottom: 15px;">
	<b style="font-size: 24px; color:#555555;">[${dto.que_category }] 카테고리</b>
	<a href="qna" style="font-size: 24px; color:gray; float:right; text-decoration: none;">목록으로 돌아가기 > </a><br>
	</div>
	
	<div style="width: 1000px; margin-left: 21%;">
	
	</div>
	
	<div style="width:1000px; margin-left: 21%; margin-top:10px; border:1px solid #e0e0e0; padding: 75px 80px 80px 80px; border-radius: 12px;">
	<c:if test="${sessionScope.loginok!=null && sessionScope.loginname==dto.mem_name || sessionScope.loginok!=null && sessionScope.loginname=='관리자'}">
	<i class="bi bi-x-circle" style="cursor: pointer; float: right; color:gray;" onclick="location.href='qdelete?que_num=${dto.que_num}'"></i>
	</c:if>
	<p style="width:500px; font-size:21px; color:#6a92fe; font-weight: bold; line-height: 30px; margin-left: 69px;">와요 회원님의 질문</p>	
	<img src="${root }/image/question.png" alt="질문" style="width: 54px; height: 39px; margin-right: 13px;float:left;">
	<p style="font-size: 32px; font-weight: 600; line-height:35px; margin-left: 60px; color:black; width:800px;">${dto.que_subject }</p>
			<span style="margin-left: 70px; color:gray; font-size: 13px;"> ${dto.mem_name }&nbsp;&nbsp; <fmt:formatDate value="${dto.que_date }" pattern="yy.MM.dd"/> </span>
			<br><br><hr><br>
			
			<p class="cont">${dto.que_content }</p>
	</div> 
	
	<c:if test="${ans_count==0}">
		<div style="width: 1000px; margin-left: 21%; margin-top:10px; text-align: center;">
		<c:if test="${sessionScope.loginok!=null && sessionScope.status==1}">
		<button type="button" class="btn btn-primary btn-lg" onclick="location.href='answer?que_num=${dto.que_num}'">답변등록하기</button>
		</c:if>
		</div>
	</c:if>

	
	<c:if test="${ans_count>0 }">
	<div style="width:1000px; margin-left: 21%; margin-top: 20px;">
	<img alt="" src="${root }/image/banner_1.jpg" style="cursor: pointer; width: 1000px; height: 223px; border:1px solid #e0e0e0;  border-radius: 12px;" 
	onclick="location.href='${root}/petsitter'">
	</div>
	
	<div style="width:1000px; margin-left: 21%; margin-top: 30px; border:1px solid #e0e0e0; padding: 75px 80px 90px 80px; border-radius: 12px;">
	<!-- 훈련사 사진 임의로 넣었습니다. -->
	<img style="width:70px; height:70px;border-radius:45px; margin-right:20px; margin-top:10px; float:left;" src="${root }/image/w1.png">
	<p style="font-size:21px; color:#6a92fe; font-weight: 600; line-height: 30px; margin-left: 68px;">와요에서 활동중인<p>
	<p style="font-size: 34px; font-weight: bold; color:black; line-height:30px; margin-left: 56px; color:black; width:600px;">${adto.trainer_name } 훈련사님의 답변</p>
	<span style="margin-left:92px; color:gray; font-size: 13px;"><fmt:formatDate value="${adto.ans_date }" pattern="yy.MM.dd"/></span>	
	<br><hr><br>
		<div style="margin-bottom: 20px;">
		<p class="a_cont">${adto.ans_content }</p>
		</div><br><br>

	<!-- 훈련사 프로필 -->	
	<div style="border:1px solid #EBEBEB;height:176px;border-radius:10px;margin-top:24px;display:flex">
		<div style="display:flex;align-items:center;padding-left:50px; padding-top: 50px; padding-bottom: 30px;">
			<c:if test="${tpdto.trainer_photo!=null }">
			<img src="${root }/photo/${tpdto.trainer_photo}" style="width:101px;height:101px;border-radius:53px;margin-right:30px" >
			</c:if>
			<c:if test="${tpdto.trainer_photo==null }">
			<img src="${root }/image/w1.png" style="width:101px;height:101px;border-radius:53px;margin-right:30px" >
			</c:if>
				<div>
					<div style="display:flex;align-items:center; margin-bottom: -20px;">
					<p style="font-size:20px;font-weight:600;color:#333333;letter-spacing:-0.2px">${tpdto.trainer_name } 훈련사</p>
					<a href="/trainerprofile/trainerdetail?trainerprof_num=${tpdto.trainerprof_num }" 
					style="text-decoration:none; margin-left:16px;font-weight:500;font-size:15px;letter-spacing:-0.1px;color:#999999; margin-top: -9px;" target="_blank">프로필 보기</a>
					</div>

					<div style="margin-top:21px;display:flex;overflow:hidden; margin-bottom: -10px;">
					<p style="margin-right:10px;font-size:15px;font-weight:500;color:#999999;">경력 및 자격</p>
						<div style="display:flex;align-items:center">
							<p style="font-size:15px;color:#555555">${tpdto.trainer_career}</p>
						</div>
					</div>

					<div style="margin-top:6px;display:flex;align-items:center">
					<p style="margin-right:10px;font-size:15px;font-weight:500;color:#999999;">Q&amp;A 답변글</p>
						<div style="display:flex;align-items:center">
						<p style="font-size:15px;color:#555555;line-height:18px">총 답변수&nbsp;&nbsp;</p>
						<p style="font-size:15px;letter-spacing:-0.2px;color:#6A92FE;font-weight:600">
						<c:if test="${tCount == 0}"> 0 </c:if>
						<c:if test="${tCount >0}"> ${tCount } </c:if>
						</p>
						</div>
					</div>
				</div>
		</div>
	</div>
	</div>
	<div style="width:1000px; margin-left: 21%; margin-top: 20px;">
	<img alt="" src="${root }/image/banner_4.png" style="cursor: pointer; width: 1000px; height: 223px; border:1px solid #e0e0e0;  border-radius: 12px;" 
	onclick="location.href='${root}/petsitter'">
	</div> 
</c:if>

	</div>	
	

</body>
</html>
