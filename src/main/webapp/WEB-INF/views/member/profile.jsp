<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8">
<title>회원 정보 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />

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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
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
<script src="<%=request.getContextPath()%>/resources/js/validation.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>

<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>

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
				<div class="col-md-4" style="float: left;">    
					<div class="blog-asside-right">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">회원정보</h3>
							</div>
						</div>
							
							<sec:authorize access="isAuthenticated()">
							<div class="dealer-content">
								<div class="inner-wrapper">
									
								
											<div class="clear">
												<div class="col-xs-8 col-sm-8 ">
													<h3 class="dealer-name">
														<span>		
															<input type="text" class="form-control"  value="${memberinfo.name }" readonly >
															<input type="hidden" class="form-control" name="usernname" id="username" value="${memberinfo.username }" >
															<input type="hidden" class="form-control"  value="${memberinfo.idx }" >
														</span>
													</h3>
												</div>
											</div>
											<div class="clear">
												<ul class="dealer-contacts">                                       
													<li>
														<i class="pe-7s-call strong"> </i>
														<input type="text" class="form-control" value="${memberinfo.phoneNumber}" readonly >
													</li>
													<li>
														<i class="pe-7s-mail strong"> </i> 
														<input type="text" class="form-control"  value="${memberinfo.email }" readonly >
													</li>
												</ul>
											<div>
												<div class="dc-flex justify-content-between px-2 mb-4 is-only-member">
													<div class="dc-flex flex-column flex-grow-1 text-center click-effect-press">
														<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjciIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNyAyNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCN4anBrYjR1NTlhKSI+CiAgICAgICAgPHJlY3QgeD0iMi4zMzMiIHk9IjQuNTEiIHdpZHRoPSIxOS4wMTIiIGhlaWdodD0iMTkuNDkiIHJ4PSIyIiBmaWxsPSIjQzdFMEZGIi8+CiAgICAgICAgPHBhdGggZD0iTTE5Ljc3MyA2LjgzM2MtLjk3NS0uOTU4LTEuMDU3LTIuNTA2LS4xODMtMy40NGwxLjU5Ni0xLjcwNWMuODczLS45MzQgMi4zODUtLjkxNCAzLjM2LjA0My45NzQuOTU4IDEuMDU2IDIuNTA2LjE4MiAzLjQ0bC0xLjU5NiAxLjcwNmMtLjg3My45MzMtMi4zODUuOTE0LTMuMzYtLjA0NHoiIGZpbGw9IiM5NkM2RkYiLz4KICAgICAgICA8cGF0aCBkPSJtMTAuNDM4IDEzLjEyMS0yLjI0OCA1LjU4Yy0uMTMxLjMyNS4xODMuNjM2LjQ5Ni40ODhsNS4zNDgtMi41MzUtMy41OTctMy41MzZ2LjAwM3oiIGZpbGw9IiNGQkZDRkYiLz4KICAgICAgICA8cGF0aCBkPSJtOC42NDYgMTcuNTcyIDEuMTI1IDEuMTA1LTEuMjE1LjU3N2MtLjI2My4xMjUtLjUyOS0uMTM3LS40MTgtLjQxMWwuNTExLTEuMjY4LS4wMDMtLjAwM3oiIGZpbGw9IiM5NkM2RkYiLz4KICAgICAgICA8cGF0aCBkPSJtMjEuODY0IDMuMzY0LTEuMTk4LTEuMTc4LTEwLjIyOCAxMC45MzUgMS4xOTcgMS4xNzZMMjEuODY0IDMuMzY0eiIgZmlsbD0iI0I5RDVGRiIvPgogICAgICAgIDxwYXRoIGQ9Ik0yMy4wNjQgNC41MzkgMjEuODY3IDMuMzZsLTEwLjIzIDEwLjkzNCAxLjE5OCAxLjE3OCA1LjExNC01LjQ2NyA1LjExNS01LjQ2N3pNMjQuMjYgNS43MmwtMS4xOTctMS4xNzgtNS4xMTUgNS40NjctNS4xMTQgNS40NjcgMS4xOTcgMS4xNzdMMjQuMjYxIDUuNzJ6IiBmaWxsPSIjOUFDMkZGIi8+CiAgICA8L2c+CiAgICA8ZGVmcz4KICAgICAgICA8Y2xpcFBhdGggaWQ9InhqcGtiNHU1OWEiPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjZmZmIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSguMzMzKSIgZD0iTTAgMGgyNnYyNkgweiIvPgogICAgICAgIDwvY2xpcFBhdGg+CiAgICA8L2RlZnM+Cjwvc3ZnPgo=" height="26px">
														<span class="color-grey-3 text-14">나의리뷰</span>
													</div>
												</div>
											</div>
										</div>	
								</div>
							
							</div>
							</sec:authorize>
						<div class="blog-asside-right" >
							<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">
									<button id="historyBtn" type="button" class="btn btn-outline-primary">예약내역</button><br>
									</h3>
								</div>
							</div>
						</div>  
						
						
						<div class="blog-asside-right" >
							<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
								
									<h3 class="panel-title">
									<button id="updateinfoBtn" type="button" class="btn btn-outline-primary">회원정보 수정</button><br>
									<button id="bookmark" type="button" class="btn btn-outline-primary">나의 관심 지점</button><br></h3>
								
											
								</div>
							</div>
						</div>
						
						<div class="blog-asside-right" >
							<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
									<h3 class="panel-title">
									<button type="button" id="request" class="btn btn-outline-primary">1:1 문의</button><br>
										<button id="coupon" type="button" class="btn btn-outline-primary">쿠폰 관리</button><br>
										<button type="button" class="btn btn-outline-primary" name="deleteBtn">회원탈퇴</button></h3>
								
								</div>
							</div>
						</div>
					</div>   
	
		</div>
	
				
				
				<div class="blog-lst col-md-8 p0 " style="float: right;">
				
					<!-- 회원정보 수정 버튼 클릭시 비밀번호 확인 창 뜨게 하기  -->
					<section id="id-100" style="margin-top:200px;" >
					<div class="card-body" id="passCheck">
						<div class="text-center">
							<div class="input-group input-group-outline my-4"style="margin-left:250px;">
								<label>비밀번호 확인 </label>
								<input type="password" id="passwordCheck" class="form-control" >
							</div>
						</div>
						<div class="text-center">
							<button class="btn bg-gradient-primary w-100 my-4 mb-2 " id="checkPwd"> 비밀번호 확인</button>
						</div>
					</div> 
					
					
				
						<form id="updateForm"	style="display:none"; >
									<div class="form-group">
									<label>이메일</label>
									<input type="email" class="form-control" name="email" value="${memberinfo.email }" readonly >
								</div>
							<div class="form-group">
									<label>이름</label>
									<input type="text" class="form-control" id="name" name="name" value="${memberinfo.name }"  >
								</div>
								
								<div class="form-group">
									<label>비밀번호</label>
									<input type="password" class="form-control" id ="password" name="password" placeholder="변경할 비밀번호를 입력하세요">
									
								</div>
								
								<div class="form-group">
									<label>비밀번호 확인</label>
									<input type="password" class="form-control" name="passwordCh" style="border-radius: 2px;">
								</div>								
								
								<!-- 정보 수정 시 정규식 확인?  -->
								
								<div class="form-group">
									<label>성별</label>
									<select class="form-control" name="gender" id="gender" value="${memberinfo.gender }" >
										<option selected="selected" hidden="hidden" value="2">성별</option>
										<option value="0">남성</option>
										<option value="1">여성</option>
									</select>
								</div>
								<div class="form-group">
									<label>생년월일</label>
									<input type="text" class="form-control" name="birth" id="birth" value="${memberinfo.birth }" >
								</div>
								<div class="form-group">
									<label>전화번호</label>
									<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${memberinfo.phoneNumber }" >
								</div>
													
								<div class="text-center">
									<button type="button" class="btn btn-default" id="btn-update" >회원 정보 수정</button>
								</div>
							</form>
							
							</section>
					</div>
		</div>
		
		</div>
	</section>
    
    <jsp:include page="/WEB-INF/views/base/chat.jsp"/>
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>

	
	<script>
	$('.main-nav').children().eq(2).children().css('color', '#18B4E9');
	

	$('#historyBtn').on('click', function() {
		location.href="${pageContext.request.contextPath}/profile/history";
	});
		$('#updateinfoBtn').on('click', function() {
			location.href="${pageContext.request.contextPath}/member/profile/update";
			
		});


		$("#myReview").on("click", function(){
			location.href="${pageContext.request.contextPath}/myReview";
			
		});

		$("#coupon").on("click", function(){
			location.href="${pageContext.request.contextPath}/coupon";
			
		});
		$('#request').on('click', function() {
			location.href='<%=request.getContextPath()%>/request';
		});
		
	
		$('#bookmark').on('click', function() {
			location.href='${pageContext.request.contextPath}/profile/favorites';
		});
		
		$('#passwordCheck').on('keypress', function(e){
			  if(e.keyCode == '13'){
			  	$('#checkPwd').click();
			  }
			});
		
		
		$('#checkPwd').click(function(){
			const checkPassword = $('#passwordCheck').val();
			if(!checkPassword || checkPassword.trim() === ""){
				 swal.fire("앗","비밀번호 입력해주세요.", {icon: "warning"});
			}else{
				$.ajax({
					type :"GET",
					 url: "${pageContext.request.contextPath}/member/checkPwd",
		             data: {'checkPassword': checkPassword},
		             datatype: "text",
		             success: function(result) {
		            	 if(result) {
		            			var test = "${pageContext.request.contextPath}/resources/js/validation.js";
			                	$('.footer-copy').after('<script src="' + test + '"/>');
			  	          
		            		 $('#updateForm').show();
		            		 $('#passCheck').hide();
		            	 } else {
		            		 console.log('불일치');
		            		 swal.fire("비밀번호 오류","비밀번호가 일치하지 않습니다.", {icon: "error"});
		            	 }
		             },
		             error: function() {
		            	 console.log('error');
		             } 
		            	 
				});
			}
		});
		
		
			
		function checkForm(){
			var checkPass = 0;
			
			let testName = /^[가-힣]{2,10}$/;
			let testBirth = /^(19[0-9]{2}|20[0-1]{1}[0-9]{1}|202[0-3]{1})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
			let testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
			let testPass = /^(?=.*\d)(?=.*[a-z])(?=.*[!@#$%^&\*])[\da-zA-Z!@#$%^&\*]{8,30}$/;
			
			 if( $('[name=name]').val() == ''
			| $('[name=birth]').val() == ''  | $('[name=password]').val() == ''
			| $('[name=phoneNumber]').val() == '' | $('[name=gender]').val() == '' | $('[name=passwordCh]').val() == '' ) {
				alert("다시 입력하세요");
				return false;
			} else if(!testName.test($('[name=name]').val()) | !testBirth.test($('[name=birth]').val())
			| !testPhone.test($('[name=phoneNumber]').val()) | !testPass.test($('[name=password]').val()) ) {
				alert("다시 입력하세요");
				return false;		
			} else {
				return true;
			}
		}
		$('[name=password]').on('change', isPassEq);
		$('[name=passwordCh]').on('change', isPassEq);
		
		function isPassEq() {
			let pass = $('[name=password]').val();
			let passChk = $('[name=passwordCh]').val();
			
			if(pass != passChk) {
				$('[name=passwordCh]').next().remove();
				$('[name=passwordCh]').after('<div style="color: red;">비밀번호가 일치하지 않습니다.</div>');
				checkPass = 0;
			} else {
				$('[name=passwordCh]').next().remove();
				$('[name=passwordCh]').after('<div style="color: green;">비밀번호가 일치합니다.</div>');
				checkPass = 1;
			}
		}
		
		
		$('#btn-update').on('click', function(){
			
			if(!checkForm()){
				return;
			}
			
			var data = {
 					name: $('#name').val(),
					password :$('#password').val(),
					
					gender:$('#gender').val(),
					birth:$('#birth').val(),
					phoneNumber:$('#phoneNumber').val()
					
			};
			
			var passCh = $('[name=passwordCh]').val(); 
	
			 $.ajax({
	                type: 'POST',
	                url: "${pageContext.request.contextPath}/member/profile/update",
	                //contentType: 'application/json; charset=utf-8',
	  	       		//data: JSON.stringify(data),
	  	       		data:data,
	  	       		
	  	       	    //dataType:'json',
	  	       	    //비밀번호 일치 확인..
	                success: function(result){
	                	if(result==1){
	                		Swal.fire({
	             			   title: '수정이 완료되었습니다!  ',
	             			   text: '확인을 눌러주세요! ',
	             			   icon: 'success',
	             			  confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
	             			   confirmButtonText: '확인 ', // confirm 버튼 텍스트 지정
	         
	             			}).then(result => {
	             			    if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
	             			    	 location.href = '${pageContext.request.contextPath}/member/profile';
	     			                
	             			    }
	             			});
	                	}else{
	                		alert("수정실패")	                	
	            	      }
	                },
	               	error: function(){
	                alert('실패');
	            }
	        });
	                
		})
		
		
		
				
				
		
		
		
</script>
</body>
</html>