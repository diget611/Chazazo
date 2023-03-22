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
	
	<section>
		<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="row">
					<div class="blog-asside-right col-md-3">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">자주 묻는 질문</h3>
							</div>
						</div>
						<div class="btn-group btn-group-lg btn-group-vertical" role="group" aria-label="Basic outlined example">
							<button type="button" class="btn btn-outline-primary">예약/취소</button>
							<button type="button" class="btn btn-outline-primary">이용방법</button>
							<button type="button" class="btn btn-outline-primary">보험/사고</button>
							<button type="button" class="btn btn-outline-primary">전기차</button>
						</div>
					</div>   
					<div class="blog-lst col-md-9 p0">
						<section id="id-100" class="post single">
							<div class="panel panel-default sidebar-menu wow  fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">검색</h3>
								</div>
								<div class="panel-body">
									<form role="search">
										<div class="input-group">
											<input class="form-control" placeholder="질문을 입력하세요" type="text">
											<span class="input-group-btn">
												<button type="submit" class="btn btn-smal"><i class="fa fa-search"></i></button>
	                                        </span>
										</div>
									</form>
								</div>
							</div>
							<div class="post-header single">
								<div class="">
									<h2 class="wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">FASHIN NOW 2016</h2>
									<div class="title-line wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;"></div>
								</div>
								<div class="row wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
									<div class="col-sm-6">
										<p class="author-category">
											By <a href="#">John Snow</a>
											in <a href="blog.html">Webdesign</a>
										</p>
									</div>
									<div class="col-sm-6 right">
										<p class="date-comments">
											<a href="single.html"><i class="fa fa-calendar-o"></i> June 20, 2013</a>
											<a href="single.html"><i class="fa fa-comment-o"></i> 8 Comments</a>
										</p>
									</div>
								</div>
								<div class="image wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;"> 
									<img src="assets/img/blog2.jpg" class="img-responsive" alt="Example blog post alt">
								</div>
							</div> 
							<div id="post-content" class="post-body single wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">
								<p>
									<strong>Pellentesque habitant morbi tristique</strong> 
									senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas
									semper. <em>Aenean ultricies mi vitae est.</em> 
									Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean
									fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>
								<p>
									<img src="assets/img/blog10.jpg" class="img-responsive" alt="Example blog post alt">
								</p>
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
								<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
									ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt</p>
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
						<!-- 이건 뭐하는 섹션이지 --> 
						<section class="about-autor">
						</section>
						<!-- 이건 뭐하는 섹션이지 -->
						<section id="comments" class="comments wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;"> 
							<h4 class="text-uppercase wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">3 comments</h4>
							<div class="row comment">
								<div class="col-sm-3 col-md-2 text-center-xs">
									<p><img src="assets/img/client-face1.png" class="img-responsive img-circle" alt=""></p>
								</div>
								<div class="col-sm-9 col-md-10">
									<h5 class="text-uppercase">Julie Alma</h5>
									<p class="posted"><i class="fa fa-clock-o"></i> September 23, 2011 at 12:00 am</p>
									<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
										Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
									<p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a></p>
								</div>
							</div>
							<!-- /.comment -->
							<div class="row comment last">
								<div class="col-sm-3 col-md-2 text-center-xs">
									<p><img src="assets/img/client-face2.png" class="img-responsive img-circle" alt=""></p>
								</div>
								<div class="col-sm-9 col-md-10">
									<h5 class="text-uppercase">Louise Armero</h5>
									<p class="posted"><i class="fa fa-clock-o"></i> September 23, 2012 at 12:00 am</p>
									<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
										Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
									<p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a></p>
								</div>
							</div>
							<!-- /.comment -->
						</section>
						<section id="comment-form" class="add-comments">
							<h4 class="text-uppercase wow fadeInLeft animated" style="visibility: hidden; animation-name: none;">Leave comment</h4>
							<form>
								<div class="row wow fadeInLeft animated" style="visibility: hidden; animation-name: none;">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="name">Name <span class="required">*</span></label>
											<input class="form-control" id="name" type="text">
										</div>
									</div>
								</div>
								<div class="row wow fadeInLeft animated" style="visibility: hidden; animation-name: none;">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="email">Email <span class="required">*</span></label>
											<input class="form-control" id="email" type="text">
										</div>
									</div>
								</div>
								<div class="row wow fadeInLeft animated" style="visibility: hidden; animation-name: none;">
									<div class="col-sm-12">
										<div class="form-group">
											<label for="comment">Comment <span class="required">*</span></label>
											<textarea class="form-control" id="comment" rows="4"></textarea>
										</div>
									</div>
								</div>
								<div class="row wow fadeInLeft animated" style="visibility: hidden; animation-name: none;">
									<div class="col-sm-12 text-right">
										<button class="btn btn-primary"><i class="fa fa-comment-o"></i> Post comment</button>
									</div>
								</div>
							</form>
						</section>
					</div>                    
				</div>
			</div>
		</div>
	</section>

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

</body>
</html>