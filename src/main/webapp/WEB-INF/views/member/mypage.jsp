<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>



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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css">



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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	
	<script type="text/javascript">
	function moveRent(){
		location.href="../carlist";
	}
	
	
	
	</script>
	
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
							<sec:authorize access="!isAuthenticated()">
							
							<section
							class="carmore-section p-0 bg-white cm-rounded bg-shadow mb-3">
							<div>
								<div class="pt-4 position-relative" id="js_mypage_top_info">
									<div
										class="dc-flex justify-content-between align-items-center pb-3 pt-lg-0 pt-2">
										<div class="dc-flex align-items-start pr-2">
											<div>
												<div
													class="js-mypage-btn-login is-only-none-member click-effect-press">
													<div class="color-grey-3 text-20 wordbreak-breakword">3초
														가입/로그인 해주세요</div>
												</div>
											</div>
										</div>
									</div>
									<div>
										<div class="mb-3" id="js_mypage_btn_pc_login"
											style="display: block;">
											<button
												class="js-mypage-btn-login btn btn-primary btn-block max-w-lg-40rem mx-auto click-effect-press">가입
												/ 로그인 하기</button>
										</div>
									</div>
								</div>
							</div>
						</section>
							
							</sec:authorize >
							
							<sec:authorize access="isAuthenticated()">
							<div class="dealer-content">
								<div class="inner-wrapper">
									
								
											<div class="clear">
												<div class="col-xs-8 col-sm-8 ">
													<h3 class="dealer-name">
														<span>		
															<input type="text" class="form-control" name="name" value="${memberinfo.name }" readonly >
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
														<input type="text" class="form-control" name="phoneNumber" value="${memberinfo.phoneNumber}" readonly >
													</li>
													<li>
														<i class="pe-7s-mail strong"> </i> 
														<input type="text" class="form-control" name="email" value="${memberinfo.email }" readonly >
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
									<sec:authorize access="isAuthenticated()">
									<button id="historyBtn" type="button" class="btn btn-outline-primary">예약내역</button><br>
									</sec:authorize>
									<sec:authorize access="!isAuthenticated()">
									<button id="none-Member-history" type="button" class="btn btn-outline-primary">비회원 예약 조회</button><br>
									</sec:authorize>
									</h3>
								</div>
							</div>
						</div>  
						
						<sec:authorize access="isAuthenticated()">
						<div class="blog-asside-right" >
							<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
								
									<h3 class="panel-title">
									<button id="updateinfoBtn" type="button" class="btn btn-outline-primary">회원정보 수정</button><br>
									<button id="bookmark" type="button" class="btn btn-outline-primary">나의 관심 지점</button><br></h3>
								
											
								</div>
							</div>
						</div>
						</sec:authorize>
						<div class="blog-asside-right" >
							<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
									<h3 class="panel-title">
									<button type="button" class="btn btn-outline-primary">1:1 문의</button><br>
									<sec:authorize access="isAuthenticated()">
										<button type="button" class="btn btn-outline-primary">쿠폰 관리</button><br>
										<button type="button" class="btn btn-outline-primary" name="deleteBtn">회원탈퇴</button></h3>
									</sec:authorize>
								
								</div>
							</div>
						</div>
					</div>   
				
				<div class="blog-lst col-md-8 p0 " style="float: right;">
					<section id="id-100" class="post single">
						<div id="post-content" style="visibility: visible; animation-name: fadeInLeft;">
								<div id="mypage_none_rent_history" style="display:block; margin-top:100px;">
									
						 	<div id="hideRent">
							<c:if test="${empty reservation }">
								<p style="text-align: center; font-size: large;"><strong> 진행 중인 렌트 내역이 없습니다 !!</strong></p><br>
								<button class="js-mypage-btn-go-car-list btn btn-outline-primary btn-block max-w-lg-40rem mx-auto py-1" onclick="moveRent();">렌트하러 가기</button>
							</c:if>
										<table>
										<!-- 	
											<tr>
												<th scope="row">예약</th><br>
												<th scope="row">예약시작날짜</th>
												<th scope="row">예약상태</th>
												<th scope="row">차종류</th>
												<th scope="row">대여지점</th>
												<th scope="row">반납지점</th>
											</tr>
										-->
							<c:forEach items="${reservation }" var="list">
											
											<tr>
												<td>${list.idx }</td>
												<td>${list.startDate }</td>
												<td>${list.state }</td>
												<td>${list.vehicleModel }</td>
												<td>${list.rentLocationName }</td>
												<td>${list.returnLocationName }</td>
											</tr>	
										</c:forEach>
								</table>
								
								</div>
									
								<div id="content">
								
								</div>
					
									<div id="noMeberReser">
								
								</div>
								</div>
								
					 
								
								
						</div>
					</section>
			                 
				
				</div>
				
				
		</div>
		</div>
		
		</div>
	</section>
    
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>

	<script>
	
		$('#updateinfoBtn').on('click', function() {
			location.href='<%=request.getContextPath()%>/member/profile/update';
			
		});

		$('#historyBtn').on('click', function() {
			location.href='<%=request.getContextPath()%>/member/profile';
			
		});

		$('#none-Member-history').on('click',content);
		function content(){
			$.ajax({
				url:'<%=request.getContextPath()%>/profile/reservation',
				type: 'get',
				dataType:'json',
				success: function(result){
					
					memberResv(result);
					console.log("dddddddddddffff")
					$('#hideRent').hide();
				},
				error: function(){
					alert("fail!!!!!!!");
				}
				
			});
		};
		
		function memberResv(result){
			console.log("gggdddddddddsssssssssss")
			var html = '';
			if(result == 1){
				html += '			<h4>비회원 예약조회</h4><button type="button" id="test2">테스트</button>';
				html += '			<form >';
				html += '			<div class="form-group">';
				html += '				<label>운전자 이름</label> <input type="text" class="form-control" id ="username" name="name" placeholder="성명을 입력해 주세요">';
				html += '				<div class="invalid-feedback" id="vsnmr_input_driver_name_invalid_msg" style="display: block;">이름을 입력해 주세요</div>';
				html += '				</div>';
				html += '				<div class="form-group">';
				html += '					<label>예약번호</label> <input type="text" class="form-control"';
				html += '						name="reservationNumber" id="reservationNumber">';
				html += '					<div class="invalid-feedback"';
				html += '						id="vsnmr_input_reserv_num_invalid_msg">예약번호를 입력해 주세요</div>';
				html += '					<small class="color-blue">예약번호는 문자와 메일로 보내드린 예약내용에 재되어있습니다.</small>';
				html += '				</div>';
				html += '				<div class="form-group">';
				html += '					<label>전화번호</label> <input type="text" id="phone" name="phone" required>';
				html += '				</div>';
				html += '				<div class="text-center">';	
				html += '					<button type="button" class="btn btn-default" name = "noneMember" onclick="noMeberReser()">예약 조회하기</button>';
				html += '				</div>';
				html += '			</form>';
			
			}	
			$('#content').html(html);
		}
		

		
		

		function noMeberReser(){
			console.log("클릭");
			var username = $('#username').val();
			var phone = $('#phone').val();
			var reservationNumber = $('#reservationNumber').val();
		
		
			$.ajax({
				url:'<%=request.getContextPath()%>/profile/nonereservation',
				type: 'get',
				dataType:'json',
				data ={
						"name":username,
						"phoneNumber":phone,
						"idx":reservationNumber
				},
				success: function(result){
					getNoneResr(result);
					console.log(result);
					console.log(reservationNumber+"22222222"+phone);
					
				},
				error: function(){
					console.log(data);
					alert("fail!!!!!!!");
				}
				
			});
		
		};
		
		function getNoneResr(result){
			console.log("예약내역떠야지?")
			var html = '';
			html += '	<table>'
			html += '	<c:forEach items="${noneReservation }" var="list">'
			
			html += '	<tr>'
			
			html += '		<td>${list.startDate }</td>'
			html += '	<td>${list.state }</td>'
			html += '<td>${list.vehicleIdx }</td>'
			html += '<td>${list.rentLocationName }</td>'
			html += '<td>${list.returnLocationName }</td>'
			html += '	</tr>	'
			html += '</c:forEach>'
			html += '	</table>'
		
		}	$('#content').html(html);
		
		
		
		
			
			
			
		
	
	</script>
</body>
</html>