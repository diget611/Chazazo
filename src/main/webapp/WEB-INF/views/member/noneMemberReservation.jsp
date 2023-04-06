<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>비회원 예약 확인</title>
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
</head>
<body>
	<jsp:include page="../header.jsp" />

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
						<div class="blog-asside-right">
							<div
								class="panel panel-default sidebar-menu wow fadeInRight animated animated animated"
								style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">
										<button id="historyBtn" type="button"
											class="btn btn-outline-primary">예약내역</button>
										<br>
										<button type="button" class="btn btn-outline-primary">예약
											수정 / 취소</button>
										<br>
										<button type="button" class="btn btn-outline-primary">비회원
											예약 확인</button>
									</h3>
								</div>
							</div>
						</div>
						<div class="blog-asside-right">
							<div
								class="panel panel-default sidebar-menu wow fadeInRight animated animated animated"
								style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">
										<button type="button" class="btn btn-outline-primary">1:1
											문의</button>
										<br>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="blog-lst col-md-8 p0 " style="float: right;">
					<section id="id-100" class="post single">
						<h4>비회원 예약조회</h4>
						<form>
							<div class="form-group">
								<label>운전자 이름</label> <input type="text" class="form-control"
									name="name" placeholder="성명을 입력해 주세요">
								<div class="invalid-feedback"
									id="vsnmr_input_driver_name_invalid_msg"
									style="display: block;">이름을 입력해 주세요</div>
							</div>
							<div class="form-group">
								<label>예약번호</label> <input type="text" class="form-control"
									name="reservationNumber">
								<div class="invalid-feedback"
									id="vsnmr_input_reserv_num_invalid_msg">예약번호를 입력해 주세요</div>
								<small class="color-blue">예약번호는 문자와 메일로 보내드린 예약내용에 재되어
									있습니다.</small>
							</div>
							<div class="form-group">
								<label>전화번호</label> <input type="text" id="phone" name="phone"
									required>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-default">예약 조회하기</button>
							</div>
						</form>
					</section>
					<div class="mypage-section pt-4"
						id="mypage_section_none_member_search" style="">

						<section class="carmore-section dc-none"
							id="vsnmr_section_search_result">
							<div class="wrapper-md">
								<div class="container">

									<div class="dc-none" id="vsnmr_container_search_result">
										<div
											class="js-vrsi-container bg-white bg-shadow p-3 rounded-sm mb-3">
											<div
												class="dc-flex justify-content-between align-items-center">
												<div class="dc-flex align-items-center">
													<div
														class="square-30 bg-color-grey-7 dc-flex justify-content-center align-items-center rounded-circle">
													</div>
													<div
														class="js-vrsi-txt-rent-type text-12 color-grey-2 ml-1"></div>
												</div>
												<div class="text-12 color-grey-2">
													<span>예약번호&nbsp;</span><span
														class="js-vrsi-txt-reserv-num font-weight-bold"></span>
												</div>
											</div>
											<hr class="my-2">
											<div class="dc-flex align juaenter">
												<div
													class="text-16 font-weight-bold color-grey-2 vreserv-car-model-name"></div>
												<div class="ml-1">
													<span
														class="badge-state badge-state-reserv-complete dc-none badge badge-primary">예약완료</span><span
														class="badge-state badge-state-driving dc-none badge badge-primary">대여중</span><span
														class="badge-state badge-state-return dc-none badge badge-dark">반납완료</span><span
														class="badge-state badge-state-cancel dc-none badge badge-dark">취소/환불</span><span
														class="badge-state badge-state-early-return-req dc-none badge badge-warning">조기반납
														신청중</span><span
														class="badge-state badge-state-contract-terminated dc-none badge badge-danger">계약종료</span><span
														class="badge-state badge-state-extend dc-none badge badge-primary ml-2">연장</span><span
														class="badge-state badge-state-reserv-waiting dc-none badge badge-primary">예약확정
														중</span><span
														class="badge-state badge-state-reserv-applying dc-none badge bg-color-grey-6 text-white">예약접수</span>
												</div>
											</div>
											<div class="vreserv-txt-rent-period text-14 color-grey-2">&nbsp;</div>
											<div
												class="js-vrsi-txt-branch-name text-14 color-grey-5 mt-1"></div>
											<hr class="my-2">
											<div class="js-vrsi-container-pay-method dc-none mb-1">
												<div
													class="dc-flex justify-content-between pay-type-container">
													<div class="color-grey-2 font-weight-bold">결제수단</div>
													<div class="dc-flex">
														<div
															class="js-vrsi-txt-pay-type-name text-14 color-grey-2 ml-2"></div>
													</div>
												</div>
											</div>
											<div
												class="js-vrsi-container-total-price js-vrsi-container-price-wrap dc-none">
												<div class="dc-flex justify-content-end mt-1">
													<div class="color-blue">
														<span class="text-12 font-weight-normal">총 결제 금액</span><span
															class="js-vrsi-txt-total-price text-16 font-weight-bold ml-1">&nbsp;</span>
													</div>
												</div>
											</div>
											<div
												class="js-vrsi-container-subscribe-prices js-vrsi-container-price-wrap dc-none">
												<div class="dc-flex justify-content-end">
													<div class="color-blue">
														<span class="text-12 font-weight-normal">첫 달 결제</span><span
															class="js-vrsi-txt-subscribe-first-month-price text-16 font-weight-bold ml-1">&nbsp;</span>
													</div>
												</div>
												<div
													class="js-vrsi-monthly-price dc-flex justify-content-end dc-none">
													<div class="color-grey-3">
														<span class="text-12 font-weight-normal">월 납부 금액</span><span
															class="js-vrsi-txt-monthly-price text-16 font-weight-bold ml-1">&nbsp;</span>
													</div>
												</div>
											</div>
											<div
												class="js-vrsi-container-total-price-by-overseas-api js-vrsi-container-price-wrap dc-none">
												<div class="dc-flex justify-content-end mt-1">
													<div class="color-blue">
														<span class="text-12 font-weight-normal">총 금액</span><span
															class="js-vrsi-txt-total-price-by-overseas-api text-16 font-weight-bold ml-1">&nbsp;</span>
													</div>
												</div>
												<div
													class="dc-flex justify-content-end align-items-center color-grey-3 text-12">
													<div class="dc-flex">
														온라인 결제&nbsp;<span
															class="js-vrsi-txt-online-price font-weight-bold"></span>
													</div>
													<div class="dc-flex js-vrsi-txt-poa-price-wrap dc-none">
														&nbsp;/&nbsp;현장 결제
														<div class="font-weight-bold ml-1">
															<span class="js-vrsi-txt-poa-price"></span>
														</div>
													</div>
												</div>
											</div>
											<div class="dc-none js-vrsi-container-bottom-btn"
												data-type="c">
												<button
													class="js-vrsi-btn-call btn btn-sm btn-grey-7 btn-block text-16 mt-3">전화</button>
											</div>
											<div class="dc-none js-vrsi-container-bottom-btn"
												data-type="r">
												<button
													class="js-vrsi-btn-write-review btn btn-sm btn-grey-7 btn-block text-16 mt-3">리뷰쓰기</button>
											</div>
											<div class="dc-none js-vrsi-container-bottom-btn"
												data-type="cr">
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
												class="js-vrsi-txt-write-review-desc mt-2 text-14 color-grey-5 text-center dc-none tmobi-dc-none">리뷰를
												남겨주세요! 최대 3천원 쿠폰을 드립니다:D</div>
										</div>
									</div>
									<div class="text-center color-grey-4 space-2"
										id="vsnmr_container_search_empty">
										<p>조회 결과가 없습니다.</p>
									</div>
								</div>
							</div>
						</section>
					</div>

				</div>

			</div>
		</div>
	</section>





	<jsp:include page="../footer.jsp" />

	<script>
	
		$('#historyBtn').on('click', function() {
			location.href='<%=request.getContextPath()%>/profile/reservation';
		});
		$('#loginBtn').on('click', function() {
			location.href='<%=request.getContextPath()%>/member/login';
		});
	</script>
</body>
</html>