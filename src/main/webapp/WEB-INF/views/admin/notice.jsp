<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>공지사항 관리</title>
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
    <style>
    	tr:hover {
    		cursor: pointer;
    	}
    </style>
</head>
<body>
	<div class="container-xxl position-relative bg-white d-flex p-0">
		<jsp:include page="/WEB-INF/views/admin/base/sidebar.jsp"/>
		<div class="content">
			<jsp:include page="/WEB-INF/views/admin/base/navbar.jsp"/>	
			<!-- Table Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded p-4 text-center">
					<div class="d-flex justify-content-between">
					<h4 style="display:inline-block">공지사항 관리</h4>
					<button type="button" class="btn btn-secondary" style="display:inline-block" id="insertBtn">작성하기</button>
					</div>
					<table class="table table-hover">
						<thead>
							<tr class="text-dark">
								<th scope="col" style="width: 5%;">#</th>
								<th scope="col" style="width: 40%;">제목</th>
								<th scope="col" style="width: 15%;">작성일</th>
								<th scope="col" style="width: 10%;">조회수</th>
								<th scope="col" style="width: 15%;">수정일</th>
								<th scope="col" style="width: 15%;">삭제일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${noticeList }" var="notice" varStatus="status">	
							<tr onclick='window.open("<%=request.getContextPath()%>/admin/notice/${notice.idx }", "문의 상세 정보", "width=500, height=600")'>
								<th scope="row">${pagination.count - (pagination.currentPage - 1) * 10 - status.index}</th>
								<td>${notice.title }</td>
								<td>${notice.createDate }
								<td>${notice.readCount }</td>
								<td>${notice.updateDate }</td>
								<td>${notice.deleteDate }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="btn-group me-2 mt-3" role="group">
						<c:choose>
							<c:when test="${pagination.currentPage eq 1 }">
								<button type="button" class="btn btn-secondary disabled" id="preBtn">&lt&lt</button>
							</c:when>
							<c:otherwise>
								<button type="button" class="btn btn-secondary" id="preBtn">&lt&lt</button>	
							</c:otherwise>
						</c:choose>
						<c:forEach begin="${pagination.startPage }" end="${pagination.endPage }" step="1" var="page">
							<c:choose>
								<c:when test="${pagination.currentPage eq page }">
									<button type="button" name="pageBtn" class="btn btn-secondary active" value="${page }">${page }</button>
								</c:when>
								<c:otherwise>
									<button type="button" name="pageBtn" class="btn btn-secondary" value="${page }">${page }</button>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pagination.currentPage eq pagination.paging }">
								<button type="button" class="btn btn-secondary disabled" id="nextBtn">&gt&gt</button>
							</c:when>
							<c:otherwise>
								<button type="button" class="btn btn-secondary" id="nextBtn">&gt&gt</button>	
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<!-- Table End -->
			<jsp:include page="/WEB-INF/views/admin/base/footer.jsp"/>
		</div>
		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
	</div>

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>
	
<script>
	$('#insertBtn').on('click', function() {
		location.href="${pageContext.request.contextPath}/admin/notice/insert"
	})

	$('[name=pageBtn]').on('click', function() {
		let page = $(this).val();
		location.href="${pageContext.request.contextPath}/admin/notice?page=" + page;
	})
	
	$('#preBtn').on('click', function() {
		let page = ${pagination.currentPage};
		
		if(page - 1 == 0) page = 1;
		else page--;
		
		location.href="${pageContext.request.contextPath}/admin/notice?page=" + page;
 	})
	
	$("#nextBtn").on('click', function() {
		let page = ${pagination.currentPage};
		
		if(page + 1 > ${pagination.paging}) page = ${pagination.paging};
		else page++;
		
		location.href="${pageContext.request.contextPath}/admin/notice?page=" + page;
	})
</script>
</body>

</html>