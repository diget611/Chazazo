<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>관리자 메인</title>
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
<body>
	<div class="container-xxl position-relative bg-white d-flex p-0">
		<jsp:include page="/WEB-INF/views/admin/base/sidebar.jsp"/>
		<div class="content">
			<jsp:include page="/WEB-INF/views/admin/base/navbar.jsp"/>	
			<!-- Sale & Revenue Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
                    <div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
                    <div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
                    <div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
            <!-- Sale & Revenue End --><!-- Sales Chart Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light text-center rounded p-4">
							<div class="d-flex align-items-center justify-content-between mb-4">
								<h6 class="mb-0">Worldwide Sales</h6>
								<a href="">Show All</a>
							</div>
							<canvas id="worldwide-sales"></canvas>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light text-center rounded p-4">
							<div class="d-flex align-items-center justify-content-between mb-4">
								<h6 class="mb-0">Salse & Revenue</h6>
								<a href="">Show All</a>
							</div>
							<canvas id="salse-revenue"></canvas>
						</div>
					</div>
				</div>
			</div>
            <!-- Sales Chart End -->
            <!-- Recent Sales Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light text-center rounded p-4">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h6 class="mb-0">Recent Salse</h6>
						<a href="">Show All</a>
					</div>
					<div class="table-responsive">
						<table class="table text-start align-middle table-bordered table-hover mb-0">
							<thead>
								<tr class="text-dark">
									<th scope="col"><input class="form-check-input" type="checkbox"></th>
									<th scope="col">Date</th>
									<th scope="col">Invoice</th>
									<th scope="col">Customer</th>
									<th scope="col">Amount</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
                                <tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
                                <tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
                                <tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
                                <tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
            <!-- Recent Sales End -->
			<!-- Widgets Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-12 col-md-6 col-xl-4">
						<div class="h-100 bg-light rounded p-4">
							<div class="d-flex align-items-center justify-content-between mb-4">
								<h6 class="mb-0">Calender</h6>
								<a href="">Show All</a>
							</div>
							<div id="calender"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- Widgets End -->
			<jsp:include page="/WEB-INF/views/admin/base/footer.jsp"/>
		</div>
		<!-- Content End -->
		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
	</div>

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>

</body>

</html>