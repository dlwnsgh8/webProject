<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function winclose() {
	opener.document.getElementById("gugudan").value = document.form.gugudan.value;
	window.close();
}
</script>
</head>
<body>
<%
int gugudan = Integer.parseInt(request.getParameter("gugudan"));
%>
<h1><%=gugudan%></h1>
<%
for(int i=1; i<=9; i++) {
	out.println(gugudan+" × "+i+" = "+gugudan*i+"<br>");
}
%>
<form name="form">
메인창에 전달할 값을 입력하시오<input type="text" name="gugudan">
<input type="button" value="닫기" onclick="winclose()">
</form>
</body>
</html>