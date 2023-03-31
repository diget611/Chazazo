<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>나의 관심 지점</title>
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
						<div class="dealer-widget  row-md-4">
							<div class="dealer-content">
								<div class="inner-wrapper">
									<div class="clear">
										<div class="col-xs-8 col-sm-8 ">
											<h3 class="dealer-name">
												<span>김땡땡</span>
											</h3>
										</div>
									</div>
									<div class="clear">
										<ul class="dealer-contacts">
											<li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
											<li><i class="pe-7s-mail strong"> </i>
												email@yourcompany.com</li>
											<li><i class="pe-7s-map-marker strong"> </i> 주소주소</li>
										</ul>
										<p>Duis mollis blandit tempus porttitor curabiturDuis
											mollis blandit tempus porttitor curabitur , est non…</p>
									</div>
								</div>
							</div>
						</div>
						<div class="blog-asside-right">
							<div
								class="panel panel-default sidebar-menu wow fadeInRight animated animated animated"
								style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">
										<button type="button" class="btn btn-outline-primary">예약내역</button>
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
										<button id="updateinfoBtn" type="button" class="btn btn-outline-primary">회원정보 수정</button>
											<button type="button" class="btn btn-outline-primary">나의 관심 지점</button><br>
										<br>
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
										<button type="button" class="btn btn-outline-primary">쿠폰
											관리</button>
										<br>
										<button type="button" class="btn btn-outline-primary">회원탈퇴</button>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="blog-lst col-md-8 p0 " style="float: right;">
					<div class="mypage-body-cont">
						<div class="mypage-body-cont-header">
							<div class="tit-area">
								<h4 class="tit">나의 관심 지점</h4>
							</div>
						</div>
						<div class="top-guide-section">
							<div class="box-between">
								<ul class="lst dot">
									<li>나의 관심 지점은 최대 5개까지 등록할 수 있습니다.</li>
									<li>렌터카 예약 시, ‘나의 지점’ 선택을 통해 빠른 지점 선택이 가능합니다.</li>
								</ul>
								<a href="/hp/kor/info/allBranchArea.do?mnCd=T2FN050301"
									class="btn-normal black">전국지점안내 전체보기</a>
							</div>
						</div>
						<div class="infos-section">




							<!-- 관심 지점이 없을 경우 -->
							<div class="result-none">등록 된 나의 관심 지점이 없습니다.</div>




							<!-- 관심 지점이 있을 경우 -->
							<ul class="branch-info-list">

								<li>
									<p class="tit">가산디지털</p>
									<div class="cont">
										<ul class="info-list">
											<li><span class="info-tit">영업시간</span>
												<div class="info-cont">
													<span><button type="button" class="accorSpotBtn"
															data-target="accorSpotCont0" data-on="true"
															data-siblings="true">24시간 스마트키박스 운영 (00:00 ~
															24:00) 당일예약 가능시간 08:30 ~ 16:00</button></span>
												</div></li>
											<li><span class="info-tit">주소</span>
												<div class="info-cont">
													<span>서울시 금천구 가산동 459-11 B106호</span>
												</div></li>
											<li><span class="info-tit">전화번호</span>
												<div class="info-cont">
													<span>02-3664-8000</span>
												</div></li>
										</ul>
										<div class="btns">
											<button type="button" class="btn-auto line-red"
												onclick="locationRentReserv('421','1','');">실시간 예약</button>
											<button type="button" class="btn-auto line-black"
												onclick="setBranchInfo('421');">자세히보기</button>
											<button type="button" class="btn-auto black"
												onclick="delFn('421','01')">삭제</button>
										</div>
									</div>
								</li>

							</ul>




						</div>
					</div>

				</div>
			</div>
		</div>
	</section>

	<jsp:include page="../footer.jsp" />

	<script>
		$('#updateinfoBtn').on('click', function() {
			location.href='<%=request.getContextPath()%>/profile/reservation';
		});
	</script>
</body>
</html>