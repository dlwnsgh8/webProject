<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
if(name == null || name.equals(""))
%>
<script>
	alert("이름을 입력하세요");
	response.sendRedirect("func.html");
</script>
<%
String position = request.getParameter("position");
String str = name+" "+position+"님의 방문을 환영합니다.";
out.println(str); //웹브라우저에 출력
System.out.println(str); //톰캣 콘솔에 출력
%>
</body>
</html>