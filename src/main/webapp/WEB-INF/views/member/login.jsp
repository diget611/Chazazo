<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>로그인</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">

<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/modernizr-2.6.2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-hover-dropdown.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/easypiechart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery.easypiechart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">

</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	
	<section>
		<div class="register-area vh-100" style="background-color: rgb(249, 249, 249) ;">     
			<div class="container">
				<div>
					<div class="box-for overflow" style="width: 600px; margin: 0 auto;">                         
						<div class="col-md-12 col-xs-12 login-blocks" style="padding: 20px 40px 20px 40px;">
							<h2>로그인 : </h2> 
							<form action="login-check" method="post">
								<div class="form-group">
									<label>아이디</label>
									<input type="text" class="form-control" name="username" style="border-radius: 2px;">
								</div>
								<div class="form-group">
									<label>비밀번호</label>
									<input type="password" class="form-control" name="password" style="border-radius: 2px;">
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-default" style="border-radius: 2px;"> 로그인 </button>
									<button type="button" class="btn btn-default" id="register" style="border-radius: 2px;"> 회원가입 </button>
								</div>
								<div class="text-center">
									<input type="checkbox" id="rememberCheck" name="remember-me">
									<label for="rememberBtn">로그인 유지</label>
								</div>
								<div class="text-center">
								 	<a href="<%=request.getContextPath()%>/member/find">아이디 찾기</a>
									<span> | </span>
									<a href="<%=request.getContextPath()%>/member/find">비밀번호 찾기</a> 
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/base/chat.jsp"/>
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
	<script>
		$('#rememberCheck').on('ifClicked', rememberMe);
		
		function rememberMe() {
			swal({
				  title: "확인",
				  text: "활성화 시 로그인이 유지됩니다. 안전한 환경에서만 활성화하세요.",
				  icon: "warning",
				  buttons: ["취소", "유지"],
				  dangerMode: true,
				})
				.then((willRemember) => {
				  if (willRemember) {
					  setTimeout(function(){
				            $('#rememberCheck').iCheck('check');}, 0);
				  } else {
					  setTimeout(function(){
				            $('#rememberCheck').iCheck('uncheck');}, 0);
				  }
				});
		};
		
		$('#register').on('click', function() {
			location.href='${pageContext.request.contextPath}/member/register';
		});
		
	</script>
</body>
</html>