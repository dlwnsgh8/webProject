<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="keyword.KeywordDAO" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
KeywordDAO dao = new KeywordDAO(); //dao객체생성
//사용자가 입력한 키워드
String search = request.getParameter("search"); //키워드 목록을 테이블에서 조회
List<String> items = dao.list(search);
for(String str : items) {//화면에 출력
	out.println(str+"<br>");
}
%>
</body>
</html>