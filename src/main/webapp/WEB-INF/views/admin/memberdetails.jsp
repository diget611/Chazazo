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
				<h6 class="mb-4">회원 상세 정보</h6>
				<form>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="username" name="username" value="${member.username}" readonly>
						<label for="username">아이디</label>
					</div>
					<c:choose>
						<c:when test="${member.enabled eq 0}">
							<div class="form-floating mb-3 row">
								<div class="form-floating col-4">
									<input type="text" class="form-control" id="name" name="name" value="-" readonly>
									<label for="name" class="ps-4">이름</label>
								</div>
								<div class="form-floating col-4">	
									<input type="text" class="form-control" id="gender" name="gender" value="-" readonly>
									<label for="gender" class="ps-4">성별</label>
								</div>
								<div class="form-floating col-4">
									<input type="text" class="form-control" id="birth" name="birth" value="-" readonly>
									<label for="birth" class="ps-4">생년월일</label>
								</div>
							</div>
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="-" readonly>
								<label for="phoneNumber">전화번호</label>
							</div>
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="license" name="license" value="-" readonly>
								<label for="license">면허증 번호</label>
							</div>
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="email" name="email" value="-" readonly>
								<label for="email">이메일</label>
							</div>
						</c:when>
						<c:otherwise>
							<div class="form-floating mb-3 row">
								<div class="form-floating col-4">
									<input type="text" class="form-control" id="name" name="name" value="${member.name}" readonly>
									<label for="name" class="ps-4">이름</label>
								</div>
								<div class="form-floating col-4">
									<c:choose>
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
								<button type="button" class="btn btn-primary" style="display: inline-block" name="deleteBtn">삭제하기</button>
							</div>
						</c:otherwise>
					</c:choose>
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
			let checkPhone = 0;
			let checkLicense = 0;
			let checkEmail = 0;
			
			let testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
			if($('[name=phoneNumber]').val() == ''){
				$('[name=phoneNumber]').next().remove();
				$('[name=phoneNumber]').after('<label for="phoneNumber">전화번호</label>');
				$('[name=phoneNumber]').after('<div style="color: red;">전화번호를 입력하세요.</div>');
			} else if(!testPhone.test($('[name=phoneNumber]').val())){
				$('[name=phoneNumber]').next().remove();
				$('[name=phoneNumber]').after('<label for="phoneNumber">전화번호</label>');
				$('[name=phoneNumber]').after('<div style="color: red;">전화번호를 확인하세요.</div>');
			} else {
				$('[name=phoneNumber]').next().remove();
				$('[name=phoneNumber]').after('<label for="phoneNumber">전화번호</label>');
				checkPhone = 1;
			}
			
			let testLicense = /^(1[1-9]|2[0-68-8])([0-9]{2}[0-9]{6}[0-9]{2})$/;
			if($('[name=license]').val() == ''){
				$('[name=license]').next().remove();
				$('[name=license]').after('<label for="license">면허증 번호</label>');
				$('[name=license]').after('<div style="color: red;">면허증 번호를 입력하세요.</div>');
			} else if(!testLicense.test($('[name=license]').val())){
				$('[name=license]').next().remove();
				$('[name=license]').after('<label for="license">면허증 번호</label>');
				$('[name=license]').after('<div style="color: red;">면허증 번호를 확인하세요.</div>');
			} else {
				$('[name=license]').next().remove();
				$('[name=license]').after('<label for="license">면허증 번호</label>');
				checkLicense = 1;
			}
			
			let testEmail = /([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~])+\")@([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])/;
			if($('[name=email]').val() == '') {
				$('[name=email]').next().remove();
				$('[name=email]').after('<label for="email">이메일</label>');
				$('[name=email]').after('<div style="color: red;">이메일 주소를 입력하세요.</div>');
			} else if(!testEmail.test($('[name=email]').val())){
				$('[name=email]').next().remove();
				$('[name=email]').after('<label for="email">이메일</label>');
				$('[name=email]').after('<div style="color: red;">이메일 주소를 확인하세요.</div>');
			} else {
				$('[name=email]').next().remove();
				$('[name=email]').after('<label for="email">이메일</label>');
				checkEmail = 1;
			}
			
			if(checkPhone == 1 && checkLicense == 1 && checkEmail == 1) {
				let username = $('#username').val();
				let phoneNumber = $('#phoneNumber').val();
				let license = $('#license').val();
				let email = $('#email').val();
				
				let data = {
					username : username,
					phoneNumber : phoneNumber,
					license : license,
					email : email
				};
				
				$.ajax({
					url: '${pageContext.request.contextPath}/admin/member/update',
					type: 'patch',
					data : JSON.stringify(data),
					contentType: "application/json; charset=utf-8",
					success: function(result) {
						if(result == 1) {
							swal({
			        			title : "회원 정보를 수정했습니다.",
			        		    icon  : "success",
			        		    closeOnClickOutside : false
			        		}).then(function(){
			        			opener.parent.location.reload();
								window.close();
			        		});
						} else {
							swal("실패", "회원 정보 수정 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");
						}
					},
					error: function() {
						swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
					}
				});
			}
				
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
					swal({
	        			title : "회원 정보를 삭제했습니다.",
	        		    icon  : "success",
	        		    closeOnClickOutside : false
	        		}).then(function(){
	        			opener.parent.location.reload();
						window.close();
	        		});
				} else {
					swal("실패", "회원 정보 삭제 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");					
				}
			}, 
			error: function() {
				swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
			}
		}
		); 
	}
	
</script>

</body>

</html>