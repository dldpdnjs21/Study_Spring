<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person정보입력</title>
</head>
<body>
  <h3>Person정보입력</h3>
  <hr>
  <!-- <form method="post" action="regist"> -->
  <form method="post" action="/person/regist">
    이름: <input type="text" name="name"><br>
    나이: <input type="text" name="age"><br>
    직업: <input type="text" name="job"><br>
   <button>입력</button>
  </form>
  <br>
  <a href="">사람목록보기</a>
</body>
</html>