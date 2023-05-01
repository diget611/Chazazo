<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>쿠폰 관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>



<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">

<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/modernizr-2.6.2.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery-1.10.2.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/bootstrap/js/bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-select.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-hover-dropdown.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/easypiechart.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery.easypiechart.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/main.css">
<style>
.coupon-item-container {
	margin: 0 0 8px;
	border-radius: 16px;
	box-shadow: 0 4px 14px 0 rgba(177, 177, 177, .2);
	background-color: #fff;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp" />

	<script type="text/javascript">
	function moveRent(){
		location.href="../carlist";
	}
	
	
	
	</script>

	<section>
		<div class="content-area blog-page padding-top-40"
			style="background-color: #FCFCFC; padding-bottom: 55px;">
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
							<div
								class="panel panel-default sidebar-menu wow fadeInRight animated animated"
								style="visibility: visible; animation-name: fadeInRight;">
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
													<span> <input type="text" class="form-control"
														name="name" value="${memberinfo.name }" readonly>
														<input type="hidden" class="form-control" name="usernname"
														id="username" value="${memberinfo.username }"> <input
														type="hidden" class="form-control"
														value="${memberinfo.idx }">
													</span>
												</h3>
											</div>
										</div>
										<div class="clear">
											<ul class="dealer-contacts">
												<li><i class="pe-7s-call strong"> </i> <input
													type="text" class="form-control" name="phoneNumber"
													value="${memberinfo.phoneNumber}" readonly></li>
												<li><i class="pe-7s-mail strong"> </i> <input
													type="text" class="form-control" name="email"
													value="${memberinfo.email }" readonly></li>
											</ul>
											<div>
												<div
													class="dc-flex justify-content-between px-2 mb-4 is-only-member">
													<div
														class="dc-flex flex-column flex-grow-1 text-center click-effect-press">
														<img
															src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjciIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNyAyNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCN4anBrYjR1NTlhKSI+CiAgICAgICAgPHJlY3QgeD0iMi4zMzMiIHk9IjQuNTEiIHdpZHRoPSIxOS4wMTIiIGhlaWdodD0iMTkuNDkiIHJ4PSIyIiBmaWxsPSIjQzdFMEZGIi8+CiAgICAgICAgPHBhdGggZD0iTTE5Ljc3MyA2LjgzM2MtLjk3NS0uOTU4LTEuMDU3LTIuNTA2LS4xODMtMy40NGwxLjU5Ni0xLjcwNWMuODczLS45MzQgMi4zODUtLjkxNCAzLjM2LjA0My45NzQuOTU4IDEuMDU2IDIuNTA2LjE4MiAzLjQ0bC0xLjU5NiAxLjcwNmMtLjg3My45MzMtMi4zODUuOTE0LTMuMzYtLjA0NHoiIGZpbGw9IiM5NkM2RkYiLz4KICAgICAgICA8cGF0aCBkPSJtMTAuNDM4IDEzLjEyMS0yLjI0OCA1LjU4Yy0uMTMxLjMyNS4xODMuNjM2LjQ5Ni40ODhsNS4zNDgtMi41MzUtMy41OTctMy41MzZ2LjAwM3oiIGZpbGw9IiNGQkZDRkYiLz4KICAgICAgICA8cGF0aCBkPSJtOC42NDYgMTcuNTcyIDEuMTI1IDEuMTA1LTEuMjE1LjU3N2MtLjI2My4xMjUtLjUyOS0uMTM3LS40MTgtLjQxMWwuNTExLTEuMjY4LS4wMDMtLjAwM3oiIGZpbGw9IiM5NkM2RkYiLz4KICAgICAgICA8cGF0aCBkPSJtMjEuODY0IDMuMzY0LTEuMTk4LTEuMTc4LTEwLjIyOCAxMC45MzUgMS4xOTcgMS4xNzZMMjEuODY0IDMuMzY0eiIgZmlsbD0iI0I5RDVGRiIvPgogICAgICAgIDxwYXRoIGQ9Ik0yMy4wNjQgNC41MzkgMjEuODY3IDMuMzZsLTEwLjIzIDEwLjkzNCAxLjE5OCAxLjE3OCA1LjExNC01LjQ2NyA1LjExNS01LjQ2N3pNMjQuMjYgNS43MmwtMS4xOTctMS4xNzgtNS4xMTUgNS40NjctNS4xMTQgNS40NjcgMS4xOTcgMS4xNzdMMjQuMjYxIDUuNzJ6IiBmaWxsPSIjOUFDMkZGIi8+CiAgICA8L2c+CiAgICA8ZGVmcz4KICAgICAgICA8Y2xpcFBhdGggaWQ9InhqcGtiNHU1OWEiPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjZmZmIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSguMzMzKSIgZD0iTTAgMGgyNnYyNkgweiIvPgogICAgICAgIDwvY2xpcFBhdGg+CiAgICA8L2RlZnM+Cjwvc3ZnPgo="
															height="26px">
														<button
															class="color-grey-3 text-14 btn btn-outline-primary"
															id="myReview" type="button">나의 리뷰</button>
														<br>

													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
							</sec:authorize>
							<div class="blog-asside-right">
								<div
									class="panel panel-default sidebar-menu wow fadeInRight animated animated animated"
									style="visibility: visible; animation-name: fadeInRight;">
									<div class="panel-heading">
										<h3 class="panel-title">
											<sec:authorize access="isAuthenticated()">
												<button id="historyBtn" type="button"
													class="btn btn-outline-primary">예약내역</button>
												<br>
											</sec:authorize>
											<sec:authorize access="!isAuthenticated()">
												<button id="none-Member-history" type="button"
													class="btn btn-outline-primary">비회원 예약 조회</button>
												<br>
											</sec:authorize>
										</h3>
									</div>
								</div>
							</div>

							<sec:authorize access="isAuthenticated()">
								<div class="blog-asside-right">
									<div
										class="panel panel-default sidebar-menu wow fadeInRight animated animated animated"
										style="visibility: visible; animation-name: fadeInRight;">
										<div class="panel-heading">

											<h3 class="panel-title">
												<button id="updateinfoBtn" type="button"
													class="btn btn-outline-primary">회원정보 수정</button>
												<br>
												<button id="bookmark" type="button"
													class="btn btn-outline-primary">나의 관심 지점</button>
												<br>
											</h3>


										</div>
									</div>
								</div>
							</sec:authorize>
							<div class="blog-asside-right">
								<div
									class="panel panel-default sidebar-menu wow fadeInRight animated animated animated"
									style="visibility: visible; animation-name: fadeInRight;">
									<h3 class="panel-title">
										<button type="button" class="btn btn-outline-primary">1:1
											문의</button>
										<br>
										<sec:authorize access="isAuthenticated()">
											<button type="button" id="coupon"s
												class="btn btn-outline-primary">쿠폰 관리</button>
											<br>
											<button type="button" class="btn btn-outline-primary"
												name="deleteBtn" onclick="deleteMember()">회원탈퇴</button>
									</h3>
									</sec:authorize>

								</div>
							</div>
						</div>
					</div>

					<div class="blog-lst col-md-8 p0 " style="float: right;">
						<section id="id-100" class="post single">
							<div id="post-content"
								style="visibility: visible; animation-name: fadeInLeft;">

								
									<div class="">
										<h3>쿠폰 등록</h3>
										
									
											<form role="search">
										<div class="input-group">
											<input class="form-control" placeholder="검색어를 입력하세요" type="text" id="search">
											<span class="input-group-btn">
												<button type="button" class="btn btn-smal"><i class="fa fa-search"></i></button>
	                                        </span>
										</div>
									</form>
									<form role="search">
									<div class="col">
												<input class="form-control" id="vcdp_input_coupon_regist"
													placeholder="쿠폰코드를 입력해주세요" maxlength="20">
											</div>
											<div class="">
												<button class="btn btn-primary border-radius-6"
													id="vcdp_btn_coupon_regist" type="button">등록</button>
													
											</div>
										</form>
										<div class="form-row align-items-center">
										<form role="search">
											<div class="input-group">
											<input class="form-control" placeholder="쿠폰번호를 입력하세요" type="text" id="search">
											<span class="input-group-btn">
												<button type="button" class="btn btn-primary border-radius-6">등록</button>
	                                        </span>
											</div>
										
											
										</form>
										</div>
										<div class="dc-none" id="js_vcd_grade_coupon_issue_container"
											style="display: none;">
											<div class="mt-5 text-center">
												<div class="text-14">
													<img class="vertical-sub" id="js_vcd_user_grade_icon"
														style="width: 1rem; height: 1rem;"> <span
														class="font-weight-bold" id="js_vcd_user_nickname"></span>님의
													회원등급은 <span class="font-weight-bold"
														id="js_vcd_user_grade_name"></span>입니다.
												</div>
												<div class="text-14">
													등급 전용 쿠폰이 아직 <span class="font-weight-bold"
														id="js_vcd_user_remain_grade_coupon_cnt"></span><span
														class="font-weight-bold">개</span>나 남았으니 발급받고
												</div>
												<div class="text-14">저렴하게 이용해보세요 :)</div>
											</div>
											<div class="mt-4">
												<button class="btn btn-primary btn-block border-radius-6"
													id="js_vcd_btn_issue_grade_coupon" type="button">쿠폰발급</button>
											</div>
										</div>
									</div>
								
								<div
									class="coupon-item-container cm-rounded px-4 py-3 click-effect-press vcdp-coupon-list-item"
									data="8624134">
									<div class="dc-flex justify-content-between align-items-start">
										<div class="pb-2">
											<span class="badge badge-primary text-white font-weight-bold"
												id="cbc_grade"></span>
											<div class="pr-2">
												<div
													class="cbc-txt-coupon-title text-12 font-weight-bold color-grey-3 dc-inline">신규가입
													 15,000원 할인쿠폰</div>
												<div
													class="js-cbc-txt-coupon-dday ml-1 text-12 font-weight-bold color-red dc-inline">D-42</div>
											</div>
										</div>
										<button
											class="btn btn-sm btn-grey-7 my-1 js-cbc-btn-coupon-condition js-show-cbc-btn-coupon-condition">조건보기</button>
									</div>
									<div class="dc-flex align-items-baseline">
										<div
											class="cbc-txt-coupon-price text-32 font-weight-bold color-grey-2">15,000</div>
										<div
											class="cbc-txt-coupon-unit text-16 font-weight-bold color-grey-2 ml-1">원</div>
									</div>
									<div class="cbc-txt-coupon-rent-condition text-10 color-grey-5">350,000원
										이상 렌트 시</div>
									<div
										class="cbc-txt-coupon-expiration-date text-10 color-grey-5">~2023.06.11까지
										사용</div>
									<div class="cbc-btn-direct-reservation dc-none"
										style="display: none;">
										<hr>
										<div class="dc-flex justify-content-center align-items-center">
											<div
												class="ml-1 text-16 font-weight-bold js-direct-reservation-btnv js-move-direct-reservation">바로
												사용하기</div>
											<img class="m-0"
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIHN0cm9rZT0iIzBENkZGQyIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNOS41IDNsNSA1LTUgNU0xLjUgOGgxMyIvPgo8L3N2Zz4K">
										</div>
									</div>
								</div>
							</div>



						</section>

					</div>





				</div>
			</div>

		</div>
	</section>

	<jsp:include page="/WEB-INF/views/base/footer.jsp" />

	<script>
		
	
	
		$('#updateinfoBtn').on('click', function() {
			location.href="${pageContext.request.contextPath}/member/profile/update";
			
		});

		$('#historyBtn').on('click', function() {
			location.href="${pageContext.request.contextPath}/member/profile";
			
		});

		
		
		$('#none-Member-history').on('click',content);
		function content(){
			$.ajax({
				url:"${pageContext.request.contextPath}/profile/reservation",
				type: 'get',
				dataType:'json',
				success: function(result){
					
					memberResv(result);
					$('#hideRent').hide();
				},
				error: function(){
					alert("예약내역이 없습니다.");
				}
				
			});
		};
		
		function memberResv(result){
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
		

		
		
		//비회원 예약 조회
		function noMeberReser(){
			var username = $('#username').val();
			var phoneNumber = $('#phone').val();
			var reservationNumber = $('#reservationNumber').val();
	
			$.ajax({
				url:"${pageContext.request.contextPath}/profile/nonereservation",
				type: 'get',
				dataType:'json',
				data : {
						"name":username,
						"phoneNumber":phoneNumber,
						"paymentIdx":reservationNumber
				},
				success: function(result){
					getNoneResr(result);
					console.log(result);
					
				},
				error: function(){
					alert("예약내역이 없습니다.");
				}
				
			});
		}
		
		
		function getNoneResr(result){
			var noneList = result.noneReservation;
			var html = '';
			if(noneList == null) {
				html += '					<p style="text-align: center; font-size: large;"><strong>예약 정보가 없습니다.</strong></p><br>'
			} else {
				html += '				<div>'
				html += '					<h3>'+ result.selectNone.name +'님의 예약내역</h3>'
				html += '				</div>'
				html += '						<table>'
				html += '							<thead>'
				html += '							<tr>'
				html += '								<th scope="row">예약번호</th>'
				html += '								<th scope="row">예약시작날짜</th>'
				html += '								<th scope="row">예약상태</th>'
				html += '								<th scope="row">차종류</th>'
				html += '								<th scope="row">대여지점</th>'
				html += '								<th scope="row">반납지점</th>'
				html += '							</tr>'
				html += '							</thead>'
				html += '							<tbody>'
				html += '								<tr>'
				html += '									<td>' + noneList.idx + '</td>'
				html += '									<td>' + noneList.startDate + '</td>'
				html += '									<td>' + noneList.state + '</td>'
				html += '									<td>' + noneList.vehicleModel+ '</td>'
				html += '									<td>' + noneList.rentLocationName + '</td>'
				html += '									<td>' + noneList.returnLocationName + '</td>'
				html += '								</tr>'
				html += '							<tbody>'
				html += '							</table>'
			}
			$('#content').html(html);
			
		}
		

		function deleteMember(){
			
		Swal.fire({
			   title: '정말로 그렇게 하시겠습니까?',
			   text: '다시 되돌릴 수 없습니다. 신중하세요.',
			   icon: 'warning',
			   
			   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
			   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
			   cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
			   confirmButtonText: '승인', // confirm 버튼 텍스트 지정
			   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
			   
			   reverseButtons:false// 버튼 순서 거꾸로
			   
			}).then(result => {
			    if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
			    	delMember();
			    }
			});
		
		};
		
		function delMember(){
			var username = $('#username').val();
			console.log(username);
			$.ajax({
					url:"${pageContext.request.contextPath}/member/profile" ,
					type: "DELETE",
					data: {
						username:username
					},
					success : function(result) {
							if(result == 1){
							 Swal.fire('탈퇴성공  ', '탈퇴합니다 ', 'success');
							 location.href = '${pageContext.request.contextPath}/member/register';
			                	
							}else{
								swal.fire("실패", "작업수행에 실패하였습니다.", "warining");
							}
						},
							error : function() {
								swal.fire("에러입니다", "작업수행에 실패하였습니다.", "error");
						},
						timeout:100000
					});
				}
			
		
	
		$("#myReview").on("click", function(){
			location.href="${pageContext.request.contextPath}/myReview";
			
		});
				
					
				
		
	</script>
</body>
</html>