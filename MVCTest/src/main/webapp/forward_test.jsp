<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%-- forward_test.jsp --%>
<body>
   <%
       request.getRequestDispatcher("end.jsp").forward(request, response);//페이지 이동
   %>
</body>
</html>