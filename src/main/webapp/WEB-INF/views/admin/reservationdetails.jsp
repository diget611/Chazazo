<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>예약 상세 정보</title>
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
				<h6 class="mb-4">예약 상세 정보</h6>
				<input type="hidden" name="idx" id="idx" value="${reserv.idx }">
				<div class="form-floating mb-3 row">
					<div class="form-floating col-4">
						<c:choose>
							<c:when test="${reserv.isMember eq 0 }">
								<input type="text" class="form-control" id="isMember" name="isMember" value="비회원" readonly>
							</c:when>
							<c:otherwise>
								<input type="text" class="form-control" id="isMember" name="isMember" value="${reserv.username }" readonly>
							</c:otherwise>
						</c:choose>
						<label for="name" class="ps-4">회원구분</label>
					</div>
					<div class="form-floating col-4">	
						<c:choose>
							<c:when test="${reserv.state eq 0 }">
								<input type="text" class="form-control" id="state" name="state" value="예약 완료" readonly>
							</c:when>
							<c:otherwise>
								<input type="text" class="form-control" id="ㅍ" name="state" value="결제 취소" readonly>
							</c:otherwise>
						</c:choose>
						<label for="state" class="ps-4">상태</label>
					</div>
					<div class="form-floating col-4">
						<input type="text" class="form-control" id="finalPrice" name="finalPrice" value="${reserv.finalPrice }" readonly>
						<label for="finalPrice" class="ps-4">결제금액</label>
					</div>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="paidTime" name="paidTime" value="${reserv.paidTime }" readonly>
					<label for="paidTime">결제날짜</label>
				</div>
				<div class="form-floating mb-3">
					<c:choose>
						<c:when test="${reserv.state eq 0}">
							<input type="text" class="form-control" id="date" name="date" value="${reserv.startDate} - ${reserv.endDate } " readonly>
							<label for="date">예약 기간</label>						
						</c:when>
						<c:otherwise>
							<input type="text" class="form-control" id="date" name="date" value="${reserv.cancelDate } " readonly>
							<label for="date">취소 날짜</label>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="form-floating mb-3 row">
					<div class="form-floating col-4">
						<input type="text" class="form-control" id="model" name="model" value="${reserv.model }" readonly>
						<label for="model" class="ps-4">예약 모델</label>
					</div>
					<div class="form-floating col-4">
						<input type="text" class="form-control" id="insurance" name="insurance" value="${reserv.insurance }" readonly>
						<label for="insurance" class="ps-4">선택 보험</label>
					</div>
					<div class="form-floating col-4">
						<input type="text" class="form-control" id="coupon" name="coupon" value="${reserv.coupon }" readonly>
						<label for="coupon" class="ps-4">선택 쿠폰</label>
					</div>
				</div>
				<div class="form-floating mb-3 row">
					<div class="form-floating col-6">
						<input type="text" class="form-control" id="rentLocation" name="rentLocation" value="${reserv.rentLocation }" readonly>
						<label for="rentLocation" class="ps-4">예약 지점</label>
					</div>
					<div class="form-floating col-6">
						<input type="text" class="form-control" id="returnLocation" name="returnLocation" value="${reserv.returnLocation }" readonly>
						<label for="returnLocation" class="ps-4">반납 지점</label>
					</div>
				</div>
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
</script>
</body>

</html>