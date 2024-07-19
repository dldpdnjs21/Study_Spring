<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카운트</title>
</head>
<%-- 
	count.jsp 
	http://10.4.2.100:8080/MVCTest/count.jsp
--%>
<body>
	<%! int cnt = 0; %>
	<%
     //out.print("HTML마크업");  ==> 브라우저 출력
     System.out.println(request.getRemoteAddr() +":"+ session.getId()); //==> 서버 콘솔 출력
     if(session.isNew())//브라우저 당 한번만 실행  ==>  브라우저를 통해 첫 접속을 하였다면(처음 세션이라면) 
        ++cnt;
   %>
	조회수: <%= ++cnt %>회 (<%= session.getId() %>)
</body>
</html>