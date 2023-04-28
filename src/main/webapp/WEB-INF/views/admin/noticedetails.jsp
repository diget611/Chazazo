<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>공지사항 상세 정보</title>
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
<body onload="resizeWindow(this)">
	<!-- Form Start -->
	<div class="container-fluid pt-4 px-4">
		<div class="col-sm-12 col-xl-6">
			<div class="bg-light rounded h-100 p-4">
				<h6 class="mb-4">공지사항 상세 정보</h6>
				<input type="hidden" name="idx" id="idx" value="${notice.idx }">
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="title" name="title" value="${notice.title}" readonly>
					<label for="title">제목</label>
				</div>
				<div class="form-floating mb-3">
					<textarea class="form-control" id="content" name="content" style="height: 300px;" readonly>${notice.content}</textarea>
					<label for="content">내용</label>
				</div>
				<c:if test="${notice.deleteDate eq null }">
					<div class="form-floating mb-3">
						<div style="text-align: center;">
							<button type="button" class="btn btn-primary" style="display: inline-block" id="updateBtn">수정하기</button>
							<button type="button" class="btn btn-primary" style="display: inline-block" id="deleteBtn">삭제하기</button>
						</div>
					</div>
				</c:if>
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
	
	$('#updateBtn').on('click', updateNotice);
	
	function updateNotice() {
		if($('#updateBtn').text() == '수정하기') {
			$('#updateBtn').text('수정 완료');
			$('#title').attr('readonly', false);
			$('#content').attr('readonly', false);
		} else {
			let idx = $('#idx').val();
			let title = $('#title').val();
			let content = $('#content').val();
			let data = {
					idx: idx,
					title: title,
					content: content
			}
			$.ajax({
				url: "${pageContext.request.contextPath}/admin/coupon/update",
				type: "patch",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				success: function(result) {
					if(result == 1) {
						alert("공지사항 수정 완료");
						opener.parent.location.reload();
						window.close();
					} else {
						alert('실패');
					}
				},
				error: function() {
					alert("에러");
				}
			});
		} 
	}
	
	$('#deleteBtn').on('click', deleteNotice)
	
	function deleteNotice() {
		let idx = $('#idx').val();
		$.ajax({
			url: "${pageContext.request.contextPath}/admin/notice/delete",
			type: "patch",
			data: {idx: idx},
			success: function(result) {
				if(result == 1) {
					alert('삭제 완료');
					opener.parent.location.reload();
					window.close();
				} else {
					alert('실패');
				}
			},
			error: function() {
				alert('에러');
			}
		});
	}
</script>
</body>

</html>