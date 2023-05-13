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
				<div class="bg-light text-center rounded p-3 row">
					<div class="col-6">
						<select class="form-select form-select-sm" aria-label=".form-select-sm example" id="location">
							<c:forEach items="${list }" var="list">
								<option value="${list.idx }">${list.name }</option> 
							</c:forEach>					
						</select>
					</div>
					<div class="col-6">
						<select class="form-select form-select-sm" aria-label=".form-select-sm example" id="type">
							<option value="1">매출 기준</option>
							<option value="2">예약 기준</option>
						</select>
					</div>
				</div>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-12">
						<div class="bg-light text-center rounded p-4" style="height: 100%;" id="recentCanvas">
							<div class="d-flex justify-content-between">
								<h4 style="display:inline-block">지점 관리</h4>
								<div>
									<button type="button" class="btn btn-secondary" id="down">&lt&lt</button>
									<button type="button" class="btn btn-secondary" id="year" style="display:inline-block" value="2023" disabled>2023</button>
									<button type="button" class="btn btn-secondary" id="up">&gt&gt</button>
								</div>
							</div>
							<div id="chartDiv">
								<canvas id="chart" class="chartCanvas" height="450"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<jsp:include page="/WEB-INF/views/admin/base/footer.jsp"/>
		</div>
		<jsp:include page="/WEB-INF/views/admin/base/chat.jsp"/>
	</div>
	
<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>

<script>
	window.onload = loadChart();
	$('#location').on('change', recreateChart);
	$('#type').on('change', recreateChart);
	
	$('#up').on('click', function() {
		let temp = Number($('#year').val()) + 1;
		$('#year').val(temp);
		$('#year').text(temp);
		recreateChart();
	})
	
	$('#down').on('click', function() {
		let temp = Number($('#year').val()) - 1;
		$('#year').val(temp);
		$('#year').text(temp);
		recreateChart();
	})
	
	function recreateChart() {
		$('#chartDiv').children().remove();
		$('#chartDiv').append('<canvas id="chart" class="chartCanvas" height="450"></canvas>');
		loadChart();
	}
	
	function loadChart() {
		let year = $('#year').val();
		let idx = $('#location').val();
		let type = $('#type').val();
		
		let data = {
				year : year,
				idx : idx,
				type : type
		};
		
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/statistics/chart',
			type: 'post',
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			success: function(result) {
				createChart(result);
			},
			error: function() {
				swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
			}
		})
	}
	
	function createChart(result) {
		if($('#type').val() == 1) {
			var arr = [];
			var res = JSON.parse(result);
			for(var i = 0; i < res.length; i++) {
				for(var j = 1; j < 13; j++) {
					if(res[i].paidTime == j) arr[j] = res[i].sum;
					else if(arr[j] == null) arr[j] = 0;
				}
				
			}
			arr.shift();
			
			var ctx = $("#chart").get(0).getContext("2d");
	    	var myChart = new Chart(ctx, {
		        type: "line",
		        data: {
		            labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		            datasets: [{
		                label: '매출 합계',
		                fill: false,
		                backgroundColor: "rgba(0, 156, 255, .3)",
		                data: arr
		            }]
		        },
		        options: {
		        	maintainAspectRatio: false
		        }			
			});			
		} else if($('#type').val() == 2) {
			var arr = [];
			var res = JSON.parse(result);
			for(var i = 0; i < res.length; i++) {
				for(var j = 1; j < 13; j++) {
					if(res[i].paidTime == j) arr[j] = res[i].cnt;
					else if(arr[j] == null) arr[j] = 0;
				}
				
			}
			arr.shift();
			
			var ctx = $("#chart").get(0).getContext("2d");
	    	var myChart = new Chart(ctx, {
		        type: "line",
		        data: {
		            labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		            datasets: [{
		                label: '예약 합계',
		                fill: false,
		                backgroundColor: "rgba(0, 156, 255, .3)",
		                data: arr
		            }]
		        },
		        options: {
		        	maintainAspectRatio: false
		        }			
			});
		}
	}
	
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