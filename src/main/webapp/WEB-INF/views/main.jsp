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
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.theme.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.transitions.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">

<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/modernizr-2.6.2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-hover-dropdown.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/easypiechart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery.easypiechart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	
	<section>
		<div class="slider-area">
			<div class="slider">
				<div id="bg-slider" class="owl-carousel owl-theme">
					<div class="item">
						<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/slide1/cars.jpg" alt="GTA V">
					</div>
					<div class="item">
						<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/slide1/slider-image-2.jpg" alt="The Last of us">
					</div>
					<div class="item">
						<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/slide1/slider-image-1.jpg" alt="GTA V">
					</div>
				</div>
			</div>
			<div class="slider-content">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
						<h2>property Searching Just Got So Easy</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Eligendi deserunt deleniti, ullam commodi sit ipsam laboriosam
							velit adipisci quibusdam aliquam teneturo!</p>
					</div>
				</div>
			</div>
		</div>
		<div class="search-form wow pulse" data-wow-delay="0.8s">
			<form action="" class=" form-inline">
				<div class="form-group">
					<div class="dc-flex align-items-center justify-content-start mb-1">
						<img class="icon mr-1" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCN6OXRtdTNmem9hKSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGZpbGw9IiNENEQ0RDQiPgogICAgICAgIDxwYXRoIGQ9Ik04IDIuNWE1IDUgMCAwIDAtNSA1YzAgMS4zNjguODA4IDMuMjY2IDEuOTEgNC44NTQuNTQ1Ljc4NCAxLjE0MiAxLjQ2MyAxLjcwOSAxLjk0QzcuMjA2IDE0Ljc4OSA3LjY4MyAxNSA4IDE1Yy4zMTcgMCAuNzk0LS4yMTIgMS4zODEtLjcwNS41NjctLjQ3OCAxLjE2NC0xLjE1NyAxLjcwOC0xLjk0MUMxMi4xOTIgMTAuNzY2IDEzIDguODY4IDEzIDcuNWE1IDUgMCAwIDAtNS01em0tNiA1YTYgNiAwIDEgMSAxMiAwYzAgMS42Ny0uOTQyIDMuNzcxLTIuMDkgNS40MjQtLjU4LjgzNi0xLjIzMyAxLjU4OC0xLjg4NSAyLjEzNkM5LjM5MyAxNS41OSA4LjY4MyAxNiA4IDE2Yy0uNjgzIDAtMS4zOTMtLjQwOS0yLjAyNS0uOTQtLjY1Mi0uNTQ5LTEuMzA1LTEuMy0xLjg4Ni0yLjEzNkMyLjk0MiAxMS4yNzIgMiA5LjE3IDIgNy41eiIvPgogICAgICAgIDxwYXRoIGQ9Ik04IDUuNWEyIDIgMCAxIDAgMCA0IDIgMiAwIDAgMCAwLTR6bS0zIDJhMyAzIDAgMSAxIDYgMCAzIDMgMCAwIDEtNiAweiIvPgogICAgPC9nPgogICAgPGRlZnM+CiAgICAgICAgPGNsaXBQYXRoIGlkPSJ6OXRtdTNmem9hIj4KICAgICAgICAgICAgPHBhdGggZmlsbD0iI2ZmZiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAuNSkiIGQ9Ik0wIDBoMTZ2MTZIMHoiLz4KICAgICAgICA8L2NsaXBQYXRoPgogICAgPC9kZWZzPgo8L3N2Zz4K">
						<label class="text-14 color-grey-4 mb-0">지역</label>
					</div>
					<select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="장소 선택 ">
						<option>New york, CA</option>
						<option>Paris</option>
						<option>Casablanca</option>
						<option>Tokyo</option>
						<option>Marraekch</option>
						<option>kyoto , shibua</option>
					</select>
				</div>
				<div class="form-group mb-0">
					<div class="dc-flex align-items-center justify-content-start mb-1">
						<img class="icon mr-1" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCMwcXVhOHdkMzZhKSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGZpbGw9IiNENEQ0RDQiPgogICAgICAgIDxwYXRoIGQ9Ik04IDIuNWE2IDYgMCAxIDAgMCAxMiA2IDYgMCAwIDAgMC0xMnptLTcgNmE3IDcgMCAxIDEgMTQgMCA3IDcgMCAwIDEtMTQgMHoiLz4KICAgICAgICA8cGF0aCBkPSJNOCA0LjVhLjUuNSAwIDAgMSAuNS41djMuNUgxMGEuNS41IDAgMCAxIDAgMUg4YS41LjUgMCAwIDEtLjUtLjVWNWEuNS41IDAgMCAxIC41LS41eiIvPgogICAgPC9nPgogICAgPGRlZnM+CiAgICAgICAgPGNsaXBQYXRoIGlkPSIwcXVhOHdkMzZhIj4KICAgICAgICAgICAgPHBhdGggZmlsbD0iI2ZmZiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAuNSkiIGQ9Ik0wIDBoMTZ2MTZIMHoiLz4KICAgICAgICA8L2NsaXBQYXRoPgogICAgPC9kZWZzPgo8L3N2Zz4K"><label class="text-14 color-grey-4 mb-0">날짜 및 시간</label>
					</div>
					<div class="col">
						<input type="date" class="form-control" value="2020-03-20">
					</div>
					<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM0OTQ5NDkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg==" style="height: 14px; margin: 0 2px;">
					<div class="col">
						<input type="date" class="form-control" value="2020-03-20">
					</div>
				</div>
				<button class="btn search-btn" type="submit" style="width:100px;"><i class="fa fa-search"></i>차량검색</button>
			</form>
		</div>		
		<div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
						<!-- /.feature title -->
						<h2>Top submitted property</h2>
						<p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu
							nec pretium. Nullam sed arcu ultricies .</p>
					</div>
				</div>
				<div class="row">
					<div class="proerty-th">
						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img src="assets/img/demo/property-1.jpg"></a>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-2.html"><img src="assets/img/demo/property-2.jpg"></a>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-3.html"><img src="assets/img/demo/property-3.jpg"></a>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img src="assets/img/demo/property-4.jpg"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
						<!-- /.feature title -->
						<h2>통계</h2>
						<p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu
							nec pretium. Nullam sed arcu ultricies .</p>
					</div>
				</div>
			</div>
		</div>
		<div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
						<!-- /.feature title -->
						<h2>리뷰</h2>
						<p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu
							nec pretium. Nullam sed arcu ultricies .</p>
					</div>
				</div>
			</div>
		</div>
		<div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
						<!-- /.feature title -->
						<h2>자주묻는질문</h2>
						<p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu
							nec pretium. Nullam sed arcu ultricies .</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<jsp:include page="footer.jsp" />
</body>
</html>