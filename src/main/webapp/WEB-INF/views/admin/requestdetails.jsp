<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>1:1 문의 상세 정보</title>
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
	<!-- Form Start -->
	<div class="container-fluid pt-4 px-4">
		<div class="col-sm-12 col-xl-6">
			<div class="bg-light rounded h-100 p-4">
				<h6 class="mb-4">1:1 문의 상세 정보</h6>
				<input type="hidden" name="idx" id="idx" value="${request.idx }">
				<div class="mb-3 row">
					<label for="title" class="form-label">제목</label>
					<input type="text" class="form-control" id="title" name="title" value="${request.title}" readonly>
				</div>
				<div class="mb-3 row">
					<label for="content" class="form-label">내용</label>
					<input type="text" class="form-control" id="content" name="content" value="${request.content}" readonly>
				</div>
				<c:choose>
					<c:when test="${request.status eq 0 }">
						<form>
							<div class="mb-3 row">
								<input type="text" class="form-control mb-3" id="answer" name="answer">
								<div style="text-align: center;">
									<button type="button" class="btn btn-primary" style="display: inline-block" id="ansBtn">답변하기</button>
									<button type="button" class="btn btn-primary" style="display: inline-block" id="deleteBtn">삭제하기</button>
								</div>
							</div>
						</form>
					</c:when>
					<c:otherwise>
						<form>
							<div class="mb-3 row">
								<input type="text" class="form-control mb-3" id="answer" name="answer" value="${request.answer }">
								<div style="text-align: center;">
									<button type="button" class="btn btn-primary" style="display: inline-block" id="updateBtn">수정하기</button>
									<button type="button" class="btn btn-primary" style="display: inline-block" id="deleteBtn">삭제하기</button>
								</div>
							</div>
						</form>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<!-- Form End -->

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>
<script>
	$('#ansBtn').on('click', insertAns);
	
	function insertAns() {
		let idx = $('[name=idx]').val();
		let answer = $('[name=answer]').val();
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/request',
			type: 'post',
			data: {idx: idx, answer: answer},
			success: function(result) {
				if(result == 1) {
					opener.parent.location.reload();
					window.close();
				} else {
					alert('실패');
				}
			},
			error: function() {
				alert('에러')
			}
		});
	}
	
	$('#updateBtn').on('click', updateAns);
	
	function updateAns() {
		let idxup = $('[name=idx]').val();
		let answerup = $('[name=answer]').val();
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/request',
			type: 'patch',
			data: {idx: idxup, answer: answerup},
			success: function(result) {
				if(result == 1) {
					opener.parent.location.reload();
					window.close();
				} else {
					alert('실패');
				}
			},
			error: function() {
				alert('에러')
			}
		});
	}
	
	$('#deleteBtn').on('click', deleteAns);
	
	function deleteAns() {
		let idxdel = $('[name=idx]').val();
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/request',
			type: 'delete',
			data: {idx: idxdel},
			success: function(result) {
				if(result == 1) {
					opener.parent.location.reload();
					window.close();
				} else {
					alert('실패');
				}
			},
			error: function() {
				alert('에러')
			}
		});
	}
</script>
</body>

</html>