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
<c:set var="root" value="<%=request.getContextPath() %>"/>
<style type="text/css">
.logo{
  width: 100px;
  height: 30px;
  left: 300px;
  top: 15px; 
}
</style>
</head>
<body>
<!-- Navigation -->
    <nav id="navbarExample" class="navbar navbar-expand-lg fixed-top navbar-light" aria-label="Main navigation">
        <div class="container">

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="${root }/"><img class="logo" src="${root }/image/logo.png"></a> 

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text" href="index.html">Zinc</a> -->

            <!-- <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button> -->

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ms-auto navbar-nav-scroll">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/petsitter" data-bs-toggle="dropdown" aria-expanded="false">?????? ?????????</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="${root }/petsitter">????????? ?????????</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/partnerprofile/partnerlist">????????? ?????????</a></li>
                        </ul>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/trainer" data-bs-toggle="dropdown" aria-expanded="false">?????? ?????????</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="${root }/trainer">?????? ?????????</a></li>
                            <li><div class="dropdown-divider"></div></li>
                           <li><a class="dropdown-item" href="${root }/trainerprofile/trainerlist">????????? ?????????</a></li>
                        </ul>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="${root }/trainer/qna">????????? Q&A</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="${root }/beauty">?????????</a>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/review/petsitter" data-bs-toggle="dropdown" aria-expanded="false">?????? ??????</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="${root }/review/petsitter">????????? ??????</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/review/trainer">?????? ??????</a></li>
                        </ul>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/partnerService/partnerlist" data-bs-toggle="dropdown" aria-expanded="false">????????? ??????</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                           <li><a class="dropdown-item" href="${root }/partnerService/partnerlist">????????? ??????</a></li>
                           <li><div class="dropdown-divider"></div></li>
                           <li><a class="dropdown-item" href="${root }/trainerService/trainerlist">????????? ??????</a></li>
                        </ul>
                    </li>
                </ul>
                <span class="nav-item">
                    <a class="btn-solid-sm" href="../chatbot">?????? ??????</a>
                </span>
                
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->

</body>
</html>