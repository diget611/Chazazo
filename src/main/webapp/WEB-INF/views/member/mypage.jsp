<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

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
</head>
<body>
	<jsp:include page="../header.jsp"/>
	
	<section>
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
						<div id="post-content" class="post-body single wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">
							<h2>Header Level 2</h2>
							<ol>
								<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
								<li>Aliquam tincidunt mauris eu risus.</li>
							</ol>
							<blockquote>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada
									tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.
								</p>
							</blockquote>
							<h3>Header Level 3</h3>
							<p>
								Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
								ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt
							</p>
							<ul>
								<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
								<li>Aliquam tincidunt mauris eu risus.</li>
							</ul>
							<p><img src="assets/img/blog.jpg" class="img-responsive" alt="Example blog post alt"></p>
							<p>
								Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
								condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros
								eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus
							</p>
						</div>
						<div class="post-footer single wow fadeInBottum animated animated" style="visibility: visible;">
							<ul class="pager">
								<li class="previous"><a href="#"><i class=""></i>← Older </a></li>
								<li class="next disabled"><a href="#">Newer →<i class=""></i> </a></li>
							</ul> 
						</div>
					</section>
					<!-- 얜 뭐지 --> 
					<section class="about-autor">
					</section>
					<!-- 얜 뭐지 -->
				</div>                    
			</div>
		</div>
	</section>
    
	<jsp:include page="../footer.jsp"/>
	<script>
		$('#updateinfoBtn').on('click', function() {
			location.href='<%=request.getContextPath()%>/member/mypage/profile';
		});
	</script>
</body>
</html>