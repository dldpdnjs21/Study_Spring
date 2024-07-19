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
   		pageContext.setAttribute("k1", "홍길동");
   	  	request.setAttribute("k2", "김주원");
   	  	session.setAttribute("k3", "길라임");
   	  	application.setAttribute("k4", "이주원");
   		request.getRequestDispatcher("end.jsp").forward(request, response);//페이지 이동
   %>
</body>
</html>