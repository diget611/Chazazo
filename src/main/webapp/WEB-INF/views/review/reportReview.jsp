<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
<sec:authentication var="user" property="principal" />
	<!-- Form Start -->
	<div class="container-fluid pt-4 px-4">
		<div class="col-sm-12 col-xl-6">
			<div class="bg-light rounded h-100 p-4">
				<h6 class="mb-4">리뷰 신고</h6>
				<form style="flex-direction: column">
					<input type="hidden" id="idx" value="${idx }">
					<div>
					  <input type="radio" name="reason" value="1" onClick="this.form.reasontxt.disabled=true"/> 스팸홍보/도배글 입니다
					  </div>
					  <div>
					  <input type="radio" name="reason" value="2" onClick="this.form.reasontxt.disabled=true"/> 음란물입니다
					  </div>
					  <div>
					  <input type="radio" name="reason" value="3" onClick="this.form.reasontxt.disabled=true"/> 불법정보를 포함하고 있습니다
					  </div>
					  <div>
					  <input type="radio" name="reason" value="4" onClick="this.form.reasontxt.disabled=true"/> 청소년에게 유해한 내용입니다
					  </div>
					  <div>
					  <input type="radio" name="reason" value="5" onClick="this.form.reasontxt.disabled=true"/> 불쾌한 표현이 있습니다
					  </div>
					  <div>
					  <input type="radio" id="radioBtn" name="reason" value="6" onClick="this.form.reasontxt.disabled=false"/>
					  <label for="radioBtn">기타</label>
					  </div>
					  <div></div>
					  <label for="reasontxt">사유 입력:</label>
					  <input type="text" name="reasontxt" id="reasontxt" disabled>
					  <button type='submit' id="rbtn">신고하기</button>
					  
					  
				</form>
			</div>
		</div>
	</div>
	<!-- Form End -->



<script>
function resizeWindow(win)    {
	var hei = win.document.body.offsetHeight + 100;
	win.resizeTo(500, hei);
}


	$('#rbtn').on('click', function() {
		var reason = Number($('input[name=reason]:checked').val());
		var idx = $('#idx').val();
		var memberIdx = $(this).data("idx");
		
		  $.ajax({
	          url:'<%=request.getContextPath()%>/',
	          contentType: 'application/json; charset=utf-8',
	          type: 'post',
	          dataType:'json',
	          data: {
	        	  "idx":idx,
	        	  "reason":reason,
	        	  "memberIdx":memberIdx
	          },
	          success: function(result) {
	        	  alert('리뷰가 등록되었습니다')
	        	  location.reload();
	          },
	          error: function() {
	          	alert('리뷰 등록 실패');
	          }
	       });
	});

</script>
</body>

</html>