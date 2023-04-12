<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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