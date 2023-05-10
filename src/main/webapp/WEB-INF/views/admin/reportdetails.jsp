<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>신고 상세 정보</title>
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
				<h6 class="mb-4">신고 상세 정보</h6>
				<form>
					<div class="form-floating mb-3">
						<input type="hidden" id="reportIdx" value="${report.idx }">
						<input type="hidden" id="reviewIdx" value="${report.reviewIdx }">
						<textarea class="form-control" id="content" name="content" readonly style="height: 400px;">${report.content }</textarea>
						<label for="content">리뷰 내용</label>
					</div>
					<c:if test="${report.status eq 0 }">
						<div style="text-align: center;">
							<button type="button" id="returnBtn" class="btn btn-primary" style="display: inline-block">반려</button>
							<button type="button" id="confirmBtn" class="btn btn-primary" style="display: inline-block">확인</button>
						</div>
					</c:if>
				</form>
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
	
	$('#returnBtn').on('click', reportReturn);
	$('#confirmBtn').on('click', reportConfirm);
	
	function reportReturn() {
		let idx = $('#reportIdx').val();
		let reviewIdx = $('#reviewIdx').val();
		let data = {
			idx : idx,
			reviewIdx : reviewIdx
		};
		
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/report/return',
			type: 'patch',
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			success: function(result) {
				if(result == 1) {
					swal({
	        			title : "신고 요청을 처리했습니다.",
	        		    icon  : "success",
	        		    closeOnClickOutside : false
	        		}).then(function(){
	        			opener.parent.location.reload();
						window.close();
	        		});
				} else {
					swal("실패", "신고 처리 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");					
				}
			}, 
			error: function() {
				swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
			}
		});
	}
	
	function reportConfirm() {
		let idx = $('#reportIdx').val();
		let reviewIdx = $('#reviewIdx').val();
		let data = {
			idx : idx,
			reviewIdx : reviewIdx
		};
		
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/report/confirm',
			type: 'patch',
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			success: function(result) {
				if(result == 1) {
					swal({
	        			title : "신고 요청을 반려했습니다.",
	        		    icon  : "success",
	        		    closeOnClickOutside : false
	        		}).then(function(){
	        			opener.parent.location.reload();
						window.close();
	        		});
				} else {
					swal("실패", "신고 처리 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");					
				}
			}, 
			error: function() {
				swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
			}
		});
	}
</script>
</body>

</html>