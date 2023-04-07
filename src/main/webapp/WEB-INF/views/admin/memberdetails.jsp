<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>회원 상세 정보</title>
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
    
</head>
<body>
	<!-- Form Start -->
	<div class="container-fluid pt-4 px-4">
		<div class="col-sm-12 col-xl-6">
			<div class="bg-light rounded h-100 p-4">
				<h6 class="mb-4">회원 상세 정보</h6>
				<form>
					<div class="mb-3 row">
						<label for="username" class="form-label">아이디</label>
						<input type="text" class="form-control" id="username" name="username" value="${member.username}" readonly>
					</div>
					<div class="mb-3 row">
						<div class="col-4" style="padding: 0 6px 0 0">
							<label for="name" class="form-label">이름</label>
							<input type="text" class="form-control" id="name" name="name" value="${member.name}" readonly>
						</div>
						<div class="col-4" style="padding: 0 6px 0 0">
							<label for="gender" class="form-label">성별</label>
							<c:choose>
								<c:when test="${member.gender eq 0}">
									<c:set var="gender" value="남"/>
								</c:when>
								<c:otherwise>
									<c:set var="gender" value="여"/>
								</c:otherwise>
							</c:choose>
							<input type="text" class="form-control" id="gender" name="gender" value="${gender }" readonly>
						</div>
						<div class="col-4" style="padding: 0px">
							<label for="birth" class="form-label">생년월일</label>
							<input type="text" class="form-control" id="birth" name="birth" value="${member.birth}" readonly>
						</div>
					</div>
					<div class="mb-3 row">
						<label for="phoneNumber" class="form-label">전화번호</label>
						<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${member.phoneNumber}" readonly>
					</div>
					<div class="mb-3 row">
						<label for="license" class="form-label">면허증 번호</label>
						<input type="text" class="form-control" id="license" name="license" value="${member.license}" readonly>
					</div>
					<div class="mb-3 row">
						<label for="email" class="form-label">이메일</label>
						<input type="text" class="form-control" id="email" name="email" value="${member.email}" readonly>
					</div>
					<div style="text-align: center;">
						<button type="button" class="btn btn-primary" style="display: inline-block">Sign in</button>
						<button type="button" class="btn btn-primary" style="display: inline-block">Sign in</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Form End -->

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>

</body>

</html>