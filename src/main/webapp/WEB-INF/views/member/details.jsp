<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<spring:eval expression="@keyProperty['kakao-admin-key']" var="key"/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${key }"></script>
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
	margin-right: 50px;
	margin-left: 30px;

}


.inner-wrapper{
	margin: 0 0 8px;
	border-radius: 16px;
	box-shadow: 0 4px 14px 0 rgba(177, 177, 177, .2);
	background-color: #fff;
}
.reservation-List-content {
	margin: 0 0 8px;
	border-radius: 16px;
	box-shadow: 0 4px 14px 0 rgba(177, 177, 177, .2);
	background-color: #fff;
	padding:5px;
	margin-bottom: 15px;
}
ul{
list-style:none;
padding-left:40px;
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
															<input type="text" class="" name="name" value="${memberinfo.name }" readonly >
															<input type="hidden" class="" name="usernname" id="username" value="${memberinfo.username }" >
															<input type="hidden" class=""  value="${memberinfo.idx }" >
														</span>
													</h3>
												</div>
											</div>
											<div class="clear">
												<ul class="dealer-contacts">                                       
													<li>
														<i class="pe-7s-call strong"> </i>
														<input type="text" class="" name="phoneNumber" value="${memberinfo.phoneNumber}" readonly >
													</li>
													<li>
														<i class="pe-7s-mail strong"> </i> 
														<input type="text" class="" name="email" value="${memberinfo.email }" readonly >
													</li>
												</ul>
											<div>
												<div class="dc-flex justify-content-between px-2 mb-4 is-only-member">
													<div class="dc-flex flex-column flex-grow-1 text-center click-effect-press">
														<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjciIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNyAyNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCN4anBrYjR1NTlhKSI+CiAgICAgICAgPHJlY3QgeD0iMi4zMzMiIHk9IjQuNTEiIHdpZHRoPSIxOS4wMTIiIGhlaWdodD0iMTkuNDkiIHJ4PSIyIiBmaWxsPSIjQzdFMEZGIi8+CiAgICAgICAgPHBhdGggZD0iTTE5Ljc3MyA2LjgzM2MtLjk3NS0uOTU4LTEuMDU3LTIuNTA2LS4xODMtMy40NGwxLjU5Ni0xLjcwNWMuODczLS45MzQgMi4zODUtLjkxNCAzLjM2LjA0My45NzQuOTU4IDEuMDU2IDIuNTA2LjE4MiAzLjQ0bC0xLjU5NiAxLjcwNmMtLjg3My45MzMtMi4zODUuOTE0LTMuMzYtLjA0NHoiIGZpbGw9IiM5NkM2RkYiLz4KICAgICAgICA8cGF0aCBkPSJtMTAuNDM4IDEzLjEyMS0yLjI0OCA1LjU4Yy0uMTMxLjMyNS4xODMuNjM2LjQ5Ni40ODhsNS4zNDgtMi41MzUtMy41OTctMy41MzZ2LjAwM3oiIGZpbGw9IiNGQkZDRkYiLz4KICAgICAgICA8cGF0aCBkPSJtOC42NDYgMTcuNTcyIDEuMTI1IDEuMTA1LTEuMjE1LjU3N2MtLjI2My4xMjUtLjUyOS0uMTM3LS40MTgtLjQxMWwuNTExLTEuMjY4LS4wMDMtLjAwM3oiIGZpbGw9IiM5NkM2RkYiLz4KICAgICAgICA8cGF0aCBkPSJtMjEuODY0IDMuMzY0LTEuMTk4LTEuMTc4LTEwLjIyOCAxMC45MzUgMS4xOTcgMS4xNzZMMjEuODY0IDMuMzY0eiIgZmlsbD0iI0I5RDVGRiIvPgogICAgICAgIDxwYXRoIGQ9Ik0yMy4wNjQgNC41MzkgMjEuODY3IDMuMzZsLTEwLjIzIDEwLjkzNCAxLjE5OCAxLjE3OCA1LjExNC01LjQ2NyA1LjExNS01LjQ2N3pNMjQuMjYgNS43MmwtMS4xOTctMS4xNzgtNS4xMTUgNS40NjctNS4xMTQgNS40NjcgMS4xOTcgMS4xNzdMMjQuMjYxIDUuNzJ6IiBmaWxsPSIjOUFDMkZGIi8+CiAgICA8L2c+CiAgICA8ZGVmcz4KICAgICAgICA8Y2xpcFBhdGggaWQ9InhqcGtiNHU1OWEiPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjZmZmIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSguMzMzKSIgZD0iTTAgMGgyNnYyNkgweiIvPgogICAgICAgIDwvY2xpcFBhdGg+CiAgICA8L2RlZnM+Cjwvc3ZnPgo=" height="26px">
														<button
															class="color-grey-3 text-14 btn btn-outline-primary"
															id="myReview" type="button">나의 리뷰</button>
														<br>			</div>
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
										<button type="button" onclick="deleteMember()" class="btn btn-outline-primary">회원탈퇴</button>
										</sec:authorize>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="blog-lst col-md-8 p0 " style="float: right;">
					<section class="carmore-section">
						<div class="reservationList" style="padding-left:50px;" id="reservationList">
							<div class="js-vrsi-container bg-white bg-shadow p-3 rounded-sm mb-3">
								<div class="dc-flex justify-content-between align-items-center" style="margin-top:40px;">
									<div class="dc-flex align-items-center">
								
								
					
										<div class="infos-section">		
										
											<div class="reservation-List-content">				
												<ul class="tiket-list">
													<li>
														<div class="tiket-item coupon-item-container">
															<div class="tiket-item-header" style="padding-top:7px;">
																<strong class="txt-color-red" >예약번호 &nbsp; &nbsp; </strong>
																<strong class="txt-color-red" id="reservationIdx" >${reservation.idx } </strong>
																<p>${reservation.startDate} ~ ${reservation.endDate}</p>
															</div>
													<ul class="info-list">
														<li>
															<div class="cont box-between">
																<span class="tit">대여차량</span>
																<span>${reservation.vehicleModel }</span>
															</div>
														</li>
												<hr class="my-1">
												
												
												<li>
													<div class="cont box-between">
													<span class="tit">예약상태</span>
														<span><c:choose>
																<c:when test="${reservation.state eq 0 }">
																	<td>예약완료</td>
																</c:when>
																<c:when test="${reservation.state eq 1 }">
																	<td>취소 처리중</td>
																</c:when>
																<c:otherwise>
																	<td>취소 완료</td>
																</c:otherwise>
															</c:choose> </span>
													</div>
												</li>
												<li>
													<div class="cont box-between">
													<span class="tit">결제시간</span>
														<span>${reservation.paidTime  }</span>
													</div>
												</li>	
													<li>
													<div class="cont box-between">
														<span class="tit">결제금액</span>
														<span style="color: #109CFF;">${reservation.finalPrice  }  </span>
													</div>
												</li>												
											</ul>
										</div>
									</li>
								</ul>
								<sec:authorize access="hasRole('ROLE_USER')">
								<c:if test="${reservation.state eq 0 }">
							<div>
								<div
									class="js-vrsi-txt-write-review-desc mt-2 text-14 color-grey-5 text-center dc-none tmobi-dc-none"
									style="display: block;">리뷰를 남겨주세요! 최대 3천원 쿠폰을 드립니다:D
								</div>
								<div class="dc-none js-vrsi-container-bottom-btn" data-type="r">
									<button class="review-btn btn btn-sm btn-grey-7 btn-block text-16 mt-3">리뷰쓰기</button>
								</div>
							</div>
						</c:if>
						</sec:authorize>
						</div>
						</div>
					
					
					
					</div>
							
					
					
					
						<br>
						
						<div style="padding-right:10px; margin:10px;">
						<div class="js-vrsi-container-total-price js-vrsi-container-price-wrap ">
									운전자 정보
										<div class="color-blue box-between">
											<span class="text-12 font-weight-normal">이름</span>
											<span class="js-vrsi-txt-total-price text-16 font-weight-bold ml-1 font-300">${memberinfo.name }</span>
										</div>
										<div class="color-blue box-between">
											<span class="text-12 font-weight-normal">전화번호</span>
											<span class="js-vrsi-txt-total-price text-16 font-weight-bold ml-1 font-300">${memberinfo.phoneNumber }</span>
										</div>
									
								</div>
					<hr class="my-2">
					
					
					<div class="js-vrsi-container-total-price js-vrsi-container-price-wrap ">
									
										<div class="color-blue box-between">
											<span class="text-12 font-weight-normal">가입된 보험</span>
											<span class="js-vrsi-txt-total-price text-16 font-weight-bold ml-1 font-300">${reservation.insuranceName}보험</span>
										</div>
										
									
								</div>
						
					
					
					<hr class="my-2">
					
					
					<div class="js-vrsi-container-total-price js-vrsi-container-price-wrap ">
									결제정보
										<div class="color-blue box-between">
											<span class="text-12 font-weight-normal">대여요금</span>
											<span class="js-vrsi-txt-total-price text-16 font-weight-bold ml-1 font-300">${vehicle.price } 원</span>
										</div>
										<div class="color-blue box-between">
											<span class="text-12 font-weight-normal">할인적용</span>
											<span class="js-vrsi-txt-total-price text-16 font-weight-bold ml-1 font-300">${reservation.coupon } %</span>
										</div>
										<div class="color-blue box-between">
											<span class="text-12 font-weight-normal">총 결제요금</span>
											<span class="js-vrsi-txt-total-price text-16 font-weight-bold ml-1 font-300">${reservation.finalPrice } 원</span>
										</div>
										<div class="color-blue box-between">
											<span class="text-12 font-weight-normal">결제 시간</span>
											<span class="js-vrsi-txt-total-price text-16 font-weight-bold ml-1 font-300" >${reservation.paidTime }</span>
										</div>
									
								</div>
					
				
					<hr class="my-2">
		
					 	<section >
						<div>업체정보</div>
							<div >${location.name}</div>
						
						<div class="blog-lst col-md-12 " style="float: right;">
											<section id="id-100" style="margin-top:20px;" class="post single">
												<div id="map" style="width:100%; height:200px"></div>   
											</section>
										</div>
						<div >주소
						<div class="font-300" style="font-weight: 300;">${location.address}</div></div>
						<div >전화
						<div class="font-300" >${location.phoneNumber}</div></div>
						<div >영업시간
						<div class="font-300">${location.businessHours}</div></div>
					</section>
					
					<hr class="my-2">
					<c:if test="${reservation.state eq 0 }">
					<div class="text-center space-1 dc-none dc-lg-block" style="margin-bottom: 20px;">
						<button type="button" style="margin-bottom: 20px;" class="js-vpr-btn-go-main btn btn-wide btn-pill mx-auto px-6 btn-primary" id="delReserv-btn">예약 취소하기</button>
					</div>
					
				
					</c:if>		
					</div>	
					</div></div>
				</div>
							<div id="content" style="display:none; padding-top:70px;">
							  <div>
							  <div style="font-size:30px; text-align: center;">
							예약 취소 완료!! 
								</div>
								<br>
								<div style="font-size:20px; text-align: center;">
							결제 취소는 1~2일이내 처리됩니다.
							</div>
							<br>
							</div>
								<div class="infos-section" style="margin-top">		
										
											<div class="reservation-List-content">				
												<ul class="tiket-list">
													<li>
														<div class="tiket-item coupon-item-container">
															<div class="tiket-item-header" style="padding-top:7px;">
																<strong class="txt-color-red" >예약번호 &nbsp; &nbsp; </strong>
																<strong class="txt-color-red" id="reservationIdx" >${reservation.idx } </strong>
																<p>${reservation.startDate} ~ ${reservation.endDate}</p>
															</div>
													<ul class="info-list">
														<li>
															<div class="cont box-between">
																<span class="tit">대여차량</span>
																<span>${reservation.vehicleModel }</span>
															</div>
														</li>
												<hr class="my-1">
												
													<li>
													<div class="cont box-between">
														<span class="tit">환불금액</span>
														<span style="color: #109CFF;">${reservation.finalPrice  }  </span>
													</div>
												</li>												
											</ul>
										</div>
									</li>
								</ul>
								
						</div>
						</div>
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
		
	$('.review-btn').on('click', function() {
		var idx = '<c:out value="${reservation.vehicleIdx}"/>';
		location.href='${pageContext.request.contextPath}/carlist/' + idx;
	});
	
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(${location.latitude} , ${location.longitude}), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		var imageSrc = 'https://cdn-icons-png.flaticon.com/512/5695/5695641.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(65, 72), // 마커이미지의 크기입니다
		imageOption = {offset: new kakao.maps.Point(27, 69)}; 
		 
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		markerPosition = new kakao.maps.LatLng(37.49640072828634, 127.02725329040501)
		 
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [
		    {
		        content: '<div>차자조 강남점</div>', 
		        latlng: new kakao.maps.LatLng(37.49640072828634, 127.02725329040501)
		    },
		    {
		        content: '<div>차자조 용산점</div>', 
		        latlng: new kakao.maps.LatLng(37.529538323634696, 126.96746826066268)
		    },
		    {
		        content: '<div>차자조 수원점</div>', 
		        latlng: new kakao.maps.LatLng(37.264552267986566, 126.99859642936599)
		    },
		    {
		        content: '<div>차자조 일산점</div>',
		        latlng: new kakao.maps.LatLng(37.66835722957077, 126.75113514893188)
		    },
		    {
		        content: '<div>차자조 송도점</div>',
		        latlng: new kakao.maps.LatLng(37.395677541772194, 126.63883623016922)
		    }
		];
		
		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng ,// 마커의 위치
		        image: markerImage
		    });
		
		    // 마커에 표시할 인포윈도우를 생성합니다 
		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });
		
		    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
		    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		}
		
		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}
		
		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}

	
	$('#delReserv-btn').on('click', function() {
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
			    	deleteReservation();
			    } else{
			    	 Swal.fire('예약 삭제를 취소합니다 ', '다시 시도하세요 ', 'error');
				    	
			    }
		})

	})
	
	
	function deleteReservation(){
		
		var index = '<c:out value="${reservation.idx}"/>';
		$.ajax({
			url:'${pageContext.request.contextPath}/profile/reservation/' + index ,
			type:'delete',
			success:function(result){
				if(result == 1){
					   	Swal.fire('예약 취소가 접수되었습니다 ', ' 취소완료까지 영업일 기준 3일 정도 소요될 수 있습니다 . ', 'success');
						  $('#reservationList').hide();
						  $('#content').show();
				}else{
					 Swal.fire('예약 삭제 실패 ', '다시 시도하세요 ', 'error');
							
				}	
				},
				error:function(){
					alert("실패");
				}
			});
		
		
	}
			    
	

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
							swal.fire({
				      			title : "탈퇴완료",
				      			 text: '차자조 렌트카를 이용해 주셔서 감사합니다',
				      		    icon  : "success",
				      		    closeOnClickOutside : false
				      		}).then(function(){
				      			location.href='${pageContext.request.contextPath}/logout';
				      		});	
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
			
	function deleteMember(){
		
		Swal.fire({
			title: '정말로 탈퇴하시겠습니까?',
			   text: '탈퇴하시면 회원 전용 서비스를 이용할 수 없습니다',
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
		
	
	</script>
</body>
</html>
