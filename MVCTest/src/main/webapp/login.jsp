<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%-- login.jsp --%>
<body>
  <h3>로그인 폼</h3>
  <hr>
<%--
    <서버(자바) '/'경로> - 컨텍스트 루트         8080/MVCTest/
        예) /MVCTest/ureca/color
    ==> localhost:8080/MVCTest/MVCTest/ureca/color
    
    
    <클라이언트(HTML,CSS,JS) '/'경로> - 서버 루트   8080/
        예) /MVCTest/ureca/color
    ==> localhost:8080/MVCTest/ureca/color

--%>  
  <form>
     
     <!-- <input type="text" name="act" value="loginForm"> --> 
     <input type="hidden" name="act" value="loginForm"> 
     아이디: <input type="text" name="id"> <br>
     비번:  <input type="password" name="pwd"> <br>
     <button type="submit">로그인</button>
  </form>
  
  
  
</body>
</html>



