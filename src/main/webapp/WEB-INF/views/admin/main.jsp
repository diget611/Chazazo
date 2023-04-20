<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
							<canvas id="testGraph"></canvas>
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
						<h6 class="mb-0">최근 문의</h6>
						<a href="<%=request.getContextPath()%>/admin/request">더보기</a>
					</div>
					<div class="table-responsive">
						<table class="table text-center align-middle table-bordered table-hover mb-0">
							<thead>
								<tr class="text-dark">
									<th scope="col">#</th>
									<th scope="col">제목</th>
									<th scope="col">상태</th>
									<th scope="col">문의 날짜</th>
									<th scope="col">답변 날짜</th>
									<th scope="col">아이디</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${requestList }" var="request" varStatus="status">	
									<tr onclick='window.open("<%=request.getContextPath()%>/admin/request/${request.idx}", "문의 상세 정보", "width=500, height=600")'>
								<th scope="row">${fn:length(requestList) - status.index}</th>
								<td>${request.title }</td>
								<c:choose>
									<c:when test="${request.status eq 0 }">
										<td>대기 중</td>		
									</c:when>
									<c:otherwise>
										<td>처리 완료</td>
									</c:otherwise>
								</c:choose>
								<td>${request.reqDate }</td>
								<td>${request.ansDate }</td>
								<td>${request.username }</td>
							</tr>
							</c:forEach>
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

<script>
	
	${count}
	
	
	var ctx5 = $("#testGraph").get(0).getContext("2d");
    var myChart5 = new Chart(ctx5, {
        type: "pie",
        data: {
            labels: ${model},
            datasets: [{
                backgroundColor: [
                	"rgba(0, 156, 255, .1)",
                    "rgba(0, 156, 255, .2)",
                    "rgba(0, 156, 255, .3)",
                    "rgba(0, 156, 255, .4)",
                    "rgba(0, 156, 255, .5)",
                    "rgba(0, 156, 255, .6)",
                    "rgba(0, 156, 255, .7)",
                    "rgba(0, 156, 255, .8)",
                    "rgba(0, 156, 255, .9)",
                    "rgba(0, 156, 255, .10)",
                    "rgba(0, 156, 255, .11)",
                    "rgba(0, 156, 255, .12)",
                    "rgba(0, 156, 255, .13)",
                    "rgba(0, 156, 255, .14)",
                    "rgba(0, 156, 255, .15)",
                    "rgba(0, 156, 255, .16)",
                    "rgba(0, 156, 255, .17)",
                    "rgba(0, 156, 255, .18)",
                    "rgba(0, 156, 255, .19)",
                    "rgba(0, 156, 255, .20)",
                    "rgba(0, 156, 255, .21)",
                    "rgba(0, 156, 255, .22)",
                    "rgba(0, 156, 255, .23)",
                    "rgba(0, 156, 255, .24)",
                    "rgba(0, 156, 255, .25)",
                    "rgba(0, 156, 255, .26)",
                    "rgba(0, 156, 255, .27)",
                    "rgba(0, 156, 255, .28)",
                    "rgba(0, 156, 255, .29)",
                    "rgba(0, 156, 255, .30)",
                    "rgba(0, 156, 255, .31)",
                    "rgba(0, 156, 255, .32)",
                    "rgba(0, 156, 255, .33)",
                    "rgba(0, 156, 255, .34)",
                    "rgba(0, 156, 255, .35)",
                    "rgba(0, 156, 255, .36)",
                    "rgba(0, 156, 255, .37)",
                    "rgba(0, 156, 255, .38)",
                    "rgba(0, 156, 255, .39)",
                    "rgba(0, 156, 255, .40)",
                    "rgba(0, 156, 255, .41)",
                    "rgba(0, 156, 255, .42)",
                    "rgba(0, 156, 255, .43)",
                    "rgba(0, 156, 255, .44)",
                    "rgba(0, 156, 255, .45)",
                    "rgba(0, 156, 255, .46)",
                    "rgba(0, 156, 255, .47)",
                    "rgba(0, 156, 255, .48)",
                    "rgba(0, 156, 255, .49)",
                    "rgba(0, 156, 255, .50)",
                    "rgba(0, 156, 255, .51)",
                    "rgba(0, 156, 255, .52)",
                    "rgba(0, 156, 255, .53)",
                    "rgba(0, 156, 255, .54)",
                    "rgba(0, 156, 255, .55)",
                    "rgba(0, 156, 255, .56)",
                    "rgba(0, 156, 255, .57)",
                    "rgba(0, 156, 255, .58)",
                    "rgba(0, 156, 255, .59)",
                    "rgba(0, 156, 255, .60)",
                    "rgba(0, 156, 255, .61)",
                    "rgba(0, 156, 255, .62)",
                    "rgba(0, 156, 255, .63)",
                    "rgba(0, 156, 255, .64)",
                    "rgba(0, 156, 255, .65)",
                    "rgba(0, 156, 255, .66)",
                    "rgba(0, 156, 255, .67)",
                    "rgba(0, 156, 255, .68)",
                    "rgba(0, 156, 255, .69)",
                    "rgba(0, 156, 255, .70)",
                    "rgba(0, 156, 255, .71)",
                    "rgba(0, 156, 255, .72)",
                    "rgba(0, 156, 255, .73)",
                    "rgba(0, 156, 255, .74)",
                    "rgba(0, 156, 255, .75)",
                    "rgba(0, 156, 255, .76)",
                    "rgba(0, 156, 255, .77)",
                    "rgba(0, 156, 255, .78)",
                    "rgba(0, 156, 255, .79)",
                    "rgba(0, 156, 255, .80)",
                    "rgba(0, 156, 255, .81)",
                    "rgba(0, 156, 255, .82)",
                    "rgba(0, 156, 255, .83)",
                    "rgba(0, 156, 255, .84)",
                    "rgba(0, 156, 255, .85)",
                    "rgba(0, 156, 255, .86)",
                    "rgba(0, 156, 255, .87)",
                    "rgba(0, 156, 255, .88)",
                    "rgba(0, 156, 255, .89)",
                    "rgba(0, 156, 255, .90)",
                    "rgba(0, 156, 255, .91)",
                    "rgba(0, 156, 255, .92)",
                    "rgba(0, 156, 255, .93)",
                    "rgba(0, 156, 255, .94)",
                    "rgba(0, 156, 255, .95)",
                    "rgba(0, 156, 255, .96)",
                    "rgba(0, 156, 255, .97)",
                    "rgba(0, 156, 255, .98)",
                    "rgba(0, 156, 255, .99)",
                    "rgba(0, 156, 255, .100)"
                ],
                data: ${sum}
            }]
        },
        options: {
            responsive: true
        }
    });
</script>
</body>

</html>