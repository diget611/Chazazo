<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>채팅 로그</title>
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
	<div class="container">
		<div>
			<div id="msgArea" class="row">
				<c:if test="${empty chatLogList }">
					<div>채팅 로그 내역이 존재하지 않습니다.</div>
				</c:if>
				<c:forEach items="${chatLogList }" var="chat">
					<c:choose>
						<c:when test="${chat.sender eq 'admin' }">
							<div class="d-flex justify-content-end float-end" style="width: 100%; align-items: end;">
								<span class="badge bg-white text-dark" style="margin-bottom: 8px;">${chat.chatDate }<br>${chat.chatTime}</span>
								<div class="bg-info mb-2 ps-2 pe-2 pt-2 pb-2 rounded bg-opacity-50">
									<div style="font-size: 0.7rem; text-align: right; border-bottom-style: solid; border-bottom-width: 1px; border-color: lightslategray;">${chat.sender }</div>
									<div>${chat.chatCon }</div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="d-flex justify-content-start float-start" style="width: 100%; align-items: end;">								
								<div class="bg-light mb-2 ps-2 pe-2 pt-2 pb-2 rounded">
									<div style="font-size: 0.7rem; text-align: left; border-bottom-style: solid; border-bottom-width: 1px; border-color: lightslategray;">${chat.sender }</div>
									<div>${chat.chatCon }</div>
								</div>
								<span class="badge bg-white text-dark" style="margin-bottom: 8px;">${chat.chatDate }<br>${chat.chatTime}</span>
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		</div>
	</div>

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>

<script>
	function resizeWindow(win) {
		var hei = win.document.body.offsetHeight + 100;
		win.resizeTo(500, hei);
	}
</script>
</body>

</html>