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
</head>
<body>
<div style="margin: 50px 50px;">
  <form action="loginprocess" method="post" class="form-inline">
    <table class="table table-bordered" style="width: 300px;">
        <tr>
          <td colspan="2" align="center">
            <input type="checkbox" name="cbsave"
            ${sessionScope.saveok==null?"":"checked"}>아이디저장
          </td>
        </tr>
        
        <tr>
          <th width="100" bgcolor="#fcc">아이디</th>
            <td>
              <input type="text" name="mem_id" class="form-control"
              autofocus="autofocus" required="required" style="width: 120px;"
              value="${sessionScope.saveok==null?"":sessionScope.myid }">
            </td>
        </tr>
        
        <tr>
          <th width="100" bgcolor="#fcc">비밀번호</th>
            <td>
              <input type="password" name="mem_pass" class="form-control"
              autofocus="autofocus" required="required" style="width: 120px;">
            </td>
        </tr>
        
        <tr>
          <td colspan="2" align="center">
            <button type="submit" class="btn btn-success" style="width: 100px;">로그인</button>
          </td>
        </tr>
    </table>
  </form>
</div>
</body>
</html>