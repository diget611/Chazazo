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
				<div class="col">
					<div class="blog-asside-right col-md-3" style="float: left;">
						<h4>지점 안내 </h4>
						<div class="footer-title-line"></div>
						<ul class="footer-menu">
							<li><a href="#">강남점</a></li> 
							<li><a href="#">용산점</a></li> 
							<li><a href="#">수원점</a></li> 
							<li><a href="#">송도점</a></li> 
							<li><a href="#">일산점</a></li> 
						</ul>
					</div>
				</div>  
				<div class="blog-lst col-md-9 padding-top-40" style="float: right;">
					<section id="id-100" class="post single">
						<div id="map" style="width:100%; height:540px"></div>   
					</section>
				</div>
			</div>                    
		</div>
	</section>

	<jsp:include page="../footer.jsp"/>
	
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = { 
							center: new kakao.maps.LatLng(37.54699, 127.09598), // 지도의 중심좌표
							level: 4 // 지도의 확대 레벨
						};
					
		var map = new kakao.maps.Map(mapContainer, mapOption);
		var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다    
			imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
			imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
			markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
						position: markerPosition,
						image: markerImage // 마커이미지 설정 
					});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);  
					
		// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		var content = '<div class="customoverlay">' +
					'  <a href="https://map.kakao.com/link/map/11394059" target="_blank">' +
					'    <span class="title">구의야구공원</span>' +
					'  </a>' +
					'</div>';
					
		// 커스텀 오버레이가 표시될 위치입니다 
		var position = new kakao.maps.LatLng(37.54699, 127.09598);  
					
		// 커스텀 오버레이를 생성합니다
		var customOverlay = new kakao.maps.CustomOverlay({
								map: map,
								position: position,
								content: content,
								yAnchor: 1 
							});
	</script>
</body>
</html>