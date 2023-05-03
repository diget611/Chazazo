<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>이벤트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />

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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">

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
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/main.css">
<style>
.category {
	cursor: pointer;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp" />

	<section>
		<div class="content-area blog-page padding-top-40"
			style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="row">
					<div class="blog-asside-right col-md-3">
						<div
							class="panel panel-default sidebar-menu wow fadeInRight animated animated"
							style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">이벤트</h3>
							</div>
						</div>
						<div class="btn-group btn-group-lg btn-group-vertical"
							role="group" aria-label="Basic outlined example">
							<button type="button" class="btn btn-outline-primary"
								id="onEvent" style="text-align: left;">진행중인 이벤트</button>
							<button type="button" class="btn btn-outline-primary"
								id="offEvent" style="text-align: left;">종료된 이벤트</button>
						</div>
					</div>
					<div class="blog-lst col-md-9 p0">
						<section id="id-100" class="post single"
							style="margin-bottom: 0px;">
							<div
								class="panel panel-default sidebar-menu wow  fadeInRight animated animated"
								style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">진행중인 이벤트</h3>
								</div>
							</div>
							<div class="feat-list">
								<div class="panel-group">
									<a class="js-btn-event link text-decoration-none w-100 mb-3 bg-shadow border-radius-16 overflow-hidden click-effect-press"
										id="js_event_list_item" data-s="220" data-p="1" data-i="3"
										data-l="event_tap"
										href="page-promotion-detail.html?a=220&amp;b=3&amp;c=event_tap&amp;v=230425"
										style="display: block;">
										<div class="cm-rounded bg-white">
											<img
												class="js-event-list-item-img event-list-item-img center-crop object-fit w-100"
												src="https://d1y0pslxvt2ep5.cloudfront.net/event/banner/banner_1682391874490_572.png">
											<div class="px-3 py-2">
												<div
													class="dc-flex flex-wrap justify-content-between align-items-center text-16 my-md-1">
													<span
														class="js-event-list-item-txt-peroid event-list-item-txt-peroid text-12 color-grey-5">2023.04.03~2023.04.30</span>
														
														
												</div>
											</div>
										</div>
										</a>
									</div>
									<div class="panel panel-default">
										<img src="https://dummyimage.com/700x150/18B4E9/fff" alt="없어">
									</div>
									<div class="panel panel-default">
										<img src="https://dummyimage.com/700x150/18B4E9/fff" alt="없어">
									</div>
									<div class="panel panel-default">
										<img src="https://dummyimage.com/700x150/18B4E9/fff" alt="없어">
									</div>
									<div class="panel panel-default">
										<img src="https://dummyimage.com/700x150/18B4E9/fff" alt="없어">
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/base/chat.jsp"/>
	<jsp:include page="/WEB-INF/views/base/footer.jsp" />

	<script>
		$('.main-nav').children().eq(1).children().css('color', '#18B4E9')

		window.onload = pageLoad();
		$('#onEvent').on('click', pageLoad);
		$('#offEvent').on('click', pageLoad);

		function pageLoad() {
			$.ajax({
				url : "${pageContext.request.contextPath}/event/load",
				data : {
					data : 1
				},
				type : "get",
				success : function(result) {
					console.log('123');
					getList();
				},
				error : function() {
					alert("실패");
				}
			})
		}

		function getList() {
			var html = '';
			html += '<div class="panel panel-default">';
			html += '<a class="js-btn-event link text-decoration-none w-100 mb-3 bg-shadow border-radius-16 overflow-hidden click-effect-press"';
			html += '	id="js_event_list_item" style="display: block;">';
			html += '	<div class="cm-rounded bg-white">';
			html += '	<img class="js-event-list-item-img event-list-item-img center-crop object-fit w-100"';
			html += '	src="https://d1y0pslxvt2ep5.cloudfront.net/event/banner/banner_1682391874490_572.png">';
			html += '		<div class="px-3 py-2">';
			html += '			<div class="dc-flex flex-wrap justify-content-between align-items-center text-16 my-md-1">';
			html += '			<span class="js-event-list-item-txt-peroid event-list-item-txt-peroid text-12 color-grey-5">2023.04.03~2023.04.30</span>';
			html += '			</div></div></div></div>';
			html += '<div class="panel panel-default">';
			html += '	<div class="cm-rounded bg-white">';
			html += '	<img class="js-event-list-item-img event-list-item-img center-crop object-fit w-100" ';
			html += '	src="https://d1y0pslxvt2ep5.cloudfront.net/event/banner/banner_146_20230210020330.png">';
			html += '		<div class="px-3 py-2">';
			html += '		<div class="dc-flex flex-wrap justify-content-between align-items-center text-16 my-md-1">';
			html += '		<span class="js-event-list-item-txt-peroid event-list-item-txt-peroid text-12 color-grey-5">2022.02.15~2023.06.30</span>';
			html += '	</div></div></div></div>';
			html += '<div class="panel panel-default"><img src="https://dummyimage.com/700x150/080808/fff" alt="없어"></div>';
			html += '<div class="panel panel-default"><img src="https://dummyimage.com/700x150/a76bcf/fff" alt="없어"></div>';
			html += '<div class="panel panel-default"><img src="https://dummyimage.com/700x150/589430/fff" alt="없어"></div>';
			$('.panel-group').html(html);
		}
	</script>
</body>
</html>