<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 에러</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
	<script>
		window.onload = function() {
			swal({
				title : "일치하는 아이디가 없거나 비밀번호가 일치하지 않습니다.",
			    icon  : "error",
			    closeOnClickOutside : false
			}).then(function(){
				location.href = "${pageContext.request.contextPath}/member/login";
			});
		}
	</script>
</body>
</html>