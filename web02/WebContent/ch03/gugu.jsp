<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>저는 팝업창입니다.</title>
<script type="text/javascript">
function winclose() { //opener : 팝업창을 오픈한 메인창
	//메인창의 dan값을 팝업창의 dan값으로 변경시킴
	//opener.opener.docu......
	opener.document.getElementById("dan").value = document.form1.dan.value;
	window.close();
}
</script>
</head>
<body>
<%
int dan = Integer.parseInt(request.getParameter("dan"));
%>
<h2><%=dan%></h2>
<%
for(int i=1; i<=9; i++) {
	out.println(dan+" × "+i+" = "+dan*i+"<br>");
   }
%>
<!-- window.close() 창닫기 -->
<form name="form1">
메인창에 전달할 값을 입력하세요.<input type="text" name="dan">
<input type="button" value="닫기" onclick="winclose()">
</form>
</body>
</html>