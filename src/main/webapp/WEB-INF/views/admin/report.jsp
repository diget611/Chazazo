<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>신고 관리</title>
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
    
    <style>
    	tr:hover {
    		cursor: pointer;
    	}
    </style>
    
</head>
<body>
	<!-- Sidebar Start -->
	<div class="container-xxl position-relative bg-white d-flex p-0">
		<div class="sidebar pe-4 pb-3">
			<nav class="navbar bg-light navbar-light">
				<a href="<%=request.getContextPath() %>/admin/main" class="navbar-brand mx-4 mb-3">
					<h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>CHAZAZO</h3>
				</a>
				<div class="navbar-nav w-100">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa fa-th me-2"></i>관리</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="<%=request.getContextPath() %>/admin/member" class="dropdown-item">회원</a>
							<a href="<%=request.getContextPath() %>/admin/report" class="dropdown-item">신고</a>
							<a href="<%=request.getContextPath() %>/admin/reservation" class="dropdown-item">예약</a>
							<a href="<%=request.getContextPath() %>/admin/location" class="dropdown-item">지점</a>
							<a href="<%=request.getContextPath() %>/admin/vehicle" class="dropdown-item">차량</a>
							<a href="<%=request.getContextPath() %>/admin/coupon" class="dropdown-item">쿠폰</a>
							<a href="<%=request.getContextPath() %>/admin/notice" class="dropdown-item">공지</a>
							<a href="<%=request.getContextPath() %>/admin/inquiry" class="dropdown-item">문의</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-chart-bar me-2"></i>통계</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="<%=request.getContextPath() %>/admin/statistics" class="dropdown-item">1</a>
							<a href="#" class="dropdown-item">2</a>
							<a href="#" class="dropdown-item">3</a>
						</div>
					</div>
				</div>
			</nav>
		</div>
        <!-- Sidebar End -->
        <!-- Content Start -->
		<div class="content">
			<!-- Navbar Start -->
			<nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
				<a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
					<h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
				</a>
				<a href="#" class="sidebar-toggler flex-shrink-0">
					<i class="fa fa-bars"></i>
				</a>
				<form class="d-none d-md-flex ms-4">
					<input class="form-control border-0" type="search" placeholder="Search">
				</form>
				<div class="navbar-nav align-items-center ms-auto">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
							<i class="fa fa-envelope me-lg-2"></i>
							<span class="d-none d-lg-inline-flex">Message</span>
						</a>
						<div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
							<a href="#" class="dropdown-item">
								<div class="d-flex align-items-center">
									<img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
									<div class="ms-2">
										<h6 class="fw-normal mb-0">Jhon send you a message</h6>
										<small>15 minutes ago</small>
									</div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
								</div>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item">
								<div class="d-flex align-items-center">
									<img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
									<div class="ms-2">
										<h6 class="fw-normal mb-0">Jhon send you a message</h6>
										<small>15 minutes ago</small>
									</div>
								</div>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item text-center">See all message</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
							<i class="fa fa-bell me-lg-2"></i>
							<span class="d-none d-lg-inline-flex">Notificatin</span>
						</a>
						<div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
							<a href="#" class="dropdown-item">
								<h6 class="fw-normal mb-0">Profile updated</h6>
								<small>15 minutes ago</small>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item">
								<h6 class="fw-normal mb-0">New user added</h6>
								<small>15 minutes ago</small>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item">
								<h6 class="fw-normal mb-0">Password changed</h6>
								<small>15 minutes ago</small>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item text-center">See all notifications</a>
						</div>
					</div>
				</div>
			</nav>
			<!-- Navbar End -->
			<!-- Table Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded p-4">
					<h6 class="mb-4">신고 관리</h6>
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">리뷰 번호</th>
								<th scope="col">신고한 회원</th>
								<th scope="col">신고 사유</th>
								<th scope="col">처리 상태</th>
								<th scope="col">신고 날짜</th>
								<th scope="col">처리 날짜</th>
							</tr>
						</thead>
						<tbody>						
							<c:forEach items="${reportList }" var="report">
								<tr onclick='window.open("<%=request.getContextPath()%>/admin/report/${report.idx}", "신고 상세 정보", "width=500, height=600")'>
									<th scope="row">${report.idx }</th>
									<td>${report.reviewIdx }</td>
									<td>${report.username }</td>
									<td>${report.reason }</td>
									<td>${report.status }</td>
									<td>${report.startDate }</td>
									<c:choose>
										<c:when test="${report.endDate eq null }">
											<td>미처리</td>
										</c:when>
										<c:otherwise>
											<td>${report.endDate }</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<!-- Table End -->
			
			<!-- Footer Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded-top p-4">
					<div class="row">
						<div class="col-12 col-sm-6 text-center text-sm-start">
							&copy; <a href="#">Your Site Name</a>, All Right Reserved. 
						</div>
						<div class="col-12 col-sm-6 text-center text-sm-end">
							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a href="https://htmlcodex.com">HTML Codex</a>
							Distributed By <a class="border-bottom" href="https://themewagon.com" target="_blank">ThemeWagon</a>
						</div>
					</div>
				</div>
			</div>
            <!-- Footer End -->
		</div>
		<!-- Content End -->
		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
	</div>

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>

</body>

</html>