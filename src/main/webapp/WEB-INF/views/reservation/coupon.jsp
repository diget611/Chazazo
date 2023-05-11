<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 신고하기</title>

<head>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/resources/dashmin/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/css/style.css" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
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
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<body onload="resizeWindow(this)">
 <sec:authentication property="principal.username" var="currentUserName"/>
	 <div class="container-fluid pt-4 px-4">
		<div class="col-sm-12 col-xl-6">
			<div class="bg-light rounded h-100 p-4">
 				<label style="font-size:20px; margin:5px;" > ${currentUserName}님의 쿠폰</label>
 					<c:if test="${not empty cList }">
 					
					<c:forEach items="${cList}" var="coupon" varStatus="i" >
						<div style="margin:10px;">
							<input type="radio" name="coupon" value="${coupon.rate}"><input type="hidden" value="${coupon.idx }"> <label style="color: red;">${coupon.rate}%할인 </label> <br><label style="font-size:14px;">${coupon.name }  </label>
						</div>
					</c:forEach>
						<div style="margin:5px;">
							<input type="radio" name="coupon" value="0" ><label>할인 미적용</label>
						</div>
							<button type="button" id="discount" style="margin:15px; color:#4EA0D8; border-color:#4EA0D8;" >할인 적용</button>
					</c:if>
					<c:if test="${empty cList }">
						<label>적용 가능한 쿠폰이 없습니다.</label>
					</c:if>
			</div>
		</div>
</div>

<script>

function resizeWindow(win)    {
	var hei = win.document.body.offsetHeight + 100;
	win.resizeTo(500, hei);
}



$('#discount').on('click', function() {
	var rate = $('input[name=coupon]:checked').val();
	if(rate == null) {
		rate =0;
	}
	console.log(rate);
var couponIdx = $('input[name=coupon]:checked').next().val();

	opener.document.getElementById("discountRate").value = rate;
	opener.document.getElementById("cIdx").value = couponIdx;
	window.opener.calc();
	window.close();
});

</script>
</body>

</html>