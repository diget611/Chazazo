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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
<style>
	.category {
		cursor: pointer;
	}
</style>
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
								<h3 class="panel-title">이벤트</h3>
							</div>
						</div>
						<div class="btn-group btn-group-lg btn-group-vertical" role="group" aria-label="Basic outlined example">
							<button type="button" class="btn btn-outline-primary" id="onEvent" style="text-align: left;">진행중인 이벤트</button>
							<button type="button" class="btn btn-outline-primary" id="offEvent" style="text-align: left;">종료된 이벤트</button>
						</div>
					</div>   
					<div class="blog-lst col-md-9 p0">
						<section id="id-100" class="post single" style="margin-bottom: 0px;">
							<div class="panel panel-default sidebar-menu wow  fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">진행중인 이벤트</h3>
								</div>
							</div>
							<div class="feat-list">
								<div class="panel-group">
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

	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
	<script>
		$('.main-nav').children().eq(1).children().css('color', '#18B4E9')
		
		window.onload = pageLoad();
		$('#onEvent').on('click', pageLoad);
		$('#offEvent').on('click', pageLoad);
		
		function pageLoad() {
			$.ajax({
				url: "${pageContext.request.contextPath}/event/load",
				data: {data: 1},
				type: "get",
				success: function(result) {
					console.log('123');
					getList();
				},
				error: function() {
					alert("실패");
				}
			}) 		
		}
		
		function getList() {
			var html = '';
			html += '<div class="panel panel-default"><img src="https://dummyimage.com/700x150/18B5E1/fff" alt="없어"></div>';
			html += '<div class="panel panel-default"><img src="https://dummyimage.com/700x150/e74a1e/fff" alt="없어"></div>';
			html += '<div class="panel panel-default"><img src="https://dummyimage.com/700x150/080808/fff" alt="없어"></div>';
			html += '<div class="panel panel-default"><img src="https://dummyimage.com/700x150/a76bcf/fff" alt="없어"></div>';
			html += '<div class="panel panel-default"><img src="https://dummyimage.com/700x150/589430/fff" alt="없어"></div>';
			$('.panel-group').html(html);
		}
	</script>
</body>
</html>