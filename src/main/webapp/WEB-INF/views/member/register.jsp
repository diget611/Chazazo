<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">

<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/modernizr-2.6.2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-hover-dropdown.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/easypiechart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery.easypiechart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	
	<section>
		<div class="register-area vh-100" style="background-color: rgb(249, 249, 249);">
			<div class="container">
				<div>
					<div class="box-for overflow" style="width: 800px; margin: 0 auto;">
						<div class="col-md-12 col-xs-12 login-blocks" style="padding: 20px 40px 20px 40px;">
							<h2>회원가입 :</h2>
							<form>
								<div class="form-group">
									<label>아이디</label>
									<div class="row">
										<div class="col-xs-10">
											<input type="text" class="form-control" name="username" style="width:100%;  border-radius: 2px;">
										</div>
										<div class="col-xs-2">
											<button id="checkDupBtn" type="button" class="btn btn-default" style="width: 100%; border-radius: 2px;">중복확인</button>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label>비밀번호</label>
									<input type="password" class="form-control" name="password" style="border-radius: 2px;">
								</div>
								<div class="form-group">
									<label>비밀번호 확인</label>
									<input type="password" class="form-control" name="passwordCheck" style="border-radius: 2px;">
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-xs-5">
											<label>이름</label>
											<input type="text" class="form-control" name="name" style="border-radius: 2px;">
										</div>
										<div class="col-xs-3">
											<label>성별</label>
											<select class="form-control" name="gender" style="border-radius: 2px;">
												<option selected="selected" hidden="hidden" value="2">성별</option>
												<option value="0">남성</option>
												<option value="1">여성</option>
											</select>
										</div>
										<div class="col-xs-4">
											<label>생년월일</label>
											<input type="text" class="form-control" name="birth" style="border-radius: 2px;">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label>전화번호</label>
									<input type="text" class="form-control" name="phoneNumber" style="border-radius: 2px;">
								</div>
								<div class="form-group">
									<label>면허증 번호</label>
									<input type="text" class="form-control" name="license" style="border-radius: 2px;">
								</div>
								<div class="form-group">
									<label>이메일</label>
									<div class="row">
										<div class="col-xs-10" >
											<input type="text" class="form-control" name="email" style="width:100%; border-radius: 2px;">
										</div>
										<div class="col-xs-2" >
											<button id="checkEmailBtn" type="button" class="btn btn-default" style="width: 100%; border-radius: 2px;">인증번호</button>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-xs-9" >
											<input type="text" class="form-control" name="checkEmail" 
											disabled="disabled" placeholder="인증번호를 입력하세요." style="width:100%; border-radius: 2px;">
										</div>
										<div class="col-xs-1" id="timerTest"></div>
										<div class="col-xs-2" >
											<button id="confirmEmailBtn" type="button" disabled="disabled"
											class="btn btn-default" style="width: 100%; border-radius: 2px;">확인</button>
										</div>
									</div>
								</div>
								<div class="text-center" style="margin-top: 30px;">
									<button type="button" id="testBtn" class="btn btn-default" style="border-radius: 2px;">회원가입</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/base/chat.jsp"/>
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	<script src="<%=request.getContextPath()%>/resources/js/validation.js"></script>
	
	<script>
		// 값이 1이면 회원가입 가능 상태
		var allowRegister = 0;
		var checkDupId = 0;
		var checkEmailCert = 0;
		var checkPass = 0;
		// 이메일 인증 번호
		var certNum = 0;
		
		$('#testBtn').on('click', checkForm);
		
		function checkForm(){
			let testId = /^[a-z]{1}[a-z0-9_-]{4,19}$/;
			let testPass = /^(?=.*\d)(?=.*[a-z])(?=.*[!@#$%^&\*])[\da-zA-Z!@#$%^&\*]{8,30}$/;
			let testName = /^[가-힣]{2,10}$/;
			let testBirth = /^(19[0-9]{2}|20[0-1]{1}[0-9]{1}|202[0-3]{1})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
			let testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
			let testLicense = /^(1[1-9]|2[0-68-8])([0-9]{2}[0-9]{6}[0-9]{2})$/;
			let testEmail = /([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~])+\")@([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])/;
			
			if(allowRegister == 0 || checkDupId == 0 || checkEmailCert == 0 || checkPass == 0){
				swal("에러", "회원가입 양식을 확인해주세요.", "error");
			} else if($('[name=username]').val() == '' | $('[name=password]').val() == '' | $('[name=name]').val() == ''
			| $('[name=birth]').val() == '' | $('[name=gender]').val() == '' | $('[name=phonNumber]').val() == ''
			| $('[name=license]').val() == '' | $('[name=email]').val() == '' | $('[name=checkEmail]').val() == '') {
				swal("에러", "회원가입 양식을 확인해주세요.", "error");
			} else if(!testId.test($('[name=username]').val()) | !testPass.test($('[name=password]').val())
			| !testName.test($('[name=name]').val()) | !testBirth.test($('[name=birth]').val())
			| !testPhone.test($('[name=phoneNumber]').val()) | !testLicense.test($('[name=license]').val())
			| !testEmail.test($('[name=email]').val())) {
				swal("에러", "회원가입 양식을 확인해주세요.", "error");
			} else {
				let username = $('[name=username]').val();
				let password = $('[name=password]').val();
				let name = $('[name=name]').val();
				let gender = $('[name=gender]').val();
				let birth = $('[name=birth]').val();
				let phoneNumber = $('[name=phoneNumber]').val();
				let license = $('[name=license]').val();
				let email = $('[name=email]').val();
				
				let data = {
						username : username,
						password : password,
						name : name,
						gender : gender,
						birth : birth,
						phoneNumber : phoneNumber,
						license : license,
						email : email
				}
				$.ajax({
					url: '${pageContext.request.contextPath}/member/register',
					type: 'post',
					data: JSON.stringify(data),
					contentType: "application/json; charset=utf-8",
					success: function(result) {
						if(result == 1) {
							swal({
			        			title : "회원 가입을 완료했습니다.",
			        		    icon  : "success",
			        		    closeOnClickOutside : false
			        		}).then(function(){
			        			location.href='${pageContext.request.contextPath}/';
			        		});
						} else {
							swal("실패", "회원 가입 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");
						}
					},
					error: function() {
						swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
					}
				});
			}
		}
		
		// 아이디 중복 확인(AJAX)
		$('#checkDupBtn').on('click', checkDup);
		
		function checkDup() {
			let username = $('[name=username]').val();
			$.ajax({
				url: "<%=request.getContextPath()%>/member/register/exist",
				type: 'get',
				data: {username: username},
				success: function(result){
					let testId = /^[a-z]{1}[a-z0-9_-]{4,19}$/;
					if(username != null && testId.test(username)) {
						if(result > 0){
							swal("중복", "중복되는 아이디가 존재합니다.", "error");
							checkDupId = 1;
						} else {
							swal({
			        			title : "가입 가능한 아이디입니다.",
			        		    icon  : "success",
			        		    closeOnClickOutside : false
			        		})
							checkDupId = 1;
							allowRegister = 1;
						}						
					} else {
						swal("에러", "입력한 아이디를 확인하세요.", "error");
						checkDupId = 1;
					}
				},
				error: function(){
					swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
				}
			});
		}
		
		$('[name=password]').on('change', isPassEq);
		$('[name=passwordCheck]').on('change', isPassEq);
		
		function isPassEq() {
			let pass = $('[name=password]').val();
			let passChk = $('[name=passwordCheck]').val();
			
			if(pass != passChk) {
				$('[name=passwordCheck]').next().remove();
				$('[name=passwordCheck]').after('<div style="color: red;">비밀번호가 일치하지 않습니다.</div>');
				checkPass = 0;
			} else {
				$('[name=passwordCheck]').next().remove();
				$('[name=passwordCheck]').after('<div style="color: green;">비밀번호가 일치합니다.</div>');
				checkPass = 1;
			}
		}
		
		// 아이디 중복확인 후 다시 아이디 작성 시 폼 onsubmit return값 관리
		$('[name=username]').on('change', function(){
			checkDupId = 0;
		})
		
		// 이메일 인증 후 다시 이메일 작성 시 폼 onsubmit return값 관리
		$('[name=email]').on('change', function(){
			$('[name=checkEmail]').next().remove();
			checkEmailCert = 0;
		})
			
		// 이메일 인증번호 발송
		$('#checkEmailBtn').on('click', checkEmail);
		
		function checkEmail() {
			let email = $('[name=email]').val();
			$.ajax({
				url: "<%=request.getContextPath()%>/member/register/email",
				type: 'get',
				data: {email: email},
				success: function(result){
					let testEmail = /([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~])+\")@([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])/;
					if(email != null && testEmail.test(email)) {
						swal("발송 완료", "이메일로 인증번호를 발송하였습니다.", "success");
						$('[name=email]').attr('readonly', true);
						$('#checkEmailBtn').attr('disabled', true);
						$('#confirmEmailBtn').attr('disabled', false);
						$('[name=checkEmail]').attr('disabled', false);
						certNum = result;
						
						let time = 300;
						let min = '';
						let sec = '';
						
						let x = setInterval(function() {
							min = parseInt(time / 60);
							sec = time % 60;
							
							$('#timerTest').html(min + ':' + sec);
							time--;
							
							if(time < 0) {
								clearInterval(x);
								swal("만료", "인증번호가 만료되었습니다. 다시 요청하세요.", "error");
								$('[name=email]').attr('readonly', false);
								$('#checkEmailBtn').attr('disabled', false);
								$('#confirmEmailBtn').attr('disabled', true);
								$('[name=checkEmail]').attr('disabled', true);
								$('#timerTest').html('');
								certNum = '';
							}
						}, 1000)
					} else {
						swal("에러", "입력한 이메일 주소를 확인하세요.", "error");
					}
				},
				error: function(){
					swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
				}
			});
		}
		
		$("#confirmEmailBtn").on('click', confirmEmail);
		
		function confirmEmail() {
			if($('[name=checkEmail]').val() == certNum && $('[name=checkEmail]').val().length == 6 ) {
				$('[name=checkEmail]').next().remove();
				$('[name=checkEmail]').after('<div style="color: green;">인증번호가 일치합니다.</div>');
				checkEmailCert = 1;
			} else {
				$('[name=checkEmail]').next().remove();
				$('[name=checkEmail]').after('<div style="color: red;">인증번호가 일치하지 않습니다. 인증번호를 확인하세요.</div>');
			}
		}
	</script>

</body>
</html>