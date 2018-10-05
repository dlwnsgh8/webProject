<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/common.jsp"  %>
<script type="text/javascript">
$(function() {
	var i = 0;
	$("div.out").mouseover(function() {
		//1.선택자.text(); 내용을 읽는다는 뜻
		//2.선택자.text("값"); 내용을 바꾼다는 뜻		
		$("p:first").text("mouse over"); //첫번째 p태그의 내부 텍스트 변경
		//마지막 p태그의 내부 텍스트 변경
		$("p:last").text(++i);//아래p테그에 0값 부터 계속 1씩 증가
	});//mouseover	
	$("div.out").mouseout(function() {
		$("p:first").text("마우스를 여기로 움직이세요.");
	});//mouseout
});//function()
</script>
</head>
<body>
<div class="out">
	<p>마우스를 여기로 움직이세요.</p>
	<p>0</p>
</div> 
<div>두번째 div</div>
</body>
</html>