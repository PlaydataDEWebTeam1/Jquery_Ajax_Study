<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link type="text/css" rel="stylesheet" href="/css/common.css">
<script type="text/javascript" src="/js/jquery-3.6.0.min.js" ></script>
<script type="text/javascript">	

	$(document).ready(function(){
		alert("jquery를 실행할 준비가 되었습니다.");
		
		$("#submit").click ( function(){
			alert("jquery click test");
		});
	});
	
</script>
</head>
<body>
<a href="/"><img src="/img/logo.png"></a>
<a href="joinForm">회원가입</a>
<a href="loginForm">로그인</a>
<h3>로그인 페이지 </h3>
<form action="login" method= "post">
	<input type="text" name="memberId" autofocus="autofocus" required= "required" />
	<input type="password" name="memberPw" required= "required"/>
	<input type="submit" id="submit" value="로그인"/>
	<input type="reset" value="취소"/>
</form>

<c:if test= "${not empty message}">
	${message}
</c:if>


</body>
</html>