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
				<h6 class="mb-4">쿠폰 등록</h6>
				<form>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="name" name="name">
						<label for="name">쿠폰명</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="period" name="period">
						<label for="period">쿠폰 사용 기간</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="rate" name="rate">
						<label for="rate">할인율</label>
					</div>
					<div style="text-align: center;">
						<button type="button" class="btn btn-primary" id="insertBtn" style="display: inline-block">등록하기</button>
					</div>
				</form>
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
			swal("실패", "쿠폰명을 입력하세요.", "error");
		} else if(period <= 0 || rate >= 1) {
			swal("실패", "입력하신 값을 확인하세요.", "error");
		} else {
			$.ajax({
				url: "${pageContext.request.contextPath}/admin/coupon/insert",
				data: JSON.stringify(data),
				type: "post",
				contentType: "application/json; charset=utf-8",
				success: function(result) {
					if(result == 1) {
						swal({
		        			title : "쿠픈을 등록했습니다.",
		        		    icon  : "success",
		        		    closeOnClickOutside : false
		        		}).then(function(){
		        			opener.parent.location.reload();
							window.close();
		        		});
					} else {
						swal("실패", "쿠폰 등록 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");
					}
				},
				error: function() {
					swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
				}
			})
		}
	}
</script>
</body>

</html>