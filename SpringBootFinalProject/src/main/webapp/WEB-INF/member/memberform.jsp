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
<form action="insert" method="post">
  <table class="table table-bordered">
    <tr>
      <th>id</th>
      <td>
        <input type="text" name="mem_id">
      </td>
    </tr>
    <tr>
      <th>pass</th>
      <td>
        <input type="text" name="mem_pass">
      </td>
    </tr>
    <tr>
      <th>name</th>
      <td>
        <input type="text" name="mem_name">
      </td>
    </tr>
    <tr>
      <th>email</th>
      <td>
        <input type="text" name="mem_email">
      </td>
    </tr>
    <tr>
      <th>birth</th>
      <td>
        <input type="date" name="mem_birth">
      </td>
    </tr>
    <tr>
      <th>phone</th>
      <td>
        <input type="text" name="mem_phone">
      </td>
    </tr>
    <tr>
      <th>addr</th>
      <td>
        <input type="text" name="mem_addr">
      </td>
    </tr>
    <tr>
      <td>
        <button type="submit">전송</button>
        <button>목록</button>
      </td>
    </tr>
  </table>
</form>
</body>
</html>