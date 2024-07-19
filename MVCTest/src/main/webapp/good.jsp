<%@ page import = "com.ureca.A" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좋아요</title>
</head>
<!-- good.jsp -->
<body>
	<h3>GOOD</h3>
	<hr color="red">
	<%! 
		//멤버영역		class My{ 멤버영역 }
		int su = 1004;
	%>
	<hr color="blue">
	<% 
		//(service)메서드 영역
		String str="좋아좋아"; //지역변수
		out.print("STR="+str);
		str="오늘 메뉴는?";
		
		A a = new A();
	%>
	<hr color="green">
	<%= str %>
	<hr color="pink">
	<%= a.getMsg() %>
	
</body>
</html>