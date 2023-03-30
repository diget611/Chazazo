<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<button type="button" id="test">테스트</button>
	<h1>관리자 회원 관리</h1>
	${memberList }
	
	<script>
		var testNum = 0;
		
		$('#test').on('click', function() {
			testNum += 1;
			console.log(testNum);
		});
		
		$(window).on('scroll', function() {
			let scrTest = $(window).scrollTop();
			console.log(scrTest);
			if(scrTest == $(document).height() - $(window).height()) {
				console.log('끝임');
			}
		});
		
		
	
	</script>						
</body>
</html>