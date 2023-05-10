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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/popup.css">
<style>
.coupon-item-container {
	margin: 0 0 8px;
	border-radius: 16px;
	box-shadow: 0 4px 14px 0 rgba(177, 177, 177, .2);
	background-color: #fff;
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
										<button type="button" id="request" class="btn btn-outline-primary">1:1
											문의</button>
										<br>
										<sec:authorize access="isAuthenticated()">
											<button type="button" id="coupon" s
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
									<h3>할인 쿠폰</h3>
									
								<div class="infos-section">	
									<div class="box-between">
									<p class="txt-align">
										<span class="icon talk-small"></span> 할인쿠폰을 등록하시면 결제 시 사용하실 수 있습니다. 
									</p>								
									<button  onclick="openForm()" type="button" class="btn-normal black layer-mypage-open" id="popupBtn" data-layer="layer-registCoupon">
									할인쿠폰 등록하기 <span class="icon coupon"></span>
									</button>								
									</div>
								</div>
																	
							
						<div id="myForm" style="display:none;">				
						<form  name="defaultFrm" action="<%=request.getContextPath() %>/registerCoupon" method="post">
						<div class="layer-wrap layer-popup layer-mypage layer-registCoupon active" style="top: 293px; left: 298px; opacity: 0;">
							<div class="pop-inner">
								<div class="popup-top">
									<h4>할인쿠폰 등록</h4>
									<button type="button" class="layer-popup-close" data-layer="layer-registCoupon" onclick="closeForm()"><i class="fa-light fa-circle-x"></i>닫기 버튼</button>
								</div>
								<div class="popup-cont layer-iscroll">
									<div class="iscroll-in">
					
										<div class="form-cont">
											<div class="form-row">
												<div class="input-tit">
													<label for="input01">쿠폰 번호</label>
												</div>
												<div class="input-cont">
													<div class="inputT">
														<input id="couponCode" type="text" name="couponNo" >
													</div>
												</div>
											</div>
										</div>
										<ul class="lst dot">
											<li>발급받으신 쿠폰 번호를 입력해주세요.</li>
											<li>쿠폰 등록 후 기간, 혜택, 사용조건 등을 꼭 확인하세요.</li>
											<li>알파벳 O 와 숫자 0 을 명확히 구분하여 입력하세요.</li>
											<li>전화 예약 시, 이용권 번호를 말씀해 주시면 적용해 드립니다.</li>
										</ul>
					
									</div>
									<div class="popup-cont-bot-btns">
										<button type="button" class="btn btn-white layer-popup-close" data-layer="layer-registCoupon" onclick="closeForm()">취소</button>		
										<button type="button" class="btn btn-blue layer-popup-close" data-layer="layer-registCoupon" onclick="registerCoupon();">등록</button>		
									</div>
								</div>
							</div>
						</div>
						</form>
						</div>		
			
									
								</div>
		
							<div>
								<p style="font-size: large;"><strong> 쿠폰 목록</strong></p>
								 <c:if test="${empty couponList }">
									<p style="text-align: center; font-size: large;">
										<strong> 보유한 쿠폰이 없습니다 </strong>
									</p>
									<br>
								</c:if>
								<p> 보유한 쿠폰 수 : ${countCoupon } 개 	</p>
							
							</div>
							</div>
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
		location.href='<%=request.getContextPath()%>/profile/history';
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
			
		
		function openForm() {
		  document.getElementById("myForm").style.display = "block";
		}
		
		function closeForm() {
		  document.getElementById("myForm").style.display = "none";
		}
				
		
		
		
			function registerCoupon(){ 
			var couponCode = $('#couponCode').val();
			console.log(couponCode);
			$.ajax({
				url:"${pageContext.request.contextPath}/registerCoupon" ,
				type: "POST",
				data:{"couponCode": couponCode},
				success:function(result){
						if(result==1){
							swal.fire({
				      			title : "쿠폰등록완료!",
				      			 text: '쿠폰이 성공적으로 등록되었습니다 :)',
				      		    icon  : "success",
				      		    closeOnClickOutside : false
				      		}).then(function(){
				      			location.reload();
				      		});
						}else{
							swal.fire({
				      			title : "쿠폰등록실패",
				      			 text: '쿠폰 번호를 다시 입력하세요',
				      		    icon  : "error",
				      		    closeOnClickOutside : false
				      		})
							
							
						}
						},
				error: function(){
					alert("쿠폰등록실패")
				}
				
			})
		}
		
		

	</script>
</body>
</html>