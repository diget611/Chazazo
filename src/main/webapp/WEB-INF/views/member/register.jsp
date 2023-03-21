<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Home page</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/animate.css"
	rel="stylesheet" media="screen">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.theme.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.transitions.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="register-area vh-100" style="background-color: rgb(249, 249, 249);">
		<div class="container">
			<div>
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 login-blocks">
						<h2>회원가입 :</h2>
						<form action="<%=request.getContextPath() %>/member/register"
							method="post" onsubmit="return checkForm()">
							<div class="form-group">
								<label>아이디</label>
								<input type="text" class="form-control" name="username">
							</div>
							<div class="form-group">
								<label>비밀번호</label>
								<input type="password" class="form-control" name="password">
							</div>
							<div class="form-group">
								<label>이름</label>
								<input type="text" class="form-control" name="name">
							</div>
							<div class="form-group">
								<label>성별</label>
								<select class="form-control" name="gender">
									<option selected="selected" hidden="hidden" value="2">성별</option>
									<option value="0">남성</option>
									<option value="1">여성</option>
								</select>
							</div>
							<div class="form-group">
								<label>생년월일</label>
								<input type="text" class="form-control" name="birth">
							</div>
							<div class="form-group">
								<label>전화번호</label>
								<input type="text" class="form-control" name="phoneNumber">
							</div>
							<div class="form-group container">
								<label>면허증 번호</label> 
								<div class="row">
									<div class="col-xs-10" >
										<input type="text" class="form-control" name="license" style="width:100%;">
									</div>
									<div class="col-xs-2" >
										<button type="submit" class="btn btn-default" style="width: 100px;">확인</button>
									</div>
								</div>
							</div>
							<div class="form-group container">
								<label>이메일 </label> 
								<div class="row">
									<div class="col-xs-10" >
										<input type="text" class="form-control" name="email" style="width:100%;">
									</div>
									<div class="col-xs-2" >
										<button type="submit" class="btn btn-default" style="width: 100px;">확인</button>
									</div>
								</div>
							</div>							
							<div class="text-center">
								<button type="submit" class="btn btn-default">회원가입</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../footer.jsp" />
	
	<script>
		function checkForm(){
			var testId = /^[a-z]{1}[a-z0-9_-]{4,19}$/;
			var testPass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&\*])[\da-zA-Z!@#$%^&\*]{8,30}$/;
			var testName = /^[가-힣]{2,10}$/;
			var testBirth = /^(19[0-9]{2}|20[0-1]{1}[0-9]{1}|202[0-3]{1})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
			var testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
			var testLicense = /^(1[1-9]|2[0-68-8])([0-9]{2}[0-9]{6}[0-9]{2})$/;
			var testEmail = /([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~])+\")@([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])/;
			
			if($('[name=username]').val() == '' | $('[name=password]').val() == '' | $('[name=name]').val() == ''
			| $('[name=birth]').val() == '' | $('[name=gender]').val() == '' | $('[name=phonNumber]').val() == ''
			| $('[name=license]').val() == '' | $('[name=email]').val() == '') {
				return false;
			} else if(!testId.test($('[name=username]').val()) | !testPass.test($('[name=password]').val())
					| !testName.test($('[name=name]').val()) | !testBirth.test($('[name=birth]').val())
					| !testPhone.test($('[name=phoneNumber]').val()) | !testLicense.test($('[name=license]').val())
					| !testEmail.test($('[name=email]').val())) {
				return false;	
			} else {
				return true;
			}
		}
		
		// ID 유효성 체크 (영어 소문자로 시작, 영어 소문자, 숫자, 특수문자(-, _) 가능)
		$('[name=username]').on('blur', function(){
			var testId = /^[a-z]{1}[a-z0-9_-]{4,19}$/;
			if($('[name=username]').val() == '') {
				$('[name=username]').next().remove();
				$('[name=username]').after('<div>아이디를 입력하세요.</div>');
			} else if(!testId.test($('[name=username]').val())){
				$('[name=username]').next().remove();
				$('[name=username]').after('<div>5 ~ 20자 사이의 알파벳 소문자, 숫자, -, _로 이루어진 아이디를 작성하세요.</div>');
			} else {
				$('[name=username]').next().remove();
			}
		});
		
		// 패스워드 유효성 체크
		$('[name=password]').on('blur', function(){
			var testPass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&\*])[\da-zA-Z!@#$%^&\*]{8,30}$/;
			if($('[name=password]').val() == ''){
				$('[name=password]').next().remove();
				$('[name=password]').after('<div>비밀번호를 입력하세요.</div>');
			} else if(!testPass.test($('[name=password]').val())){
				$('[name=password]').next().remove();
				$('[name=password]').after('<div>8 ~ 30자 사이의 하나 이상의 알파벳 대소문자, 숫자, 특수문자로 이루어진 비밀번호를 작성하세요.</div>');
			} else {
				$('[name=password]').next().remove();
			}
		});
		
		// 이름 유효성 체크
		$('[name=name]').on('blur', function(){
			var testName = /^[가-힣]{2,10}$/;
			if($('[name=name]').val() == ''){
				$('[name=name]').next().remove();
				$('[name=name]').after('<div>이름을 입력하세요.</div>')
			} else if(!testName.test($('[name=name]').val())){
				$('[name=name]').next().remove();
				$('[name=name]').after('<div>2 ~ 10자 사이의 한글 이름을 입력하세요.</div>')
			} else {
				$('[name=name]').next().remove();
			}
		});
		
		// 생년월일 유효성 체크
		$('[name=birth]').on('blur', function(){
			var testBirth = /^(19[0-9]{2}|20[0-1]{1}[0-9]{1}|202[0-3]{1})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
			if($('[name=birth]').val() == ''){
				$('[name=birth]').next().remove();
				$('[name=birth]').after('<div>생년월일을 입력하세요.</div>');
			} else if(!testBirth.test($('[name=birth]').val())){
				$('[name=birth]').next().remove();
				$('[name=birth]').after('<div>생년월일을 확인하세요.</div>');
			} else {
				$('[name=birth]').next().remove();
			}
		});
		
		// 성별 유효성 체크
		$('[name=gender]').on('blur', function(){
			if($('[name=gender]').val() == '2'){
				$('[name=gender]').next().remove();
				$('[name=gender]').after('<div>성별을 선택하세요.</div>');
			} else {
				$('[name=gender]').next().remove();
			}
		});
		
		// 전화번호 유효성 체크
		$('[name=phoneNumber]').on('blur', function(){
			var testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
			if($('[name=phoneNumber]').val() == ''){
				$('[name=phoneNumber]').next().remove();
				$('[name=phoneNumber]').after('<div>전화번호를 입력하세요.</div>');
			} else if(!testPhone.test($('[name=phoneNumber]').val())){
				$('[name=phoneNumber]').next().remove();
				$('[name=phoneNumber]').after('<div>전화번호를 확인하세요.</div>');
			} else {
				$('[name=phoneNumber]').next().remove();
			}
		});
		
		// 면허증 번호 유효성 체크
		$('[name=license]').on('blur', function(){
			var testLicense = /^(1[1-9]|2[0-68-8])([0-9]{2}[0-9]{6}[0-9]{2})$/;
			if($('[name=license]').val() == ''){
				$('[name=license]').next().remove();
				$('[name=license]').after('<div>면허증 번호를 입력하세요.</div>');
			} else if(!testLicense.test($('[name=license]').val())){
				$('[name=license]').next().remove();
				$('[name=license]').after('<div>면허증 번호를 확인하세요.</div>');
			} else {
				$('[name=license]').next().remove();
			}
		});
		
		// 이메일 유효성 체크
		$('[name=email]').on('blur', function(){
			var testEmail = /([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~])+\")@([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])/;
			if($('[name=email]').val() == '') {
				$('[name=email]').next().remove();
				$('[name=email]').after('<div>이메일 주소를 입력하세요.</div>');
			} else if(!testEmail.test($('[name=email]').val())){
				$('[name=email]').next().remove();
				$('[name=email]').after('<div>이메일 주소를 확인하세요.</div>');
			} else {
				$('[name=email]').next().remove();
			}
		});
	</script>
	
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/modernizr-2.6.2.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery-1.10.2.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-select.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-hover-dropdown.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/easypiechart.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery.easypiechart.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>

</body>
</html>