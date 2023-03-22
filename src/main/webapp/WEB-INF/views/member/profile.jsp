<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<jsp:include page="../header.jsp"/>
	
	<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="pc-mobile-header-container">
				<div class="pc-header space-2 text-center dc-none dc-lg-block">
					<div class="container">
						<h2 class="text-grey-3 underline-bg dc-inline-block">마이페이지</h2>
						<p class="text-grey-5 mb-0">내 정보</p>
					</div>
				</div>
			</div>
			<div class="col-md-4" style="float: left;">    
				<div class="blog-asside-right">
					<div class="panel panel-default sidebar-menu wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
						<div class="panel-heading">
							<h3 class="panel-title">회원정보</h3>
						</div>
					</div>
					<div class="dealer-widget  row-md-4">
						<div class="dealer-content">
							<div class="inner-wrapper">
								<div class="clear">
									<div class="col-xs-8 col-sm-8 ">
										<h3 class="dealer-name"><span>김땡땡</span></h3>
									</div>
								</div>
								<div class="clear">
									<ul class="dealer-contacts">                                       
										<li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
										<li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
										<li><i class="pe-7s-map-marker strong"> </i> 주소주소</li>
									</ul>
									<p>Duis mollis  blandit tempus porttitor curabiturDuis mollis  blandit tempus porttitor curabitur , est non…</p>
								</div>
							</div>
						</div>
					</div>
					<div class="blog-asside-right" >
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">
								<button type="button" class="btn btn-outline-primary">예약내역</button><br>
								<button type="button" class="btn btn-outline-primary">예약 수정 / 취소</button><br>
								<button type="button" class="btn btn-outline-primary">비회원 예약 확인</button></h3>
							</div>
						</div>
					</div>  
					<div class="blog-asside-right" >
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">
								<button id="updateinfoBtn" type="button" class="btn btn-outline-primary">회원정보 수정</button><br></h3>
							</div>
						</div>
					</div>
					<div class="blog-asside-right" >
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">
								<button type="button" class="btn btn-outline-primary">1:1 문의</button><br>
								<button type="button" class="btn btn-outline-primary">쿠폰 관리</button><br>
								<button type="button" class="btn btn-outline-primary">회원탈퇴</button></h3>
							</div>
						</div>
					</div>
				</div>   
			</div>
			<div class="blog-lst col-md-8 p0 " style="float: right;">
				<section id="id-100" class="post single">
					<form action="<%=request.getContextPath() %>/member/register"
							method="post" onsubmit="return checkForm()">
							<div class="form-group">
								<label>아이디</label>
								<input type="password" class="form-control" name="username">
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
							<div class="form-group">
								<label>면허증 번호</label>
								<input type="text" class="form-control" name="license">
							</div>
							<div class="form-group">
								<label>이메일</label>
								<input type="text" class="form-control" name="email">
							</div>						
							<div class="text-center">
								<button type="submit" class="btn btn-default">회원 정보 수정</button>
							</div>
						</form>
				</section>
				<!-- 얜 뭐지 --> 
				<section class="about-autor">
				</section>
				<!-- 얜 뭐지 -->
			</div>                    
		</div>
	</div>
    
	<jsp:include page="../footer.jsp"/>
	
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
	<script>
		$('#updateinfoBtn').on('click', function() {
			location.href='<%=request.getContextPath()%>/member/mypage/profile';
		});
	</script>
</body>
</html>