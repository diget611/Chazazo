<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>지점 등록</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
	
	<spring:eval expression="@keyProperty['kakao-admin-key']" var="key"/>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${key }&libraries=services"></script>
	
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/resources/dashmin/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/css/style.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/easing/easing.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/waypoints/waypoints.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body onload="resizeWindow(this)">
	<!-- Form Start -->
	<div class="container-fluid pt-4 px-4">
		<div class="col-sm-12 col-xl-6">
			<div class="bg-light rounded h-100 p-4">
				<h6 class="mb-4">지점 상세 정보</h6>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="name" name="name">
					<label for="name">지점명</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="phoneNumber" name="phoneNumber">
					<label for="phoneNumber">전화번호</label>
				</div>
				<div class="form-floating mb-3 row">
					<div class="form-floating col-6">
						<input type="time" class="form-control" id="startTime" name="startTime">
						<label for="startTime" class="ps-4">개점 시간</label>
					</div>
					<div class="form-floating col-6">
						<input type="time" class="form-control" id="endTime" name="endTime">
						<label for="startTime" class="ps-4">마감 시간</label>
					</div>
				</div>
				<div class="form-floating mb-3 row">
					<div class="form-floating col-9">
						<input type="text" class="form-control" id="address" name="address">
						<label for="address" class="ps-4">주소</label>
					</div>
					<div class="form-floating col-3 pt-1">
						<button type="button" class="btn btn-primary btn-lg" id="search">검색</button>					
					</div>
				</div>
				<input type="hidden" value="${location.latitude }">
				<input type="hidden" value="${location.longitude }">
				<div class="mb-3" id="map" style="width: 100%; height: 400px;"></div>
				<div class="mb-3 row">
					<div style="text-align: center;">
						<button type="button" class="btn btn-primary" style="display: inline-block" id="insertBtn">등록하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Form End -->

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>

<script>
	function resizeWindow(win) {
		var hei = win.document.body.offsetHeight + 100;
		win.resizeTo(500, hei);
	}
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	var imageSrc = 'https://cdn-icons-png.flaticon.com/512/5695/5695641.png', // 마커이미지의 주소입니다    
	imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
	imageOption = {offset: new kakao.maps.Point(27, 69)}; 

	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
	
	var lat, lng;
	$('#search').on('click', searchAddress);
	function searchAddress() {
		var keyword = $('#address').val();
		
		var geocoder = new kakao.maps.services.Geocoder();

		var callback = function(result, status) {
		    if (status === kakao.maps.services.Status.OK) {
		    	var currentPos = new window.kakao.maps.LatLng(
		                result[0].y,
		                result[0].x
		        )
				map.panTo(currentPos);
		    	var markerPosition  = new kakao.maps.LatLng(result[0].y, result[0].x);
		    	// 마커를 생성합니다
		    	var marker = new kakao.maps.Marker({
		    	    position: markerPosition,
		    	    image: markerImage
		    	});

		    	// 마커가 지도 위에 표시되도록 설정합니다
		    	marker.setMap(map);
		    }
		    
		    lat = marker.getPosition().getLat();
		    lng = marker.getPosition().getLng();
		};
		geocoder.addressSearch(keyword, callback);
	}
	
	$('#insertBtn').on('click', function() {
		let name = $('#name').val();
		let phoneNumber = $('#phoneNumber').val();
		let address = $('#address').val();
		let latitude = lat;
		let longitude = lng;
		let businessHours = $('#startTime').val() + '-' + $('#endTime').val();
		
		let data = {
				name : name,
				phoneNumber : phoneNumber,
				address : address,
				latitude : latitude,
				longitude : longitude,
				businessHours : businessHours
		}
		
		if(name == null || phoneNumber == null || address == null 
				|| latitude == null || longitude == null || $('#startTime').val() == null || $('#endTime').val() == null) {
			swal("실패", "지점 정보를 입력해주세요.", "error");
		} else {
			$.ajax({
				url: '${pageContext.request.contextPath}/admin/location/insert',
				type: 'post',
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				success: function(result) {
					if(result == 1) {
						swal({
		        			title : "지점을 등록했습니다.",
		        		    icon  : "success",
		        		    closeOnClickOutside : false
		        		}).then(function(){
		        			opener.parent.location.reload();
							window.close();
		        		});
					} else {
						swal("실패", "지점 등록 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");
					}
				},
				error: function() {
					swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
				}
			});
		}
	});
	
</script>
</body>

</html>