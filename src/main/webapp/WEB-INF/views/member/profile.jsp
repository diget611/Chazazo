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
<title>회원 정보 수정 페이지</title>
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
			<div class="carmore-section p-0 m-0">
				<div class="container">
					<h3>내 정보 관리</h3>
					<div class="container">
						<div class="pt-5 pb-3">
							<div class="text-center">
								<div id="js_vmp_user_profile">
									<img class="img-user-profile img-user-profile-large object-fit center-crop mx-auto mb-3 dc-none">
								</div>
								<div class="js-vmp-txt-nickname text-18 color-grey-3 font-weight-bold">닉네임</div>
								<div class="js-vmp-txt-email text-12 color-grey-5">이메일</div>
							</div>
						</div>
					</div>
			
					<section class="carmore-section pt-0">
						<div class="container">
							<div class="list-group list-group-flush">
								<a class="list-group-item list-group-item-action d-flex justify-content-between align-items-center px-0 click-effect-press" id="js_vmp_btn_email" href="javascript:void(0)">
								<div class="dc-flex w-50">
									<span class="mb-0 text-14 line-height-1">이메일 계정</span>
									<span class="badge badge-soft-primary line-height-1 ml-2" id="js_vmp_badge_email_certification" style="display: none;">인증완료</span>
									<span class="badge badge-soft-warning line-height-1 ml-2 dc-none" id="js_vmp_badge_email_uncertificated" style="display: none;">미인증</span>
								</div>
								
							<div class="dc-flex justify-content-end w-50">
								<span class="js-vmp-txt-email text-14 color-grey-4 line-height-1 ellipsis pr-1">이메일</span>
								<img class="line-height-1 ml-2" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg=="></div></a></div><div class="list-group list-group-flush">
								<a class="list-group-item list-group-item-action d-flex justify-content-between align-items-center px-0 click-effect-press" id="js_vmp_btn_phone" href="javascript:void(0)"><div class="dc-flex"><span class="mb-0 text-14 line-height-1">휴대폰 번호</span>
								<span class="badge badge-soft-primary line-height-1 ml-2 dc-none" id="js_vmp_badge_phone_certification" style="display: none;">인증완료</span>
								<span class="badge badge-soft-warning line-height-1 ml-2" id="js_vmp_badge_phone_uncertificated" style="display: none;">미인증</span>
							</div>
							<div class="dc-flex justify-content-end w-50">
									<span class="text-14 color-grey-4 line-height-1 ellipsis pr-1" id="js_vmp_txt_phone"></span>
									<img class="line-height-1 ml-2" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg=="></div></a></div><div class="list-group list-group-flush">
									<a class="list-group-item list-group-item-action d-flex justify-content-between align-items-center px-0 click-effect-press" id="js_vmp_btn_nickname" href="javascript:void(0)">
										<div>
											<span class="mb-0 text-14 line-height-1">닉네임</span>
										</div>
							<div class="dc-flex justify-content-end w-50">
									<span class="js-vmp-txt-nickname text-14 color-grey-4 ellipsis pr-1">힘겨운호떡</span>
									<img class="ml-2" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg=="></div></a></div><div class="list-group list-group-flush">
									<a class="list-group-item list-group-item-action d-flex justify-content-between align-items-center px-0 click-effect-press" id="js_vmp_btn_birthday" href="javascript:void(0)"><div><span class="mb-0 text-14 line-height-1">생년월일</span></div><div class="dc-flex justify-content-end w-50"><span class="text-14 color-grey-4 ellipsis pr-1" id="js_vmp_txt_birthday">1998.3.28</span>
									<img class="ml-2" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg=="></div></a></div><div class="list-group list-group-flush"><a class="list-group-item list-group-item-action d-flex justify-content-between align-items-center px-0 click-effect-press" id="js_vmp_btn_gender" href="javascript:void(0)">
										<div>
											<span class="mb-0 text-14 line-height-1">성별</span>
										</div>
							<div class="dc-flex justify-content-end w-50">
								<span class="text-14 color-grey-4 ellipsis pr-1" id="js_vmp_txt_gender">여</span>
								<img class="ml-2" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg==">
							</div>
							</a>
						</div>
						</div>
				</section>
				<div class="container my-4 tmobi-dc-none">
				<div class="dc-flex justify-content-end">
				<div class="text-14 color-grey-5 click-effect-press" id="js_vmp_btn_logout">로그아웃
				</div>
				<div class="text-14 color-grey-5 mx-3">|</div>
				<div class="text-14 color-grey-5 click-effect-press" id="js_vmp_btn_leave_member">회원탈퇴
				</div>
				</div>
				</div>
				</div>
			</div>
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