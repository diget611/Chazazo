<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	
	<form id="delete_form" method="post" action="/s03/member/${list.id }">
		<input type="hidden" name="_method" value="delete"/>
		<button type="submit">삭제</button>
	</form>
	
	<spring:eval expression="@keyProperty['kakao']"/>
</body>
</html>
