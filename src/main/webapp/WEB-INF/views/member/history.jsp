<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8">
<title>예약 내역 조회</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
<script
	src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/main.css">
<style>
table {
	border-top: 1px solid black;
	text-align: center;
	width: 100%;
	cursor:pointer;
	
}

th {
	text-align: center;
	border-bottom: 1px solid black;
}

td {
	border-bottom: 1px solid black;
}

tbody tr:hover {
	background-color: #f1f3f5;
}
.input-info{
  border: none;
  outline: none;
  backgroud-color:rgb(255, 255, 255);
  
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

							<sec:authorize access="isAuthenticated()">
								<div class="dealer-content">
									<div class="inner-wrapper">


										<div class="clear">
											<div class="col-xs-8 col-sm-8 ">
												<h3 class="dealer-name">
													<span> 
													<input type="text" class="input-info"
														name="name" value="${memberinfo.name } 님" readonly>
														<input type="hidden" class="input-info" name="usernname"
														id="username" value="${memberinfo.username }">
														 <input
														type="hidden" class="input-info form-control"
														value="${memberinfo.idx }">
													</span>
												</h3>
											</div>
										</div>
										<div class="clear">
											<ul class="dealer-contacts">
												<li>
													<i class="pe-7s-call "> </i> 
													<input type="text" class="input-info" name="phoneNumber" value="${memberinfo.phoneNumber}" readonly></li>
												<li>
												<i class="pe-7s-mail strong" style="margin-right: 8px;"> </i>
												 <input type="text" class="input-info" name="email" value="${memberinfo.email }" readonly></li>
											</ul>
											<div>
												<div class="dc-flex justify-content-between px-2 mb-4 is-only-member">
													<div class="dc-flex flex-column flex-grow-1 text-center click-effect-press">
														<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjciIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNyAyNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCN4anBrYjR1NTlhKSI+CiAgICAgICAgPHJlY3QgeD0iMi4zMzMiIHk9IjQuNTEiIHdpZHRoPSIxOS4wMTIiIGhlaWdodD0iMTkuNDkiIHJ4PSIyIiBmaWxsPSIjQzdFMEZGIi8+CiAgICAgICAgPHBhdGggZD0iTTE5Ljc3MyA2LjgzM2MtLjk3NS0uOTU4LTEuMDU3LTIuNTA2LS4xODMtMy40NGwxLjU5Ni0xLjcwNWMuODczLS45MzQgMi4zODUtLjkxNCAzLjM2LjA0My45NzQuOTU4IDEuMDU2IDIuNTA2LjE4MiAzLjQ0bC0xLjU5NiAxLjcwNmMtLjg3My45MzMtMi4zODUuOTE0LTMuMzYtLjA0NHoiIGZpbGw9IiM5NkM2RkYiLz4KICAgICAgICA8cGF0aCBkPSJtMTAuNDM4IDEzLjEyMS0yLjI0OCA1LjU4Yy0uMTMxLjMyNS4xODMuNjM2LjQ5Ni40ODhsNS4zNDgtMi41MzUtMy41OTctMy41MzZ2LjAwM3oiIGZpbGw9IiNGQkZDRkYiLz4KICAgICAgICA8cGF0aCBkPSJtOC42NDYgMTcuNTcyIDEuMTI1IDEuMTA1LTEuMjE1LjU3N2MtLjI2My4xMjUtLjUyOS0uMTM3LS40MTgtLjQxMWwuNTExLTEuMjY4LS4wMDMtLjAwM3oiIGZpbGw9IiM5NkM2RkYiLz4KICAgICAgICA8cGF0aCBkPSJtMjEuODY0IDMuMzY0LTEuMTk4LTEuMTc4LTEwLjIyOCAxMC45MzUgMS4xOTcgMS4xNzZMMjEuODY0IDMuMzY0eiIgZmlsbD0iI0I5RDVGRiIvPgogICAgICAgIDxwYXRoIGQ9Ik0yMy4wNjQgNC41MzkgMjEuODY3IDMuMzZsLTEwLjIzIDEwLjkzNCAxLjE5OCAxLjE3OCA1LjExNC01LjQ2NyA1LjExNS01LjQ2N3pNMjQuMjYgNS43MmwtMS4xOTctMS4xNzgtNS4xMTUgNS40NjctNS4xMTQgNS40NjcgMS4xOTcgMS4xNzdMMjQuMjYxIDUuNzJ6IiBmaWxsPSIjOUFDMkZGIi8+CiAgICA8L2c+CiAgICA8ZGVmcz4KICAgICAgICA8Y2xpcFBhdGggaWQ9InhqcGtiNHU1OWEiPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjZmZmIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSguMzMzKSIgZD0iTTAgMGgyNnYyNkgweiIvPgogICAgICAgIDwvY2xpcFBhdGg+CiAgICA8L2RlZnM+Cjwvc3ZnPgo="
															height="26px">
														<button class="color-grey-3 text-14 btn btn-outline-primary"
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
										<button type="button" id="request" class="btn btn-outline-primary">1:1
											문의</button>
										<br>
										<sec:authorize access="isAuthenticated()">
											<button id="coupon" type="button"
												class="btn btn-outline-primary">쿠폰 관리</button>
											<br>
											<button class="btn btn-outline-primary" name="deleteBtn"
												onclick="deleteMember()">회원탈퇴</button>
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
								<div id="mypage_none_rent_history"
									style="display: block; margin-top: 100px;">
									<div class="mypage-section" id="mypage_section_rent_history"
										style="">
										<section class="carmore-section pt-0 mobile-header-container">
											<div class="container">
												<h3 class="mt-0 pt-3">예약내역</h3>
												<select class="custom-select custom-select-sm"
													id="rentHistorySelect" name="rentHistorySelect">
													<option value="0" selected="selected">전체</option>
													<option value="1">예약완료</option>
													<option value="2">취소대기</option>
													<option value="3">취소완료</option>
												</select>
											</div>
										</section>
									<hr class="my-2">
						
											<div class="container">
												<div class="" id="rent_history_container_exist"
													style="display: none;">
													<h3>히스토리</h3>
													<div id="js_rent_history_container_list"></div>
													<div class="dc-none" id="js_rent_history_template">
														<div
															class="js-vrsi-container bg-white bg-shadow p-3 rounded-sm mb-3">
															<div
																class="dc-flex justify-content-between align-items-center">
																<div class="dc-flex align-items-center">
																	<div
																		class="square-30 bg-color-grey-7 dc-flex justify-content-center align-items-center rounded-circle">
																		<img class="icon-16 js-vrsi-img-rent-type"
																			src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMi4yNzMgNy41MyAzLjQyIDMuODk3QzMuNTkgMy4zNjMgNC4wOCAzIDQuNjMyIDNoNi43MzZjLjU1MyAwIDEuMDQyLjM2MyAxLjIxMS44OThsMS4xNDggMy42MzFjMC0uMzU3LjI4NS0uNjQ3LjYzNy0uNjQ3LjM1MSAwIC42MzYuMjkuNjM2LjY0N2EuNjQyLjY0MiAwIDAgMS0uNjM2LjY0N3YzLjg4M2EuNjQyLjY0MiAwIDAgMS0uNjM3LjY0N3YuNjQ3YS42NDIuNjQyIDAgMCAxLS42MzYuNjQ3aC0uNjM2YS42NDIuNjQyIDAgMCAxLS42MzctLjY0N3YtLjY0N0g0LjE4MnYuNjQ3YS42NDIuNjQyIDAgMCAxLS42MzcuNjQ3SDIuOTFhLjY0Mi42NDIgMCAwIDEtLjYzNi0uNjQ3di0uNjQ3YS42NDIuNjQyIDAgMCAxLS42MzctLjY0N1Y4LjE3N0EuNjQyLjY0MiAwIDAgMSAxIDcuNTI5YzAtLjM1Ny4yODUtLjY0Ny42MzYtLjY0Ny4zNTIgMCAuNjM3LjI5LjYzNy42NDdoMTEuNDU0SDIuMjczem0yLjU0NSAxLjYxN2MwIC41MzYtLjQyOC45Ny0uOTU1Ljk3YS45NjMuOTYzIDAgMCAxLS45NTQtLjk3YzAtLjUzNi40MjctLjk3Ljk1NC0uOTcuNTI3IDAgLjk1NS40MzQuOTU1Ljk3em03LjMxOC45N2EuOTYzLjk2MyAwIDAgMCAuOTU1LS45Ny45NjMuOTYzIDAgMCAwLS45NTUtLjk3Ljk2My45NjMgMCAwIDAtLjk1NS45N2MwIC41MzYuNDI4Ljk3Ljk1NS45N3pNNi4wOSA5LjQ3Mkg5Ljkxdi42NDdINi4wOVY5LjQ3eiIgZmlsbD0iIzk5OSIvPgo8L3N2Zz4K">
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
																<div class="text-16 font-weight-bold color-grey-2 vreserv-car-model-name"></div>
																<div class="ml-3">
																	<span class="badge-state badge-state-reserv-complete dc-none badge badge-primary">예약완료</span>
																	<span class="badge-state badge-state-return dc-none badge badge-dark">취소대기</span>
																	<span class="badge-state badge-state-cancel dc-none badge badge-dark">취소/환불</span>
																</div>
															</div>
															<div class="vreserv-txt-rent-period text-14 color-grey-2">&nbsp;</div>
															<div
																class="js-vrsi-txt-branch-name js-budget-summarized-hide text-14 color-grey-5 mt-1"></div>
															<hr class="my-2">
															<div class="js-vrsi-container-pay-method dc-none mb-1">
																<div
																	class="dc-flex justify-content-between pay-type-container">
																	<div class="color-grey-2 font-weight-bold">결제수단</div>
																	<div class="dc-flex align-items-center">
																		<img class="js-vrsi-img-pay-type-icon pay-type-icon">
																		<div
																			class="js-vrsi-txt-pay-type-name text-14 color-grey-2 ml-2"></div>
																	</div>
																</div>
															</div>
															<div
																class="js-vrsi-container-total-price js-vrsi-container-price-wrap dc-none">
																<div class="dc-flex justify-content-end mt-1">
																	<div class="color-blue">
																		<span class="text-12 font-weight-normal">총 결제
																			금액</span><span
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
																		<span class="text-12 font-weight-normal">월 납부
																			금액</span><span
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
															
																	
																</div>
															</div>
															<div
																class="js-vrsi-txt-write-review-desc mt-2 text-14 color-grey-5 text-center dc-none tmobi-dc-none">리뷰를
																남겨주세요! 최대 3천원 쿠폰을 드립니다:D</div>
														</div>
													</div>
													
												</div>
												
											</div>
										
									</div>
									<div id="hideRent">
										<c:if test="${empty reservation }">
											<p style="text-align: center; font-size: large;">
												<strong> 진행 중인 렌트 내역이 없습니다 !!</strong>
											</p>
											<br>
											<button
												class="js-mypage-btn-go-car-list btn btn-outline-primary btn-block max-w-lg-40rem mx-auto py-1"
												onclick="moveRent();">렌트하러 가기</button>
										</c:if>
										<sec:authorize access="hasRole('ROLE_USER')">
											<table>
												<thead>
													<tr>
														<th scope="row">예약</th>
														<th scope="row">예약시작날짜</th>
														<th scope="row">예약상태</th>
														<th scope="row">차종류</th>
														<th scope="row">대여지점</th>
														<th scope="row">반납지점</th>
													</tr>
												</thead>
												<tbody >
													<c:forEach items="${reservation }" var="list">
														<tr>
															<td>${list.idx }</td>
															<td>${list.startDate }</td>
															 <td>${list.state == 0 ? "예약완료" : (list.state == 1 ? "취소대기" : "취소완료")}</td>
    								 						<td>${list.vehicleModel }</td>
															<td>${list.rentLocationName }</td>
															<td>${list.returnLocationName }</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</sec:authorize>


									</div>
									</section>
									<div id="selectRes">
									
									
									</div>
									<button id="change" type="button"></button>
									<div id="content"></div>
									<hr class="my-2">

									<section class="carmore-section pb-0"
										id="js_mypage_section_notice" style="display: block;">

										<div class="feat-list">
											<div class="panel-group">
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class=" collapsed" data-toggle="collapse"
															data-target="#fqa0" aria-expanded="false">공지사항</h4>
													</div>
													<div id="fqa0" class="panel-collapse fqa-body collapse"
														aria-expanded="false" style="height: 0px;">
														<div class="panel-body">공지사항1</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title fqa-title collapsed"
															data-toggle="collapse" data-target="#fqa1"
															aria-expanded="false">공지사항 2</h4>
													</div>
													<div id="fqa1" class="panel-collapse fqa-body collapse"
														aria-expanded="false" style="height: 0px;">
														<div class="panel-body">공지사항 2</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title fqa-title collapsed"
															data-toggle="collapse" data-target="#fqa2"
															aria-expanded="false">공지사항 3</h4>
													</div>
													<div id="fqa2" class="panel-collapse fqa-body collapse"
														aria-expanded="false" style="height: 0px;">
														<div class="panel-body">공지사항 3</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title fqa-title collapsed"
															data-toggle="collapse" data-target="#fqa3"
															aria-expanded="false">자주 묻는 질문 제목 4</h4>
													</div>
													<div id="fqa3" class="panel-collapse fqa-body collapse"
														aria-expanded="false" style="height: 0px;">
														<div class="panel-body">자주 묻는 질문 내용 테스트 4</div>
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




	<jsp:include page="/WEB-INF/views/base/chat.jsp" />
	<jsp:include page="/WEB-INF/views/base/footer.jsp" />

	<script>
		$('.main-nav').children().eq(2).children().css('color', '#18B4E9');
		
		$("#myReview").on("click", function(){
			location.href="${pageContext.request.contextPath}/myReview";
			
		});
		
		$('#historyBtn').on('click', function() {
			location.href='${pageContext.request.contextPath}/profile/history';
		});
	
		$('#updateinfoBtn').on('click', function() {
			location.href='${pageContext.request.contextPath}/member/profile/update';
			
		});

		$('#request').on('click', function() {
			location.href='<%=request.getContextPath()%>/request';
		});
		

		$("#myReview").on("click", function(){
			location.href="${pageContext.request.contextPath}/myReview";
			
		});

		$("#coupon").on("click", function(){
			location.href="${pageContext.request.contextPath}/coupon";
			
		});
		
	
		$('#bookmark').on('click', function() {
			location.href='<%=request.getContextPath()%>/profile/favorites';
		});
		
		$('tr').on('click', function() {
			var sss = $(this).children(1).eq(0).text();
			
			location.href = "${pageContext.request.contextPath}/profile/reservation/" + sss; 
		});
				

	
	 $(document).ready(function(){
			 $("#rentHistorySelect").change(function() {
				    var value = $(this).val();
				    if (value == "1") {
				      $("tbody tr td:nth-child(3)").each(function() {
				        var state = $(this).text();
				        if (state == "예약완료") {
				          $(this).parent().show();
				        } else {
				          $(this).parent().hide();
				        }
				      });
				    } else if (value == "2") {
				      $("tbody tr td:nth-child(3)").each(function() {
				        var state = $(this).text();
				        if (state == "취소대기") {
				          $(this).parent().show();
				        } else {
				          $(this).parent().hide();
				        }
				      });
				    } else if (value == "3") {
					      $("tbody tr td:nth-child(3)").each(function() {
					        var state = $(this).text();
					        if (state == "취소완료") {
					          $(this).parent().show();
					        } else {
					          $(this).parent().hide();
					        }
					      });
				    } else {
				      $("tbody tr").show();
				    }
				  });
				});
		 
		 
</script>


</body>
</html>
