<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>채팅 로그 관리</title>
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
					<div>
						<h4 class="mb-4 text-start">채팅 로그 관리</h4>
					</div>
					<table class="table table-hover">
						<thead>
							<tr class="text-dark">
								<th scope="col" style="width: 5%;">#</th>
								<th scope="col" style="width: 40%;">채팅방</th>
								<th scope="col" style="width: 20%;">문의 시작</th>
								<th scope="col" style="width: 20%;">문의 종료</th>
								<th scope="col" style="width: 25%;">회원ID</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${chatroomList }" var="chat" varStatus="status">	
							<tr onclick='window.open("<%=request.getContextPath()%>/admin/chat/${chat.idx}", "채팅 로그", "width=500, height=auto")'>
								<th scope="row">${pagination.count - (pagination.currentPage - 1) * 10 - status.index}</th>
								<td>${chat.idx }</td>
								<td>${chat.startDate }</td>
								<td>${chat.endDate }</td>
								<td>${chat.username }</td>
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
		<jsp:include page="/WEB-INF/views/admin/base/chat.jsp"/>
	</div>

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>
	
<script>
	$('.dropdown-item').eq(8).addClass('active');

	$('[name=pageBtn]').on('click', function() {
		let page = $(this).val();
		location.href="${pageContext.request.contextPath}/admin/chat?page=" + page;
	})
	
	$('#preBtn').on('click', function() {
		let page = ${pagination.currentPage};
		
		if(page - 1 == 0) page = 1;
		else page--;
		
		location.href="${pageContext.request.contextPath}/admin/chat?page=" + page;
 	})
	
	$("#nextBtn").on('click', function() {
		let page = ${pagination.currentPage};
		
		if(page + 1 > ${pagination.paging}) page = ${pagination.paging};
		else page++;
		
		location.href="${pageContext.request.contextPath}/admin/chat?page=" + page;
	})
</script>
</body>

</html>