<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지</title>
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
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
<style type="text/css">
.bg-shadow, .filter-section {
    box-shadow: 0 7px 18px -6px rgba(65,78,118,.1);
}

.cover{
	display: flex;
    justify-content: space-between;
    align-items: center;
}
.box-between{
	display: flex;
	align-items: center;
	justify-content: space-between;

}


</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp" />

	<script type="text/javascript">
	function moveRent(){
		location.href="../carlist";
	}
	function moveNoneMemberReservation(){
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
						
							<div class="dealer-content">
								<div class="inner-wrapper">
									
									<sec:authorize access="isAuthenticated()">
									<div>
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
								</sec:authorize>
										
									
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
													<a href="<%=request.getContextPath()%>/member/login"
														class="js-mypage-btn-login btn btn-primary btn-block max-w-lg-40rem mx-auto click-effect-press">가입
														/ 로그인 하기</a>

												</div>
											</div>
										</div>
									</div>
								</section>

							</sec:authorize>	
								</div>
							
							</div>
						
						<div class="blog-asside-right">
							<div
								class="panel panel-default sidebar-menu wow fadeInRight animated animated animated"
								style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">
										<button id="historyBtn" type="button"
											class="btn btn-outline-primary">예약내역</button>
										<br>

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
										<button type="button" class="btn btn-outline-primary">나의
											관심 지점</button>
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
								<div class="panel-heading">
									<h3 class="panel-title">
										<button type="button" id="request" class="btn btn-outline-primary">1:1
											문의</button>
										<br>
										<sec:authorize access="isAuthenticated()">
										<button id="coupon" type="button" class="btn btn-outline-primary">쿠폰
											관리</button>
										<br>
										<button type="button" class="btn btn-outline-primary">회원탈퇴</button>
										</sec:authorize>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="blog-lst col-md-8 p0 " style="float: right;">
					<section class="carmore-section">
						<div class="reservationList" id="reservationList">
							<div class="js-vrsi-container bg-white bg-shadow p-3 rounded-sm mb-3">
								<div class="dc-flex justify-content-between align-items-center">
									<div class="dc-flex align-items-center">
										<div
											class="square-30 bg-color-grey-7 dc-flex justify-content-center align-items-center rounded-circle">
											</div>
									</div>
									<div class="text-12 color-grey-2">
										<span>예약번호&nbsp;</span><span
											class="js-vrsi-txt-reserv-num font-weight-bold">${reservation.idx }</span>
									</div>
								</div>
								<hr class="my-2">
								<div class="dc-flex align juaenter">
									<div
										class="text-16 font-weight-bold color-grey-2 vreserv-car-model-name">${reservation.vehicleModel }</div>
									<div class="ml-1">
											<c:choose>
																<c:when test="${reservation.state eq 0 }">
																	<span class="badge-state badge-state-reserv-complete badge badge-primary"
											style="display: none;">예약완료</span>
																</c:when>
																<c:otherwise>
																	<span class="badge-state badge-state-cancel dc-none badge badge-dark"
											style="display: none;">취소/환불</span>
																</c:otherwise>
												</c:choose>
										<span
											class="badge-state badge-state-reserv-complete badge badge-primary"
											style="">예약완료</span><span
											class="badge-state badge-state-driving dc-none badge badge-primary"
											style="display: none;">대여중</span><span
											class="badge-state badge-state-return dc-none badge badge-dark"
											style="display: none;">반납완료</span><span
											class="badge-state badge-state-cancel dc-none badge badge-dark"
											style="display: none;">취소/환불</span><span
											class="badge-state badge-state-early-return-req dc-none badge badge-warning"
											style="display: none;">조기반납 신청중</span><span
											class="badge-state badge-state-contract-terminated dc-none badge badge-danger"
											style="display: none;">계약종료</span><span
											class="badge-state badge-state-extend dc-none badge badge-primary ml-2"
											style="display: none;">연장</span><span
											class="badge-state badge-state-reserv-waiting dc-none badge badge-primary"
											style="display: none;">예약확정 중</span><span
											class="badge-state badge-state-reserv-applying dc-none badge bg-color-grey-6 text-white"
											style="display: none;">예약접수</span>
									</div>
								</div>
								
								<div
									class="js-vrsi-txt-branch-name js-budget-summarized-hide text-14 color-grey-5 mt-1">${reservation.startDate} ~ ${reservation.endDate}</div>
								<hr class="my-2">
								<div class="js-vrsi-container-pay-method mb-1">
									<div class="dc-flex justify-content-between pay-type-container">
										<div class="color-grey-2 font-weight-bold">결제수단</div>
										<div class="dc-flex align-items-center">
											
											<div
												class="js-vrsi-txt-pay-type-name text-14 color-grey-2 ml-2">카카오페이</div>
										</div>
									</div>
								</div>
								<div class="js-vrsi-container-total-price js-vrsi-container-price-wrap box-between">
									
										<div class="color-blue">
											<span class="text-12 font-weight-normal">총 결제 금액</span>
											<span class="js-vrsi-txt-total-price text-16 font-weight-bold ml-1">${vehicle.price }</span>
										</div>
									
								</div>
								
							
								<div class="dc-none js-vrsi-container-bottom-btn" data-type="c"
									style="display: none;">
									<button
										class="js-vrsi-btn-call btn btn-sm btn-grey-7 btn-block text-16 mt-3">전화</button>
								</div>
								<div class="dc-none js-vrsi-container-bottom-btn" data-type="r"
									style="display: none;">
									<button
										class="js-vrsi-btn-write-review btn btn-sm btn-grey-7 btn-block text-16 mt-3">리뷰쓰기</button>
								</div>
								<div class="dc-none js-vrsi-container-bottom-btn" data-type="cr"
									style="display: none;">
									<div
										class="dc-flex justify-content-between align-items-center mt-3 text-16">
										<div class="w-50 mr-1">
											<button
												class="js-vrsi-btn-call btn btn-sm btn-grey-7 btn-block">전화</button>
										</div>
										<div class="w-50 ml-1">
											<button
												class="js-vrsi-btn-write-review btn btn-sm btn-grey-7 btn-block">리뷰쓰기</button>
												
										</div>
									</div>
								</div>
								<div
									class="js-vrsi-txt-write-review-desc mt-2 text-14 color-grey-5 text-center dc-none tmobi-dc-none"
									style="display: none;">리뷰를 남겨주세요! 최대 3천원 쿠폰을 드립니다:D
								</div>
							</div>
							
					
					
					<section >
						<div>
							<div>운전자 정보</div>
							
								<div>이름</div>
								<div>${memberinfo.name }</div>
							
							
							<div>전화번호</div>
							<div>${memberinfo.phoneNumber }</div>
							
						</div>
					
					</section>
					<hr class="my-2">
					<section >
						<div>
							<div>가입된 보험</div>
								<div>${reservation.insuranceName}</div>
						</div>
					
					</section>
					
					<hr class="my-2">
					
					<section>
						<div>결제정보</div>
						
						
						<div>대여요금</div>
							<div>${reservation.finalPrice }</div>
						<div>할인적용</div>
						<hr class="my-2">
						<div>총 결제요금</div>
							
						<div>결제 시간</div>
							<div>${reservation.paidTime }</div>
						
					</section>
					<hr class="my-2">
					<section >
						<div>업체정보</div>
					
						<div >업체이름
							<div>${location.name}</div>
						</div>
						<div >주소
						<div>${location.address}</div></div>
						<div >전화
						<div >${location.phoneNumber}</div></div>
						<div >영업시간
						<div>${location.businessHours}</div></div>
					</section>
					<hr class="my-2">
					<c:if test="${reservation.state eq 0 }">
					<div class="text-center space-1 dc-none dc-lg-block">
						<button type="button" class="js-vpr-btn-go-main btn btn-wide btn-pill mx-auto px-6 btn-primary" id="delReserv-btn">예약 취소하기</button>
					</div>
					<div class="text-center space-1 dc-none dc-lg-block">
						<button type="button" class="js-vpr-btn-go-main btn btn-wide btn-pill mx-auto px-6 btn-primary" id="review-btn">리뷰 쓰러가기</button>
					</div>
					<div class="dc-none js-vrsi-container-bottom-btn" data-type="r">
					<button class="js-vrsi-btn-write-review btn btn-sm btn-grey-7 btn-block text-16 mt-3">리뷰쓰기</button>
					</div>
					</c:if>			
							</div>
							<div id="content" style="display:none;">
							<!--  
							<div class="infos-section">		
							<c:forEach items="${couponList }" var="coupon">					
							<ul class="tiket-list">
									<li>
										<div class="tiket-item coupon-item-container">
											<div class="tiket-item-header">
												<strong class="txt-color-red">${coupon.rate }% 할인</strong>
												<p>${coupon.name }</p>
											</div>
											<ul class="info-list">
												<li>
													<span class="tit">쿠폰번호</span>
													<div class="cont">
														<span>${coupon.couponCode }</span>
													</div>
												</li>
												<li>
													<span class="tit">유효기간</span>
													<div class="cont">
														<span>${coupon.startDate } ~ ${coupon.expireDate } </span>
													</div>
												</li>											
											</ul>
										</div>
									</li>
								</ul>
							</c:forEach>
						</div>
							-->
							예약 취소 완료!! 
							결제 취소는 1~2일이내 처리됩니다.
							</div>
					</section>
				</div>
			</div>
			
		</div>
		
	</section>
	
	<jsp:include page="/WEB-INF/views/base/chat.jsp"/>
	<jsp:include page="/WEB-INF/views/base/footer.jsp" />

	<script>
		$('.main-nav').children().eq(2).children().css('color', '#18B4E9');

		$('#historyBtn').on('click', function() {
			location.href='${pageContext.request.contextPath}/profile/history';
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
			location.href='<%=request.getContextPath()%>/profile/favorites';
		});
		
	$('#review-btn').on('click', function() {
		var idx = '<c:out value="${reservation.vehicleIdx}"/>';
		location.href='${pageContext.request.contextPath}/carlist/' + idx;
	});
	
	$('#delReserv-btn').on('click', function() {
		var index = '<c:out value="${reservation.idx}"/>';
		$.ajax({
			url:'${pageContext.request.contextPath}/profile/reservation/' + index ,
			type:'delete',
			success:function(result){
				if(result == 1){
					
					Swal.fire({
						   title: '예약 취소',
						   text: '정말로 예약을 취소하시겠습니까?',
						   icon: 'warning',
						   
						   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
						   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
						   cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
						   confirmButtonText: '확인', // confirm 버튼 텍스트 지정
						   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
						   
						   reverseButtons:false// 버튼 순서 거꾸로
						   
						}).then(result => {
						    if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
						    //	$('#hideReser').hide();
						   	//	canclePay();
						    	Swal.fire('예약 취소가 접수되었습니다 ', ' 취소완료까지 영업일 기준 3일 정도 소요될 수 있습니다 . ', 'success');
						    	$('#reservationList').hide();
						    	$('#content').show();
						    	
						     }else{
						    	 Swal.fire('예약 삭제를 취소합니다 ', '다시 시도하세요 ', 'error');
						    	
						    }
						});
					 
		             
				}else{
					 Swal.fire('예약 삭제 실패 ', '다시 시도하세요 ', 'error');
							
				}	
				},
				error:function(){
					alert("실패");
				}
			});
	});

	
	
			
			
	
	
	</script>
</body>
</html>

