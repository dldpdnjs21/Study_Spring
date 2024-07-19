<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%-- redirect_test.jsp --%>
<body>
   <%
 //영역에 데이터 저장
   		pageContext.setAttribute("k1", "홍길동");  //String k1 = "홍길동";
   		request.setAttribute("k2", "김주원");
   		session.setAttribute("k3", "길라임");
   		application.setAttribute("k4", "이순신");   
   
   		request.setCharacterEncoding("UTF-8");
   		String username = request.getParameter("username"); 
   		session.setAttribute("un", username);   
   
   		response.sendRedirect("end.jsp");//페이지 이동
   %>
</body>
</html>