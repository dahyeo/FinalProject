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
<<<<<<< HEAD
  position: absolute;
  width: 100px;
  left: 50px;
  top: 15px;
=======
  width: 100px;
  height: 30px;
  left: 300px;
  top: 15px; 
>>>>>>> branch 'main' of https://github.com/dahyeo/FinalProject.git
}
</style>
</head>
<body>
<!-- Navigation -->
    <nav id="navbarExample" class="navbar navbar-expand-lg fixed-top navbar-light" aria-label="Main navigation">
        <div class="container">
<<<<<<< HEAD
=======

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
                        <a class="nav-link dropdown-toggle" href="${root }/petsitter" data-bs-toggle="dropdown" aria-expanded="false">돌봄 서비스</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="${root }/petsitter">펫시터 서비스</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/petsitter/housesitting">방문 돌봄</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/petsitter/dogwalking">방문 산책</a></li>
                        </ul>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/trainer" data-bs-toggle="dropdown" aria-expanded="false">훈련 서비스</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="${root }/trainer">훈련 서비스</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/trainer/profile">훈련사 프로필</a></li>
                        </ul>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="${root }/trainer/qna">훈련사 Q&A</a>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/review/petsitter" data-bs-toggle="dropdown" aria-expanded="false">이용 후기</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="${root }/review/petsitter">펫시팅 후기</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/review/trainer">훈련 후기</a></li>
                        </ul>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/partner/petsitter" data-bs-toggle="dropdown" aria-expanded="false">파트너 지원</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                           <li><a class="dropdown-item" href="${root }/partnerService/partnerlist">펫시터 지원</a></li>
                            <li><div class="dropdown-divider"></div></li>
                             <li><a class="dropdown-item" href="${root }/trainerService/trainerlist">훈련사 지원</a></li>
                        </ul>
                    </li>
                </ul>
                <span class="nav-item">
                    <a class="btn-solid-sm" href="#contact">문의하기</a>
                </span>
                
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->
>>>>>>> branch 'main' of https://github.com/dahyeo/FinalProject.git

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="${root }/"><img class="logo" src="${root }/image/logo.png"></a> 

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text" href="index.html">Zinc</a> -->

            <!-- <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button> -->

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault" style="margin-left: 500px;">
                <ul class="navbar-nav ms-auto navbar-nav-scroll">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/petsitter" data-bs-toggle="dropdown" aria-expanded="false">돌봄 서비스</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="${root }/petsitter">펫시터 서비스</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/petsitter/housesitting">방문 돌봄</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/petsitter/dogwalking">방문 산책</a></li>
                        </ul>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/trainer" data-bs-toggle="dropdown" aria-expanded="false">훈련 서비스</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="${root }/trainer">훈련 서비스</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/trainer/profile">훈련사 프로필</a></li>
                        </ul>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="${root }/trainer/qna">훈련사 Q&A</a>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/review/petsitter" data-bs-toggle="dropdown" aria-expanded="false">이용 후기</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="${root }/review/petsitter">펫시팅 후기</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/review/trainer">훈련 후기</a></li>
                        </ul>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="${root }/partner/petsitter" data-bs-toggle="dropdown" aria-expanded="false">파트너 지원</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="${root }/partner/petsitter">펫시터 지원</a></li>
                            <li><div class="dropdown-divider"></div></li>
                            <li><a class="dropdown-item" href="${root }/partner/trainer">훈련사 지원</a></li>
                        </ul>
                    </li>
                </ul>
                <span class="nav-item">
                    <a class="btn-solid-sm" href="#contact">문의하기</a>
                </span>
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->
</body>
</html>