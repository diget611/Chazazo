<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원 정보 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">

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
</head>
<body>
	<jsp:include page="../header.jsp"/>
	
	<section>
		<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="pc-mobile-header-container">
					<div class="pc-header space-2 text-center dc-none dc-lg-block">
						<div class="container">
							<h2 class="text-grey-3 underline-bg dc-inline-block">마이페이지</h2>
							<p class="text-grey-5 mb-0">내 정보</p>
						</div>
					</div>
				</div>
				<div class="col-md-4" style="float: left;">    
					<div class="blog-asside-right">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">회원정보</h3>
							</div>
						</div>
						<div class="dealer-widget row-md-4">
							<div class="dealer-content">
								<div class="inner-wrapper">
									<div class="clear">
										<div class="col-xs-8 col-sm-8 ">
											<h3 class="dealer-name">
												<span>
													<input type="text" class="form-control" name="name" value="${memberinfo.name }" readonly >
												</span>
											</h3>
										</div>
									</div>
									<div class="clear">
										<ul class="dealer-contacts">                                       
											<li>
												<i class="pe-7s-call strong"> </i>
												<input type="text" class="form-control" name="phoneNumber" value="${memberinfo.phoneNumber}" readonly >
											</li>
											<li>
												<i class="pe-7s-mail strong"> </i> 
												<input type="text" class="form-control" name="email" value="${memberinfo.email }" readonly >
											</li>
											
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="blog-asside-right" >
							<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">
									<button id="historyBtn" type="button" class="btn btn-outline-primary">예약내역</button><br>
									
								</div>
							</div>
						</div>  
						<div class="blog-asside-right" >
							<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">
									<button type="button" class="btn btn-outline-primary">회원정보 수정</button><br>
									<button type="button" class="btn btn-outline-primary">나의 관심 지점</button><br></h3>
								</div>
							</div>
						</div>
						<div class="blog-asside-right" >
							<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">
									<button type="button" class="btn btn-outline-primary">1:1 문의</button><br>
									<button type="button" class="btn btn-outline-primary">쿠폰 관리</button><br>
									<button type="button" class="btn btn-outline-primary">회원탈퇴</button></h3>
								</div>
							</div>
						</div>
					</div>   
				</div>
			
				
				
				
				<div class="blog-lst col-md-8 p0 " style="float: right;">
				
					<!-- 회원정보 수정 버튼 클릭시 비밀번호 확인 창 뜨게 하기  -->
					<section id="id-100"  >
					<div class="card-body" id="passCheck">
						<div class="text-start">
							<div class="input-group input-group-outline my-3">
								<label>비밀번호 확인</label>
								<input type="password" id="password" name="password" class="form-control">
							</div>
						</div>
						<div class="text-center">
							<button class="btn bg-gradient-primary w-100 my-4 mb-2" id="checkPwd"> 비밀번호 확인</button>
						</div>
					</div> 
				
						<form id="updateForm" action="<%=request.getContextPath() %>/member/profile" method="POST" 
								style="display:none"; onsubmit="return checkForm()">
							<div class="form-group">
									<label>이름</label>
									<input type="text" class="form-control" name="name" value="${memberinfo.name }" readonly >
								</div>
								
								<!-- 정보 수정 시 정규식 확인?  -->
								
								<div class="form-group">
									<label>성별</label>
									<select class="form-control" name="gender" value="${memberinfo.gender }" >
										<option selected="selected" hidden="hidden" value="2">성별</option>
										<option value="0">남성</option>
										<option value="1">여성</option>
									</select>
								</div>
								<div class="form-group">
									<label>생년월일</label>
									<input type="text" class="form-control" name="birth" value="${memberinfo.birth }" >
								</div>
								<div class="form-group">
									<label>전화번호</label>
									<input type="text" class="form-control" name="phoneNumber" value="${memberinfo.phoneNumber }" >
								</div>
								<div class="form-group">
									<label>이메일</label>
									<input type="email" class="form-control" name="email" value="${memberinfo.email }" >
								</div>						
								<div class="text-center">
									<button id="btn-update" type="submit" class="btn btn-default" >회원 정보 수정</button>
								</div>
							</form>
					</section>
				</div>                    
			</div>
		</div>
	</section>
    
	<jsp:include page="../footer.jsp"/>
	
	<script>
	
	$('#updateinfoBtn').on('click', function() {
		location.href='<%=request.getContextPath()%>/member/profile';
		
	});
	$('#historyBtn').on('click', function() {
		location.href='<%=request.getContextPath()%>/profile/reservation';
	});
	
	$('#moveNoneMemberReservation').on('click', function() {
		location.href='<%=request.getContextPath()%>/profile/reservation';
	});
	
	$('#bookmark').on('click', function() {
		location.href='<%=request.getContextPath()%>/profile/favorites';
	});
	
	
		$('#checkPwd').click(function(){
			const checkPassword = $('#password').val();
			if(!checkPassword || checkPassword.trim() === ""){
				alert("비밀번호를 입력하세요");
			}else{
				$.ajax({
					type :"GET",
					 url: "<%=request.getContextPath()%>/member/checkPwd",
		             data: {'checkPassword': checkPassword},
		             datatype: "text",
		             success: function(result) {
		            	 if(result) {
		            		 console.log('일치');
		            		 $('#updateForm').show();
		            		 $('#passCheck').hide();
		            	 } else {
		            		 console.log('불일치');
		            		 alert("비밀번호가 일치하지 않습니다.");
		            	 }
		             },
		             error: function() {
		            	 console.log('error');
		             } 
		            	 
				});
			}
		});
		
		
		
		// 값이 1이면 회원가입 가능 상태
		var allowRegister = 0;
		var checkDupId = 0;
		var checkEmailCert = 0;
		var checkPass = 0;
		// 이메일 인증 번호
		var certNum = 0;
		
		function checkForm(){
			let testId = /^[a-z]{1}[a-z0-9_-]{4,19}$/;
			let testPass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&\*])[\da-zA-Z!@#$%^&\*]{8,30}$/;
			let testName = /^[가-힣]{2,10}$/;
			let testBirth = /^(19[0-9]{2}|20[0-1]{1}[0-9]{1}|202[0-3]{1})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
			let testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
			let testLicense = /^(1[1-9]|2[0-68-8])([0-9]{2}[0-9]{6}[0-9]{2})$/;
			let testEmail = /([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~])+\")@([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])/;
			
			if(allowRegister == 0 || checkDupId == 0 || checkEmailCert == 0 || checkPass == 0){
				return false;
			} else if($('[name=username]').val() == '' | $('[name=password]').val() == '' | $('[name=name]').val() == ''
			| $('[name=birth]').val() == '' | $('[name=gender]').val() == '' | $('[name=phonNumber]').val() == ''
			| $('[name=license]').val() == '' | $('[name=email]').val() == '' | $('[name=checkEmail]'.val() == '')) {
				return false;
			} else if(!testId.test($('[name=username]').val()) | !testPass.test($('[name=password]').val())
			| !testName.test($('[name=name]').val()) | !testBirth.test($('[name=birth]').val())
			| !testPhone.test($('[name=phoneNumber]').val()) | !testLicense.test($('[name=license]').val())
			| !testEmail.test($('[name=email]').val())) {
				return false;	
			} else {
				return true;
			}
		}
		
		
		
		// ID 유효성 체크 (영어 소문자로 시작, 영어 소문자, 숫자, 특수문자(-, _) 가능)
		$('[name=username]').on('blur', function(){
			let testId = /^[a-z]{1}[a-z0-9_-]{4,19}$/;
			if($('[name=username]').val() == '') {
				$('[name=username]').next().remove();
				$('[name=username]').after('<div style="color: red;">아이디를 입력하세요.</div>');
				$('[name=username]').attr();
			} else if(!testId.test($('[name=username]').val())){
				$('[name=username]').next().remove();
				$('[name=username]').after('<div style="color: red;">5 ~ 20자 사이의 알파벳 소문자, 숫자, -, _로 이루어진 아이디를 작성하세요.</div>');
			} else {
				$('[name=username]').next().remove();
			}
		});
	
		// 생년월일 유효성 체크
		$('[name=birth]').on('blur', function(){
			let testBirth = /^(19[0-9]{2}|20[0-1]{1}[0-9]{1}|202[0-3]{1})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
			if($('[name=birth]').val() == ''){
				$('[name=birth]').next().remove();
				$('[name=birth]').after('<div style="color: red;">생년월일을 입력하세요.</div>');
			} else if(!testBirth.test($('[name=birth]').val())){
				$('[name=birth]').next().remove();
				$('[name=birth]').after('<div style="color: red;">생년월일을 확인하세요.</div>');
			} else {
				$('[name=birth]').next().remove();
			}
		});
		
		// 성별 유효성 체크
		$('[name=gender]').on('blur', function(){
			if($('[name=gender]').val() == '2'){
				$('[name=gender]').next().remove();
				$('[name=gender]').after('<div style="color: red;">성별을 선택하세요.</div>');
			} else {
				$('[name=gender]').next().remove();
			}
		});
		
		// 전화번호 유효성 체크
		$('[name=phoneNumber]').on('blur', function(){
			let testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
			if($('[name=phoneNumber]').val() == ''){
				$('[name=phoneNumber]').next().remove();
				$('[name=phoneNumber]').after('<div style="color: red;">전화번호를 입력하세요.</div>');
			} else if(!testPhone.test($('[name=phoneNumber]').val())){
				$('[name=phoneNumber]').next().remove();
				$('[name=phoneNumber]').after('<div style="color: red;">전화번호를 확인하세요.</div>');
			} else {
				$('[name=phoneNumber]').next().remove();
			}
		});
	
		// 이메일 유효성 체크
		$('[name=email]').on('blur', function(){
			let testEmail = /([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~])+\")@([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])/;
			if($('[name=email]').val() == '') {
				$('[name=email]').next().remove();
				$('[name=email]').after('<div style="color: red;">이메일 주소를 입력하세요.</div>');
			} else if(!testEmail.test($('[name=email]').val())){
				$('[name=email]').next().remove();
				$('[name=email]').after('<div style="color: red;">이메일 주소를 확인하세요.</div>');
			} else {
				$('[name=email]').next().remove();
			}
		});
			
		
		
		
	</script>
</body>
</html>