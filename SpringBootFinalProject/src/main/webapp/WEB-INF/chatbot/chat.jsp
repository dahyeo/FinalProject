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

<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

<link href="/css/main.css" rel="stylesheet">
<script src="/js/app.js" charset="UTF-8"></script>
    
<title>WebSocket</title>
<style type="text/css">
.img{
  width: 100px;
  height: 110px;
  border-radius: 100px;
}
/* .balloon{
  position: relative;
  margin: 50px;
  width: 200px;
  height: 50px;
  background-color: #6A92FE;
  color: white;
  border-radius: 30px;
}
.balloon:hover{
  border-color: #6A92FE;
  color: #6A92FE;
}  */
</style>
</head>
<body>

<noscript><h2 style="color: #ff0000">Seems your browser doesn't support Javascript! Websocket relies on Javascript being
    enabled. Please enable
    Javascript and reload this page!</h2></noscript>
<div id="main-content" class="container container mt-3">
    <div class="row">
    
        <div class="col">
                <div class="form-group">
                    <label for="connect"><img class="img" src="/image/dog.jpeg"></label>
                    <button id="connect" class="balloon btn btn-default" type="submit">
                      <a class="btn-solid-sm">대화 시작하기</a>
                    </button>
                    <!-- <button id="disconnect" class="btn btn-default" type="submit" disabled="disabled">
                      <a class="btn-solid-sm">대화 끝내기</a>
                    </button> -->
                </div>
        </div>
        
        <div class="col">
                <div class="input-group mb-3">
                  <input type="text" id="msg" style="width: 250px;" class="form-control" placeholder="문의해주세요.">
                  <button id="send" class="btn" style="background-color: #6A92FE; border-color: #6A92FE; color: white;" disabled type="submit">입력</button>
                </div> 
        </div>
  
    </div>
    <div class="row">
        <div class="col-md-12">
            <table id="conversation" class="table table-striped">
                <thead>
                <tr>
                    <th style="color: #6168ff;">와요에게 문의하세요!</th>
                </tr>
                </thead>
                <tbody id="communicate">
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>