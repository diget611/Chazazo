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

	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" async="true"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/easing/easing.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/waypoints/waypoints.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body>
	<div class="container-xxl position-relative bg-white d-flex p-0">
		<jsp:include page="/WEB-INF/views/admin/base/sidebar.jsp"/>
		<div class="content">
			<jsp:include page="/WEB-INF/views/admin/base/navbar.jsp"/>
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">금일 예약</p>
								<h6 class="mb-0" style="text-align: center;">${reservCount }</h6>
							</div>
						</div>
					</div>
                    <div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">금일 매출</p>
								<h6 class="mb-0" style="text-align: center;">${reservSum }</h6>
							</div>
						</div>
					</div>
                    <div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">금일 회원가입</p>
								<h6 class="mb-0" style="text-align: center;">${regiCount }</h6>
							</div>
						</div>
					</div>
                    <div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">금일 문의</p>
								<h6 class="mb-0" style="text-align: center;">${reqCount }</h6>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light text-center rounded p-4" style="height: 100%;" id="recentCanvas">
							<div class="d-flex align-items-center justify-content-between mb-5">
								<h6 class="mb-0">최근 월별 매출</h6>
							</div>
							<div>
								<canvas id="recentMonthChart" class="chartCanvas" height="450"></canvas>							
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light text-center rounded p-4" style="height: 100%;">
							<div class="d-flex align-items-center justify-content-between mb-4">
								<h6 class="mb-0">차량별 매출</h6>
							</div>
							<canvas id="bestReservModel" class="chartCanvas"></canvas>
						</div>
					</div>
				</div>
			</div>
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
									<tr onclick='window.open("<%=request.getContextPath()%>/admin/request/${request.idx}", "문의 상세 정보", "width=500, height=auto")'>
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
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light text-center rounded p-4">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h6 class="mb-0">취소 대기</h6>
						<a href="<%=request.getContextPath()%>/admin/reservation">더보기</a>
					</div>
					<div class="table-responsive">
						<table class="table text-center align-middle table-bordered table-hover mb-0">
							<thead>
								<tr class="text-dark">
									<th scope="col" style="width: 5%;">#</th>
									<th scope="col" style="width: 10%;">회원</th>
									<th scope="col" style="width: 15%;">현황</th>
									<th scope="col" style="width: 15%;">결제금액</th>
									<th scope="col" style="width: 20%;">예약날짜</th>
									<th scope="col" style="width: 35%;">예약기간</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${reservList }" var="reserv" varStatus="status">	
									<tr onclick='window.open("<%=request.getContextPath()%>/admin/reservation/${reserv.idx}", "예약 상세 정보", "width=500, height=600")'>
										<th scope="row">${fn:length(requestList) - status.index}</th>
										<c:choose>
											<c:when test="${reserv.isMember eq 0 }">
												<td>비회원</td>
											</c:when>
											<c:otherwise>
												<td>회원</td>
											</c:otherwise>
										</c:choose>
										<td>취소대기</td>
										<td>${reserv.finalPrice }</td>
										<td>${reserv.paidTime }</td>
										<td>${reserv.startDate }&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;${reserv.endDate }</td>
									</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<jsp:include page="/WEB-INF/views/admin/base/footer.jsp"/>
		</div>
		<jsp:include page="/WEB-INF/views/admin/base/chat.jsp"/>
	</div>
	
<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>

<script>
	var recentStat = JSON.parse('${recentStat}');
	var locationList = JSON.parse('${locationList}');
	var monthList = JSON.parse('${monthList}');
	var loc1Sales = [];
	var loc2Sales = [];
	var loc3Sales = [];
	var loc4Sales = [];
	var loc5Sales = [];
	var loc = [];
	var month = [];
	
	$.each(locationList, function(idx, value) {
		loc.push(value.name);
	});
	
	$.each(monthList, function(idx, value) {
		month.push(value.MONTH);
	})
	
	$.each(recentStat, function(idx, value) {
		loc1Sales.push(value.loc1);
		loc2Sales.push(value.loc2);
		loc3Sales.push(value.loc3);
		loc4Sales.push(value.loc4);
		loc5Sales.push(value.loc5);
	});
	
	var ctx1 = $("#recentMonthChart").get(0).getContext("2d");
    var myChart1 = new Chart(ctx1, {
        type: "bar",
        data: {
            labels: month,
            datasets: [{
                    label: loc[0],
                    data: loc1Sales,
                    backgroundColor: "rgba(0, 156, 255, .17)"
                }, {
                    label: loc[1],
                    data: loc2Sales,
                    backgroundColor: "rgba(0, 156, 255, .13)"
                }, {
                    label: loc[2],
                    data: loc3Sales,
                    backgroundColor: "rgba(0, 156, 255, .9)"
                }, {
                    label: loc[3],
                    data: loc4Sales,
                    backgroundColor: "rgba(0, 156, 255, .5)"
                }, {
                    label: loc[4],
                    data: loc5Sales,
                    backgroundColor: "rgba(0, 156, 255, .1)"
                }
            ]
            },
        options: {
        	maintainAspectRatio: false
        }
    });
    
    var modelData = JSON.parse('${modelList}');
    var modelList = [];
    var sumList = [];
    
    $.each(modelData, function(idx, value) {
    	modelList.push(value.model);
    	sumList.push(value.sum);
    });
    
    var ctx2 = $("#bestReservModel").get(0).getContext("2d");
    var myChart5 = new Chart(ctx2, {
        type: "pie",
        data: {
            labels: modelList,
            datasets: [{
                backgroundColor: [
                    "rgba(0, 156, 255, .9)",
                    "rgba(0, 156, 255, .7)",
                    "rgba(0, 156, 255, .5)",
                    "rgba(0, 156, 255, .3)",
                    "rgba(0, 156, 255, .1)"
                ],
                data: sumList
            }]
        },
        options: {
            responsive: true
        }
    });
    
    const canvas = $('.chartCanvas');
    const cv = canvas.get(0).getContext('2d')
	
    const heig = $('#recentCanvas').height();
    $(window).resize(function() {
    	canvas.height(heig);
        canvas.width($('#recentCanvas').width());
    });
    
   	window.onload = function() {
   		canvas.height(heig);
        canvas.width($('#recentCanvas').width());
   	};
</script>
</body>

</html>