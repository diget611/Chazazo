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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />

<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/modernizr-2.6.2.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery-1.10.2.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/garoestate/bootstrap/js/bootstrap.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-select.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-hover-dropdown.js"></script>
<script	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/easypiechart.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery.easypiechart.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>
<script	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>

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
									<div class="clear">
												<div class="col-xs-8 col-sm-8 ">
													<h3 class="dealer-name">
														<span>		
															<input type="text" class="form-control" name="name" value="${memberinfo.name }" readonly >
														
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
						<div class="blog-asside-right">
							<div
								class="panel panel-default sidebar-menu wow fadeInRight animated animated animated"
								style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">
										<button id="historyBtn" type="button" class="btn btn-outline-primary">예약내역</button>
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
										<button id="updateinfoBtn" type="button" class="btn btn-outline-primary">회원정보 수정</button>
										<br>
										<button type="button" class="btn btn-outline-primary">나의 관심 지점</button><br>
										
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
										<button type="button"  id="request" class="btn btn-outline-primary">1:1
											문의</button>
										<br>
										<button  id="coupon" type="button" class="btn btn-outline-primary">쿠폰
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
									<li>렌터카 예약 시, ‘나의 지점’ 선택을 통해 빠른 지점 선택이 가능합니다.</li>
								</ul>
								
								<hr class="my-2">
								
								<a href="#" id="totalLocation"
									class="btn-normal black">전국지점안내 전체보기</a>
							</div>
						</div>
						<div class="infos-section">




							<!-- 관심 지점이 없을 경우 -->
							<c:if test="${empty favLocation }">
							<div class="result-none">등록 된 나의 관심 지점이 없습니다.
							</div>
							</c:if>
							
							<div>
				
												
							</div>
		

							<!-- 관심 지점이 있을 경우 -->
							
							<button id="change"></button>
							<div id ="content">
		<c:forEach items="${favLocation }" var="like">
			<ul>
				<li>
					<p class="tit">${like.name }</p>
					<div class="cont">
										<ul class="info-list">
											<li>
											<span class="info-tit">영업시간</span>
												<div class="info-cont">
													<span><button type="button" class="accorSpotBtn"
															data-target="accorSpotCont0" data-on="true"
															data-siblings="true">${like.businessHours } | 당일예약 가능시간 08:30 ~ 16:00</button>
															</span>
												</div>
											</li>
											<li>
											<span class="info-tit">주소</span>
												<div class="info-cont">
													<span>${like.address }</span>
												</div>
											</li>
											<li>
											<span class="info-tit">전화번호</span>
												<div class="info-cont">
													<span>${like.phoneNumber }</span>
												</div>
											</li>
										</ul>
										<div class="btns">
											
											<button type="button" class="btn-auto delBtn black"
												 value="${like.locationIdx }">삭제</button>
										</div>
									</div>
					
					
				</li>
			
			</ul>
		</c:forEach>
		
				</div>
						




						</div>
					</div>

				</div>
			</div>
		</div>
	</section>

	<jsp:include page="/WEB-INF/views/base/chat.jsp"/>
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>

	<script>
	
	$('.main-nav').children().eq(2).children().css('color', '#18B4E9');

	$('#historyBtn').on('click', function() {
		location.href='<%=request.getContextPath()%>/profile/history';
	});
		$('#updateinfoBtn').on('click', function() {
			location.href="${pageContext.request.contextPath}/member/profile/update";
			
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
		
	
	$('#totalLocation').on('click', function() {
		location.href = "${pageContext.request.contextPath}/location/1"; 
	});
	
	$('.delBtn').on('click', function() {
		var locationIdx = $(this).val();
		console.log(locationIdx);
		$.ajax({
			url:"${pageContext.request.contextPath}/deleteLike/"+locationIdx, 
			type: 'DELETE',
			data: {
				idx : locationIdx,
				},
			success : function(result){
				console.log(result);
				if(result == 1){
					swal.fire({
		      			title : "관심지점이 삭제되었습니다",
		      		    icon  : "success",
		      		    closeOnClickOutside : false
		      		}).then(function(){
		      			location.reload();
		      		});
				}else{
					 Swal.fire('취소 ', '취소 ', 'error');
						
				}
			},
			error: function(){
				alert("오류");
			}
			
			
		});
		
		
		
	});


	
	</script>
</body>
</html>
