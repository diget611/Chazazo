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
	<jsp:include page="header.jsp" />
	<div class="slider-area">
		<div class="slider">
			<div id="bg-slider" class="owl-carousel owl-theme">
				<div class="item">
					<img
						src="<%=request.getContextPath()%>/resources/garoestate/assets/img/slide1/cars.jpg"
						alt="GTA V">
				</div>
				<div class="item">
					<img
						src="<%=request.getContextPath()%>/resources/garoestate/assets/img/slide1/slider-image-2.jpg"
						alt="The Last of us">
				</div>
				<div class="item">
					<img
						src="<%=request.getContextPath()%>/resources/garoestate/assets/img/slide1/slider-image-1.jpg"
						alt="GTA V">
				</div>
			</div>
		</div>
		<div class="slider-content">
			<div class="row">
				<div
					class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
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
								<select id="lunchBegins" class="selectpicker"
									data-live-search="true" data-live-search-style="begins"
									title="장소 선택 ">

									<option>New york, CA</option>
									<option>Paris</option>
									<option>Casablanca</option>
									<option>Tokyo</option>
									<option>Marraekch</option>
									<option>kyoto , shibua</option>
								</select>
							</div>
							<div class="form-group">
								<select id="basic" class="selectpicker show-tick form-control">
									<option>-날짜 선택-</option>
									<option>Rent</option>
									<option>Boy</option>
									<option>used</option>

								</select>
							</div>
							<button class="btn search-btn" type="submit">
								<i class="fa fa-search"></i>
							</button>

							<div style="display: none;" class="search-toggle">

								<div class="search-row">

									<div class="form-group mar-r-20">
										<label for="price-range">Price range ($):</label> <input
											type="text" class="span2" value="" data-slider-min="0"
											data-slider-max="600" data-slider-step="5"
											data-slider-value="[0,450]" id="price-range"><br />
										<b class="pull-left color">2000$</b> <b
											class="pull-right color">100000$</b>
									</div>
									<!-- End of  -->

									<div class="form-group mar-l-20">
										<label for="property-geo">Property geo (m2) :</label> <input
											type="text" class="span2" value="" data-slider-min="0"
											data-slider-max="600" data-slider-step="5"
											data-slider-value="[50,450]" id="property-geo"><br />
										<b class="pull-left color">40m</b> <b class="pull-right color">12000m</b>
									</div>
									<!-- End of  -->
								</div>

								<div class="search-row">

									<div class="form-group mar-r-20">
										<label for="price-range">Min baths :</label> <input
											type="text" class="span2" value="" data-slider-min="0"
											data-slider-max="600" data-slider-step="5"
											data-slider-value="[250,450]" id="min-baths"><br />
										<b class="pull-left color">1</b> <b class="pull-right color">120</b>
									</div>
									<!-- End of  -->

									<div class="form-group mar-l-20">
										<label for="property-geo">Min bed :</label> <input type="text"
											class="span2" value="" data-slider-min="0"
											data-slider-max="600" data-slider-step="5"
											data-slider-value="[250,450]" id="min-bed"><br /> <b
											class="pull-left color">1</b> <b class="pull-right color">120</b>
									</div>
									<!-- End of  -->

								</div>
								<br>
								<div class="search-row">

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Fire
												Place(3100)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Dual
												Sinks(500)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Hurricane
												Shutters(99)
											</label>
										</div>
									</div>
									<!-- End of  -->
								</div>

								<div class="search-row">

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Swimming
												Pool(1190)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> 2
												Stories(4600)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Emergency
												Exit(200)
											</label>
										</div>
									</div>
									<!-- End of  -->
								</div>

								<div class="search-row">

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Laundry
												Room(10073)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Jog
												Path(1503)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> 26'
												Ceilings(1200)
											</label>
										</div>
									</div>
									<!-- End of  -->
									<br>
									<hr>
								</div>
								<button class="btn search-btn prop-btm-sheaerch" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>

						</form>
					</div>
	<div class="content-area home-area-1 recent-property"
		style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
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
								<a href="property-1.html"><img
									src="assets/img/demo/property-1.jpg"></a>
							</div>

						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-2.html"><img
									src="assets/img/demo/property-2.jpg"></a>
							</div>

						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-3.html"><img
									src="assets/img/demo/property-3.jpg"></a>

							</div>

						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-1.html"><img
									src="assets/img/demo/property-4.jpg"></a>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<div class="content-area home-area-1 recent-property"
		style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<!-- /.feature title -->
					<h2>통계</h2>
					<p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu
						nec pretium. Nullam sed arcu ultricies .</p>
				</div>
			</div>
		</div>
	</div>
	<div class="content-area home-area-1 recent-property"
		style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<!-- /.feature title -->
					<h2>리뷰</h2>
					<p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu
						nec pretium. Nullam sed arcu ultricies .</p>
				</div>
			</div>
		</div>
	</div>
	<div class="content-area home-area-1 recent-property"
		style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<!-- /.feature title -->
					<h2>자주묻는질문</h2>
					<p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu
						nec pretium. Nullam sed arcu ultricies .</p>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />

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