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
<link rel="stylesheet" 	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">
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
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
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
	max-width: 100px;
  	white-space: nowrap;
  	overflow: hidden;
  	text-overflow: ellipsis;
}

tbody tr:hover {
	background-color: #f1f3f5;
}
thead {
    user-select: none;
}

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
										<button type="button" id="request" class="btn btn-outline-primary">1:1
											문의</button>
										<br>
										<sec:authorize access="isAuthenticated()">
											<button id="coupon" type="button" class="btn btn-outline-primary">쿠폰
												관리</button>
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
								<div id="mypage_none_rent_history"
									style="display: block; margin-top: 100px;">

									<div id="hideRent">
										<c:if test="${empty myReview }">
											<p style="text-align: center; font-size: large;">
												<strong> 작성한 리뷰가 없어요 !!</strong>
											</p>
											<br>
										</c:if>
										<div>내가 작성한 리뷰 수 : ${ countReview} 개</div>
										<hr class="my-2">
					
										<table>
											<thead>
												<tr>
													<th scope="row">리뷰</th>
													<th scope="row">리뷰내용</th>
													<th scope="row">작성시간</th>
													<th scope="row">별점</th>
													<th scope="row">예약한 차량</th>
													<th scope="row">상태</th>
													
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${myReview }" var="list">
													<tr>
														<td>${list.idx }</td>
														<td>${list.content }</td>
														<td>${list.createdate }</td>
														<td>${list.score }</td>
														<td>${list.vehicleModel }</td>
														<c:choose>
															<c:when test="${list.status eq 0 }">
																<td>작성한 리뷰</td>
															</c:when>
															<c:when test="${list.status eq 1 }">
																<td>신고처리중</td>
															</c:when>
																<c:otherwise>
																<td>삭제</td>
															</c:otherwise>
														</c:choose>
													</tr>
												</c:forEach>
											</tbody>
										</table>

									</div>




								</div>




							</div>
						</section>


					</div>


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
			
		
	
	
				
		
	</script>
</body>
</html>