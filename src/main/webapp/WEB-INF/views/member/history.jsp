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

.input-info{
  border: none;
  outline: none;
  backgroud-color:rgb(255, 255, 255);
  
}
.inner-wrapper {
	margin: 0 0 8px;
	border-radius: 16px;
	box-shadow: 0 4px 14px 0 rgba(177, 177, 177, .2);
	background-color: #fff;
}
.box-between{
	display: flex;
	align-items: center;
	justify-content: space-between;

	margin-left: 10px;

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
margin-right: 30px;
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
											<div class="">
												<h3 class="mt-0 pt-3">예약내역</h3>
												<select class="custom-select custom-select-sm"
													id="rentHistorySelect" name="rentHistorySelect">
													<option value="4">전체</option>
													<option value="0">예약완료</option>
													<option value="1">취소대기</option>
													<option value="2">취소완료</option>
												</select>
											</div>
										</section>
									<hr class="my-2">
						
													
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
										<div class="infos-section">		
										<c:forEach items="${reservation }" var="list">	
											<div class="reservation-List-content">				
												<ul class="tiket-list">
													<li>
														<div class="tiket-item coupon-item-container">
															<div class="tiket-item-header" style="padding-top:7px;">
																<strong class="txt-color-red" >예약번호 &nbsp; &nbsp; </strong>
																<strong class="txt-color-red" id="reservationIdx" >${list.idx } </strong>
																<p>${list.returnLocationName }</p>
															</div>
													<ul class="info-list">
														<li>
															<div class="cont box-between">
																<span class="tit">대여차량</span>
																<span>${list.vehicleModel }</span>
															</div>
														</li>
												<hr class="my-1">
												<li>
													<div class="cont box-between">
													<span class="tit">결제시간</span>
														<span>${list.paidTime  }</span>
													</div>
												</li>	
												
												<li>
													<div class="cont box-between">
													<span class="tit">예약상태</span>
														<span style="margin:2px;">
														<c:choose>
																<c:when test="${list.state eq 0 }">
																	<span style="background-color: skyblue;  border-radius: 10px;" >&nbsp;&nbsp;예약완료&nbsp;&nbsp;</span>
																</c:when>
																<c:when test="${list.state eq 1 }">
																	<span style="background-color: red; color:white; border-radius: 10px;">&nbsp;&nbsp;취소 처리중&nbsp;&nbsp;</span>
																</c:when>
																<c:otherwise>
																	<span  style="background-color: red; color:black; border-radius: 10px;">&nbsp;취소 완료&nbsp;</span>
																</c:otherwise>
															</c:choose>  </span>
													</div>
												</li>
													<li>
													<div class="cont box-between">
														<span class="tit">반납지점</span>
														<span>${list.returnLocationName }  </span>
													</div>
												</li>												
											</ul>
										</div>
									</li>
								</ul>
								</div>
							</c:forEach>
						</div>
										
										</sec:authorize>			
										<div style='text-align: center;	margin-top: 10px;'>
									<c:choose>
										<c:when test="${pagination.currentPage eq 1 }">
											<button type="button" class="btn btn-secondary disabled" id="preBtn">&lt&lt</button>
										</c:when>
										<c:otherwise>
											<button type="button" class="btn btn-secondary" id="preBtn">&lt&lt</button>	
										</c:otherwise>
									</c:choose>
									<c:forEach begin="${pagination.startPage }" end="${pagination.endPage }" step="1" var="page">
										<c:choose>
											<c:when test="${pagination.currentPage eq page }">
												<button type="button" name="pageBtn" class="btn btn-secondary active" value="${page }">${page }</button>
											</c:when>
											<c:otherwise>
													<button type="button" name="pageBtn" class="btn btn-secondary" value="${page }">${page }</button>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								<c:choose>
									<c:when test="${pagination.currentPage eq pagination.paging }">
										<button type="button" class="btn btn-secondary disabled" name="nextBtn">&gt&gt</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn btn-secondary" name="nextBtn">&gt&gt</button>	
									</c:otherwise>
								</c:choose>
							</div>
										


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
	

	$(document).ready(function() {
		  // selectbox 엘리먼트를 가져옵니다.
		  const selectbox = document.getElementById('rentHistorySelect');

		  // URL 매개변수에서 선택된 값을 가져옵니다.
		  const urlParams = new URLSearchParams(window.location.search);
		  const selectedValue = urlParams.get('state');

		  // 선택된 값이 있는 경우, selectbox를 업데이트합니다.
		  if (selectedValue) {
		    selectbox.value = selectedValue;
		  }

		  // selectbox 값이 변경될 때마다, URL 매개변수를 업데이트합니다.
		  selectbox.addEventListener('change', (event) => {
		    const value = event.target.value;
		    const url = new URL(window.location);
		    url.searchParams.set('page', '1');
		    url.searchParams.set('state', value);
		    window.location.href = url;
		  });
		});
		
		
		$('.main-nav').children().eq(2).children().css('color', '#18B4E9');
		
		
		
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
		
		$('li').on('click', function() {
		
		var reservationIdx = $(this).find('#reservationIdx').text().trim(); // 예약번호 값 추출
		
			location.href = "${pageContext.request.contextPath}/profile/reservation/" + reservationIdx; 
		});
				

	
	
	 
		$('[name=pageBtn]').on('click', function() {
		
			var urlStr = window.location.href;
			var url = new URL(urlStr);
			var urlparams = url.searchParams;
			 var value = urlparams.get('state');
			 if(value == null) {
				 value = '4';
			 }
			 
			let page = $(this).val();
			
			location.href="${pageContext.request.contextPath}/profile/history?page=" + page +"&&state=" + value ;
		})
		
		
		
		$('#preBtn').on('click', movePrev);
		
		function movePrev() {
	
			var urlStr = window.location.href;
			var url = new URL(urlStr);
			var urlparams = url.searchParams;
			 var value = urlparams.get('state'); 
			 if(value == null) {
				 value = '4';
			 }
			let page = ${pagination.currentPage};
			
			
			if(page - 1 == 0) page = 1;
			else page--;
			
			location.href="${pageContext.request.contextPath}/profile/history?page=" + page +"&&state=" + value ;
	 	}
		
		$("[name=nextBtn]").on('click', moveNext);
		
		function moveNext() {
			
		var urlStr = window.location.href;
		var url = new URL(urlStr);
		var urlparams = url.searchParams;
		 var value = urlparams.get('state');
		 if(value == null) {
			 value = '4';
		 }
		
		
			let page = ${pagination.currentPage};
			if(page + 1 > ${pagination.paging}) page = ${pagination.paging};
			else page++;
			
			location.href="${pageContext.request.contextPath}/profile/history?page=" + page +"&&state=" + value ;
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
			

		
			
		 
</script>


</body>
</html>
