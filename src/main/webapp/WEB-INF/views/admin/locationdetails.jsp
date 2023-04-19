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
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${key }"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
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
<body>
	<!-- Form Start -->
	<div class="container-fluid pt-4 px-4">
		<div class="col-sm-12 col-xl-6">
			<div class="bg-light rounded h-100 p-4">
				<h6 class="mb-4">지점 상세 정보</h6>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="name" name="name" value="${location.name }">
					<label for="name">지점명</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${location.phoneNumber }">
					<label for="phoneNumber">전화번호</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="address" name="address" value="${location.address }">
					<label for="address">주소</label>
				</div>
				<input type="hidden" value="${location.latitude }">
				<input type="hidden" value="${location.longitude }">
				<div class="mb-3" id="map" style="width: 100%; height: 400px;"></div>
				<div class="mb-3 row">
					<div style="text-align: center;">
						<button type="button" class="btn btn-primary" style="display: inline-block" id="updateBtn">수정하기</button>
						<button type="button" class="btn btn-primary" style="display: inline-block" id="deleteBtn">삭제하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Form End -->

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>
<script>
	$('#ansBtn').on('click', insertAns);
	
	function insertAns() {
		let idx = $('[name=idx]').val();
		let answer = $('[name=answer]').val();
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/request',
			type: 'post',
			data: {idx: idx, answer: answer},
			success: function(result) {
				if(result == 1) {
					alert('성공');
					window.close();
				} else {
					alert('실패');
				}
			},
			error: function() {
				alert('에러')
			}
		});
	}
	
	$('#updateBtn').on('click', updateAns);
	
	function updateAns() {
		let idxup = $('[name=idx]').val();
		let answerup = $('[name=answer]').val();
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/request',
			type: 'patch',
			data: {idx: idxup, answer: answerup},
			success: function(result) {
				if(result == 1) {
					alert('성공');
					window.close();
				} else {
					alert('실패');
				}
			},
			error: function() {
				alert('에러')
			}
		});
	}
	
	$('#deleteBtn').on('click', deleteAns);
	
	function deleteAns() {
		let idxdel = $('[name=idx]').val();
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/request',
			type: 'delete',
			data: {idx: idxdel},
			success: function(result) {
				if(result == 1) {
					alert('성공');
					window.close();
				} else {
					alert('실패');
				}
			},
			error: function() {
				alert('에러')
			}
		});
	}
	
	var latitude = ${location.latitude};
	var longitude = ${location.longitude};
	
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(latitude, longitude), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
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

</script>
</body>

</html>