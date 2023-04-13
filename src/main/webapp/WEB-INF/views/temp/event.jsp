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
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	
	<section>
		<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="row">
					<div class="blog-asside-right col-md-3">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">진행중인 이벤트</h3>
							</div>
							<div class="panel-body text-widget">
								<p>목록 리스트</p>
							</div>
						</div>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">종료된 이벤트</h3>
							</div>
							<div class="panel-body text-widget">
								<p>목록 리스트</p>
							</div>
						</div>
						<div class="panel sidebar-menu wow  fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">Tags</h3>
							</div>
							<div class="panel-body">
								<ul class="tag-cloud">
									<li><a href="#"><i class="fa fa-tags"></i> html5</a></li>
									<li><a href="#"><i class="fa fa-tags"></i> css3</a></li>
									<li><a href="#"><i class="fa fa-tags"></i> jquery</a></li>
									<li><a href="#"><i class="fa fa-tags"></i> ajax</a></li>
									<li><a href="#"><i class="fa fa-tags"></i> php</a></li>
									<li><a href="#"><i class="fa fa-tags"></i> responsive</a></li>
									<li><a href="#"><i class="fa fa-tags"></i> visio</a></li>
									<li><a href="#"><i class="fa fa-tags"></i> bootstrap</a></li>
								</ul>
							</div>
						</div>
					</div>   
					<div class="blog-lst col-md-9 p0">
						<section id="id-100" class="post single">
							<div id="post-content" class="post-body single wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">
								<h2>이벤트 목록1</h2>
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
								<h2>이벤트 목록2</h2>
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
							</div>
						</section> 
					</div>                    
				</div>
			</div>
		</div>
	</section> 
	
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
</body>
</html>