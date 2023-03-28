<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	
	<input type="checkbox" id="rememberBtn" name="remember-me">
	<label for="rememberBtn">자동 로그인</label>
	
	<script>
		$('#rememberBtn').on('change', rememberCheck);
		
		function rememberCheck() {
			if($('#rememberBtn').prop('checked')) {
				console.log('체크됨');
			} else {
				console.log('체크 안됨');
			}
		}
		
	</script>
										
										
</body>
</html>