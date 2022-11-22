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
body {
  padding: 0px;
  margin: 0px;
}
.bg {
  width: 100%;
  height: 600px;
  overflow: hidden;
  margin: 0px auto;
  position: relative;
  background-color: #f7f8fa;
}
img{
  width: 100px;
  height: 30px;
  left: 300px;
  top: 15px;
}
.text {
  position: absolute;
  width: 100%;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
}
.title {
  padding-left: 200px;
  text-align: left;
  font-size: 60px;
  font-weight: bold;
  color: black;
}
.subtitle{
  padding-left: 200px;
  text-align: left;
  font-weight: 400;
  font-size: 18px;
  color: black;
}
.bannerimg{
  position: absolute;
  width: 600px;
  height: 100%;
  left: 600px;
}
</style>
</head>
<body data-bs-spy="scroll" data-bs-target="#navbarExample">
<<<<<<< HEAD
    
    <!-- Contact -->
    <div id="contact" class="form-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="h2-heading"><span>Use the following form to</span><br> request a quote for your project</h2>
                    <p class="p-heading">Vel malesuada sapien condimentum nec. Fusce interdum nec urna et finibus pulvinar tortor id</p>
                    <ul class="list-unstyled li-space-lg">
                        <li><i class="fas fa-map-marker-alt"></i> &nbsp;22 Praesentum, Pharetra Fin, CB 12345, KL</li>
                        <li><i class="fas fa-phone"></i> &nbsp;<a href="tel:00817202212">+81 720 2212</a></li>
                        <li><i class="fas fa-envelope"></i> &nbsp;<a href="mailto:lorem@ipsum.com">lorem@ipsum.com</a></li>
                    </ul>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    
                    <!-- Contact Form -->
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control-input" placeholder="Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control-input" placeholder="Email" required>
                        </div>
                        <div class="form-group">
                            <select class="form-control-select" required>
                                <option class="select-option" value="" disabled selected>Project type</option>
                                <option class="select-option" value="Company Website">Company Website</option>
                                <option class="select-option" value="Landing Page">Landing Page</option>
                                <option class="select-option" value="Online Shop">Online Shop</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control-textarea" placeholder="Message" required></textarea>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="form-control-submit-button">Submit</button>
                        </div>
                    </form>
                    <!-- end of contact form -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of form-1 -->
    <!-- end of contact -->
    
    <!-- Footer -->
    <div class="footer bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="social-container">
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-facebook-f fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-twitter fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-pinterest-p fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-instagram fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-youtube fa-stack-1x"></i>
                            </a>
                        </span>
                    </div> <!-- end of social-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of footer -->  
    <!-- end of footer -->


    <!-- Copyright -->
    <div class="copyright bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <ul class="list-unstyled li-space-lg p-small">
                        <li><a href="https://wayopet.com/terms/personalterm">Privacy Policy</a></li>
                    </ul>
                </div> <!-- end of col -->
                <div class="col-lg-3">
                    <p class="p-small statement">Copyright © <a href="#">WAYO</a></p>
                </div> <!-- end of col -->
                <div class="col-lg-3">
                    <p class="p-small statement">Distributed By: <a href="https://github.com/dahyeo/FinalProject" target="_blank">쌍용2조</a></p>
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright --> 
    <!-- end of copyright -->
=======
    <div class="bg">
      <img src="${root }/image/top_banner.png" class="bannerimg">
      <div class="text">
        <p class="title">반려생활<br><br><br>파트너</p><br><br>
        <p class="subtitle">반려가족의 하루에 와요가 함께하겠습니다.</p>
      </div>
    </div>

    
>>>>>>> branch 'main' of https://github.com/dahyeo/FinalProject.git
    
    <!-- Back To Top Button -->
    <button onclick="topFunction()" id="myBtn">
        <img src="images/up-arrow.png" alt="alternative">
    </button>
    <!-- end of back to top button -->
    	
</body>
</html>