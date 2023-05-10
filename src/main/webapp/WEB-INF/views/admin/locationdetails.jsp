<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>지점 상세 정보</title>
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
				<input type="hidden" id="idx" value="${location.idx }">
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="name" name="name" value="${location.name }" readonly>
					<label for="name">지점명</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${location.phoneNumber }" readonly>
					<label for="phoneNumber">전화번호</label>
				</div>
				<div class="form-floating mb-3" id="addressForm">
					<input type="text" class="form-control" id="address" name="address" value="${location.address }" readonly>
					<label for="address">주소</label>
				</div>
				<input type="hidden" value="${location.latitude }">
				<input type="hidden" value="${location.longitude }">
				<div class="mb-3" id="map" style="width: 100%; height: 400px;"></div>
				<c:if test="${location.phoneNumber ne '-' }">
					<div class="mb-3 row">
						<div style="text-align: center;">
							<button type="button" class="btn btn-primary" style="display: inline-block" id="updateBtn">지점 정보 수정</button>
							<button type="button" class="btn btn-primary" style="display: inline-block" id="deleteBtn">삭제하기</button>
						</div>
					</div>
				</c:if>
			</div>
		</div>
	</div>
	<!-- Form End -->

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>
<script>
	function resizeWindow(win)    {
		var hei = win.document.body.offsetHeight + 100;
		win.resizeTo(500, hei);
	}
	
	var latitude = ${location.latitude};
	var longitude = ${location.longitude};
	
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(latitude, longitude), //지도의 중심좌표.
		draggable: false,	// 지도 드래그 막기
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	function setDraggable(draggable) {
	    // 마우스 드래그로 지도 이동 가능여부를 설정합니다
	    map.setDraggable(draggable);    
	}
	
	var imageSrc = 'https://cdn-icons-png.flaticon.com/512/5695/5695641.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
		imageOption = {offset: new kakao.maps.Point(27, 69)}; 
	 
	
	// 마커가 표시될 위치입니다 
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		markerPosition  = new kakao.maps.LatLng(latitude, longitude);
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition,
	    image: markerImage
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	$('#updateBtn').on('click', updateLocation);
	
	var lat = ${location.latitude};
	var lng = ${location.longitude};
	
	function updateLocation() {
		if($('#updateBtn').text() == '지점 정보 수정') {
			var html = '';
			html += '<div class="form-floating mb-3 row">'
			html += '	<div class="form-floating col-9">'
			html += '		<input type="text" class="form-control" id="address" name="address">'
			html += '		<label for="address" class="ps-4">주소</label>'
			html += '	</div>'
			html += '	<div class="form-floating col-3 pt-1">'
			html += '		<button type="button" class="btn btn-primary btn-lg" id="search">검색</button>'					
			html += '	</div>'
			html += '</div>'
			
			$('#name').attr('readonly', false);
			$('#phoneNumber').attr('readonly', false);
			$('#addressForm').children().remove();
			$('#addressForm').append(html);
			$('#search').on('click', searchAddress);
			$('#updateBtn').text('수정 완료');
		} else {
			let idx = $('#idx').val();
			let name = $('#name').val();
			let phoneNumber = $('#phoneNumber').val();
			let address = $('#address').val();
			let latitude = lat;
			let longitude = lng;
			
			let data = {
					idx : idx,
					name : name,
					phoneNumber : phoneNumber,
					address : address,
					latitude : latitude,
					longitude : longitude
			}
			
			if(name == null || phoneNumber == null || address == null || latitude == null || longitude == null) {
				swal("실패", "지점 정보를 입력해주세요.", "error");
			} else {
				$.ajax({
					url: '${pageContext.request.contextPath}/admin/location/update',
					type: 'patch',
					data: JSON.stringify(data),
					contentType: "application/json; charset=utf-8",
					success: function(result) {
						if(result == 1) {
							swal({
			        			title : "지점 정보를 수정했습니다.",
			        		    icon  : "success",
			        		    closeOnClickOutside : false
			        		}).then(function(){
			        			opener.parent.location.reload();
								window.close();
			        		});
						} else {
							swal("실패", "지점 정보 수정 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");
						}
					},
					error: function() {
						swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
					}
				});
			}
		}
	}
	
	$('#deleteBtn').on('click', deleteLocation);
	
	function deleteLocation() {
		let idx = $('#idx').val();
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/location/delete',
			type: 'patch',
			data: {idx: idx},
			success: function(result) {
				if(result == 1) {
					swal({
	        			title : "지점 정보를 삭제했습니다.",
	        		    icon  : "success",
	        		    closeOnClickOutside : false
	        		}).then(function(){
	        			opener.parent.location.reload();
						window.close();
	        		});
				} else {
					swal("실패", "지점 정보 삭제 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");
				}
			},
			error: function() {
				swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
			}
		});
	}
	
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
</script>
</body>

</html>