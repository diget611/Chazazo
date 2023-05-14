<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지</title>
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
.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0,0,0,0.4);
}

.modal-content {
  background-color: #fff;
  margin: 15% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  position: relative;
}

.close {
  color: #aaa;
  position: absolute;
  top: 0;
  right: 0;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
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
cursor:pointer;
}
body{
color:black;
}

</style>
</head>
<body >
	<jsp:include page="/WEB-INF/views/base/header.jsp" />

	<script type="text/javascript">
	function moveRent(){
		location.href="../carlist";
	}
	
	
	
	</script>
	
	


	<section>
		<div class="content-area blog-page padding-top-40"
			style="background-color: #FCFCFC; padding-bottom: 300px;">
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
							<sec:authorize access="hasRole('ROLE_ADMIN')">
							
							
								<section class="carmore-section p-0 bg-white cm-rounded bg-shadow mb-3">
									<div>
										<div class="pt-4 position-relative" id="js_mypage_top_info">
											<div
												class="dc-flex justify-content-between align-items-center pb-3 pt-lg-0 pt-2">
												<div class="dc-flex align-items-start pr-2">
													<div>
														<div
															class="js-mypage-btn-login is-only-none-member click-effect-press">
															<div class="color-grey-3 wordbreak-breakword" style="font-size:26px;"> 관리자입니다. </div>
														</div>
													</div>
												</div>
											</div>
											<br>
											<div>
												<div class="mb-3" id="js_mypage_btn_pc_login"
													style="display: block;">
													<a href="<%=request.getContextPath()%>/logout"
														class="js-mypage-btn-login btn btn-primary btn-block max-w-lg-40rem mx-auto click-effect-press">
														회원으로 돌아가기</a>

												</div>
											</div>
										</div>
									</div>
								</section>
							
							</sec:authorize>

							<sec:authorize access="hasRole('ROLE_USER')">
								<div class="">
									<div class="inner-wrapper">


										<div class="clear">
											<div class="col-xs-8 col-sm-8 ">
												<h3 class="dealer-name">
													<span> <input type="text" class="" name="name"
														value="${memberinfo.name } 님" readonly> <input
														type="hidden" class="f" name="usernname" id="username"
														value="${memberinfo.username }"> <input
														type="hidden" class="" value="${memberinfo.idx }">
													</span>
												</h3>
											</div>
										</div>
										<div class="clear">
											<ul class="dealer-contacts">
												<li><i class="pe-7s-call strong"> </i> <input
													type="text" class="" name="phoneNumber"
													value="${memberinfo.phoneNumber}" readonly></li>
												<li><i class="pe-7s-mail strong"> </i> <input
													type="text" class="" name="email"
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
											<sec:authorize  access="hasRole('ROLE_USER')">
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
								<sec:authorize  access="hasRole('ROLE_USER')">
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
										<button type="button" id="request"
											class="btn btn-outline-primary">1:1 문의</button>
										<br>
										<sec:authorize  access="hasRole('ROLE_USER')">
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

									<div id="hideRent">
									
									
										<c:if test="${empty reservation }">
											<p style="text-align: center; font-size: large;">
												<img src="<%=request.getContextPath()%>/resources/img/rentcar.png" width="200" height="200" style=" max-width: 100%;height: auto;">
												<strong> 진행 중인 렌트 내역이 없습니다 !!</strong>
											</p>
											<br>
											<button
												class="js-mypage-btn-go-car-list btn btn-outline-primary btn-block max-w-lg-40rem mx-auto py-1"
												onclick="moveRent();">렌트하러 가기</button>
										</c:if>
										
										<sec:authorize access="hasRole('ROLE_USER')">
										<c:if test="${!empty reservation }">
										<div>
										<p>${memberinfo.name } 님이 현재 예약하신 내역입니다 !
										</p>
									</div>
									</c:if>
									<div class="infos-section">		
										<c:forEach items="${reservation }" var="list">	
											<div class="reservation-List-content">				
												<ul class="tiket-list">
													<li>
														<div class="tiket-item coupon-item-container">
															<div class="tiket-item-header" style="padding-top:7px;">
																<strong class="txt-color-red">예약번호 &nbsp; &nbsp; ${list.idx } </strong>
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
														<span style="background-color: skyblue; border-radius: 10px;"> 
														<c:choose>
																<c:when test="${list.state eq 0 }">
																	<td>&nbsp;예약완료&nbsp;</td>
																</c:when>
																<c:when test="${list.state eq 1 }">
																	<td>취소 처리중</td>
																</c:when>
																<c:otherwise>
																	<td>취소 완료</td>
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
							<c:if test="${!empty reservation }">
										
							
							<sec:authorize access="isAuthenticated()">
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
										<button type="button" class="btn btn-secondary disabled" id="nextBtn">&gt&gt</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn btn-secondary" id="nextBtn">&gt&gt</button>	
									</c:otherwise>
								</c:choose>
							</div>
									</sec:authorize>		
									</c:if>
									</div>
										<div id="content">
										</div>
									
									<hr class="my-2">
	
									<section class="carmore-section pb-0" id="js_mypage_section_notice" style="display: block; color:#777777;">
										
										
										<div class="color-blue box-between">
											<div class="pt-2 pb-3 text-50 color-grey-3" style="font-size:20px; font-style: italic;">차자조 공지사항</div>
											<a href="<%=request.getContextPath()%>/notice">더보기</a>
										</div>
										<br>
										<div style="cursor:pointer;">
											<c:forEach var="notice" items="${noticeList}">
											    <div class="title">${notice.title}</div>
											</c:forEach>
										</div>
											<!-- 모달 창-->
											<div id="myModal" class="modal">
											    <div class="modal-content">
											        <span class="close">&times;</span>
											        <h2 id="modalTitle"></h2>
											        <p id="modalContent">
											        <c:forEach var="notice" items="${noticeList}">
											         <div class="content">${notice.content}</div>
											        </c:forEach>
											        </p>
											    </div>
											</div> 
										
									</section>


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
				
			
		$('#bookmark').on('click', function() {
			location.href='${pageContext.request.contextPath}/profile/favorites';
		});
		$('#request').on('click', function() {
			location.href='${pageContext.request.contextPath}/request';
		});
		
		
		$(document).ready(function() {
		    // title 클릭 시 모달 창 띄우기
		    $(".title").click(function() {
		        var title = $(this).text();
		        var content = $(this).next().text();
		        $("#modalTitle").text(title);
		        $("#modalContent").text(content);
		        $("#myModal").css("display", "block");
		    });

		    // 모달 창 닫기
		    $(".close").click(function() {
		        $("#myModal").css("display", "none");
		    });
		});



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
		
	
		$('#none-Member-history').on('click',content);
		
		function content(){
			$.ajax({
				url:"${pageContext.request.contextPath}/profile/reservation",
				type: 'get',
				dataType:'json',
				success: function(result){
					
					$('#hideRent').hide();
					memberResv(result);
  	          
					var test = "${pageContext.request.contextPath}/resources/js/validation.js";
                	$('.footer-copy').after('<script src="' + test + '"/>');
                	
				},
				error: function(){
					 Swal.fire('경고창', '작업수행에 실패하였습니다. ', 'error');
				}
				
			});
		};
		function memberResv(result){
			var html = '';
			if(result == 1){
				html += '			<h4>비회원 예약조회</h4>';
				html += '			<form >';
				html += '			<div class="form-group">';
				html += '				<label>운전자 이름</label> <input type="text" class="form-control" id ="name" name="name" placeholder="성명을 입력해 주세요">';
				html += '				</div>';
				html += '				<div class="form-group">';
				html += '					<label>예약번호</label> <input type="text" class="form-control"';
				html += '						name="reservationCode" placeholder="예약번호를 입력해 주세요" id="reservationCode">';
				html += '				</div>';
				html += '				<div class="form-group">';
				html += '					<label>전화번호</label> ';
				html += '	<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="전화번호를 입력해 주세요" required>';
				html += '				</div>';
				html += '				<div class="text-center">';	
				html += '					<button type="button" class="btn btn-default" name = "noneMember" onclick="noMeberReser()">예약 조회하기</button>';
				html += '				</div>';
				html += '			</form>';
			
			}	
			$('#content').html(html);
		}
		
		
		
		function checkForm(){
			let testReservationCode = /^[0-9]*$/;
			let testName = /^[가-힣]{2,10}$/;
			let testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
			
			 if( $('[name=name]').val() == ''
			| $('[name=phoneNumber]').val() == '' | $('[name=reservationCode]').val() == '') {
				 Swal.fire('모두 입력해주세요', '다시입력' ,'error');
				return false;
			} else if(!testName.test($('[name=name]').val()) | !testPhone.test($('[name=phoneNumber]').val()) 
					|  !testReservationCode.test($('[name=reservationCode]').val()) ) {
				Swal.fire('모두 입력해주세요', '다시입력' ,'error');
				return false;		
			} else {
				return true;
			}
		}
	

		//비회원 예약 조회
		function noMeberReser(){
			
			if(!checkForm()){
				return;
			}
			
			
			var name = $('#name').val();
			var phoneNumber = $('#phoneNumber').val();
			var reservationCode = $('#reservationCode').val();
	
			$.ajax({
				url:"${pageContext.request.contextPath}/profile/nonereservation",
				type: 'get',
				dataType:'json',
				data : {
						"name":name,
						"phoneNumber":phoneNumber,
						"paymentIdx":reservationCode
				},
				success: function(result){
					
					if(result == 1){
						Swal.fire('예약내역이 없습니다', '입력하신 정보를 다시 확인해주세요',   'error');
					}else{
					getNoneResr(result);
					}
				},
				error: function(){
					Swal.fire('경고',  '다시 입력해주세요', 'error');
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
						html += '					<h3>'+ noneList.name +'님의 예약내역</h3>';
						html += '				</div>'
						html += '		<div class="infos-section" style="margin-top">	';		
						html += '			<div class="reservation-List-content">		';		
						html += '				<ul class="tiket-list">';
						html += '					<li>';
						html += '						<div class="tiket-item coupon-item-container"';
						html += '							<div class="tiket-item-header" style="padding-top:7px;">';
						html += '								<strong class="txt-color-red" >예약번호 &nbsp; &nbsp; </strong>';
						html += '								<strong class="txt-color-red" id="reservationIdx" >'+ noneList.idx  +'</strong>';
						html += '									<p>'+ noneList.startDate +' ~ '+noneList.endDate+'</p>';
						
						html += '								</div>';
						html += '									<ul class="info-list">';
						html += '									<li>';
						html += '									<div class="cont box-between">';
						html += '										<span class="tit">대여차량</span>';
						html += '										<span>'+noneList.vehicleModel +'</span>';
						html += '									</div>';
						html += '									</li>';
						html += '										<hr class="my-1">';
						html += '									<li>';
						html += '										<div class="cont box-between">';
						html += '										<span class="tit">예약상태</span>';
									if (noneList.state === 0) {			
						html += '  										<span style="color: #109CFF; border-radius: 10px;">예약완료</span>';
									} else if (noneList.state === 1) {
						html += '  										<span style="color:red; color:white; border-radius: 10px;">취소대기중</span>';
									}
						html +=  ' 										 <span style="color:red; border-radius: 10px;">예약취소</span>';
							       
						html += '									 </div>	';
						html += '									</li>';
						html += '									<li>';				
						html += '										<div class="cont box-between">';
						html += '											<span class="tit">결제금액</span>';
						html += '											<span style="color: #109CFF;">'+noneList.finalPrice  +' </span>';
						html += '										</div>	';
						html += '										</li>												';
						html += '									</ul>		';
						html += '								</div>';
						html += '								</li>		';
						html += '							</ul>';
						html += '							</div>';
						html += '							</div>';
					
			}
			$('#content').html(html);
			
			$('li').on('click', function() {
				
				var reservationIdx = $(this).find('#reservationIdx').text().trim(); // 예약번호 값 추출
				
					location.href = "${pageContext.request.contextPath}/profile/reservation/" + reservationIdx; 
				});
			
		}
		
		$('[name=pageBtn]').on('click', function() {
			let page = $(this).val();
			location.href="${pageContext.request.contextPath}/member/profile?page=" + page;
		})
		
		$('#preBtn').on('click', function() {
			
			let page =  ${pagination.currentPage};
			if(page - 1 == 0) page = 1;
			else page--;
		
			location.href="${pageContext.request.contextPath}/member/profile?page=" + page;
	 	})
		
	 	
		$("#nextBtn").on('click', function() {
		
			
			let page =  ${pagination.paging};
			if(page + 1 > ${pagination.paging}) page = ${pagination.paging};
			else page++;
			
			location.href="${pageContext.request.contextPath}/member/profile?page=" + page;
		
		})
		
	
	</script>
</body>
</html>