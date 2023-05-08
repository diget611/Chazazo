<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>쿠폰 상세 정보</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

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
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="address" name="address">
					<label for="address">주소</label>
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
	
	$('#insertBtn').on('click', insertCoupon);
	
	function insertCoupon() {
		let name = $('#name').val();
		let period = $('#period').val();
		let rate = $('#rate').val() / 100;
		let data = {
			name: name,
			period: period,
			rate: rate
		};
		
		if(name == '') {
			alert('쿠폰명을 입력하세요')
		} else if(period <= 0 || rate >= 1) {
			alert('입력하신 값을 확인하세요')
		} else {
			$.ajax({
				url: "${pageContext.request.contextPath}/admin/coupon/insert",
				data: JSON.stringify(data),
				type: "post",
				contentType: "application/json; charset=utf-8",
				success: function(result) {
					if(result == 1) {
						alert("쿠폰 등록 완료");
						opener.parent.location.reload();
						window.close();
					} else {
					alert('실패');					
					}
				}, 
				error: function() {
					alert('에러');
				}
			})
		}
	}
</script>
</body>

</html>