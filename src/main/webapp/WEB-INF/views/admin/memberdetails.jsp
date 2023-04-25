<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>회원 상세 정보</title>
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
				<h6 class="mb-4">회원 상세 정보</h6>
				<form>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="username" name="username" value="${member.username}" readonly>
						<label for="username">아이디</label>
					</div>
					<div class="form-floating mb-3 row">
						<div class="form-floating col-4">
							<input type="text" class="form-control" id="name" name="name" value="${member.name}" readonly>
							<label for="name" class="ps-4">이름</label>
						</div>
						<div class="form-floating col-4">
							<c:choose>
								<c:when test="${member.enabled eq 0}">
									<c:set var="gender" value="0"/>
								</c:when>
								<c:when test="${member.gender eq 0}">
									<c:set var="gender" value="남"/>
								</c:when>
								<c:otherwise>
									<c:set var="gender" value="여"/>
								</c:otherwise>
							</c:choose>
							<input type="text" class="form-control" id="gender" name="gender" value="${gender }" readonly>
							<label for="gender" class="ps-4">성별</label>
						</div>
						<div class="form-floating col-4">
							<input type="text" class="form-control" id="birth" name="birth" value="${member.birth}" readonly>
							<label for="birth" class="ps-4">생년월일</label>
						</div>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${member.phoneNumber}" readonly>
						<label for="phoneNumber">전화번호</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="license" name="license" value="${member.license}" readonly>
						<label for="license">면허증 번호</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="email" name="email" value="${member.email}" readonly>
						<label for="email">이메일</label>
					</div>
					<div style="text-align: center;">
						<button type="button" class="btn btn-primary" style="display: inline-block" name="updateBtn">회원 정보 수정</button>
						<button type="button" class="btn btn-primary" style="display: inline-block" name="deleteBtn">삭제</button>
					</div>
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
	
	$('[name=updateBtn]').on('click', changeStatus);
	
	function changeStatus() {
		if($('[name=updateBtn]').text() == '회원 정보 수정') {
			$('#phoneNumber').attr('readonly', false);
			$('#license').attr('readonly', false);
			$('#email').attr('readonly', false);
			$('[name=updateBtn]').text('수정 완료');
		} else {
			console.log('ddddd');
		}	
	}
	
	$('[name=deleteBtn]').on('click', deleteMember);
	
	function deleteMember() {
		let username = $('#username').val();
		console.log(username);
		$.ajax({
			url: "<%=request.getContextPath()%>/admin/member/${member.username}",
			data: {username: username},
			type: 'delete',
			success: function(result) {
				if(result == 1) {
					alert('삭제 성공');
					opener.parent.location.reload();
					window.close();
				} else {
					alert('오류 발생');
				}
			},
			error: function() {
				console.log('통신 실패');
			}
		}
		); 
	}
	
</script>

</body>

</html>