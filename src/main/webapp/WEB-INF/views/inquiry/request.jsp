<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>문의</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">

</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	
	<section>
		<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="row">
					<div class="blog-asside-right col-md-3">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">문의</h3>
							</div>
						</div>
						<div class="btn-group btn-group-lg btn-group-vertical" role="group" aria-label="Basic outlined example">
							<button type="button" class="btn btn-outline-primary" id="mainBtn" style="text-align: left;">자주 묻는 질문</button>
							<button type="button" class="btn btn-outline-primary" id="requestBtn" style="text-align: left;">1:1 문의</button>
						</div>
					</div>  
					<div class="blog-lst col-md-9 p0">
						<section id="id-100" class="post single">
							<div class="panel panel-default sidebar-menu wow  fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">1:1 문의</h3>
								</div>
							</div>
						</section>
						<section>
							<c:choose>
								<c:when test="${requestList eq null }">
									<div style="margin-bottom: 50px; font-size: 20px;">1:1 문의 내역이 존재하지 않습니다.</div>
								</c:when>
								<c:otherwise>
									<div class="feat-list">
										<div class="panel-group">
											<c:forEach items="${requestList }" var="request">
												<div class="panel panel-default">
													<c:choose>
														<c:when test="${request.status eq 0 }">
															<div class="panel-heading">
																<h4 class="panel-title fqa-title collapsed" data-toggle="collapse" data-target="#fqa${request.idx }" aria-expanded="false"><span style="padding-right: 10px;">[답변 대기 중]</span>${request.title }</h4>
															</div>
														</c:when>
														<c:otherwise>
															<div class="panel-heading" style="background-color: red;">
																<h4 class="panel-title fqa-title collapsed" data-toggle="collapse" data-target="#fqa${request.idx }" aria-expanded="false"><span style="padding-right: 10px;">[답변 완료]</span>${request.title }</h4>
															</div>
														</c:otherwise>
													</c:choose>
													<div id="fqa${request.idx }" class="panel-collapse fqa-body collapse" aria-expanded="false" style="height: 0px;">
														<div class="panel-body">${request.content }</div>
														<c:if test="${request.answer ne null }">
															<hr style="padding: 0; margin: 0;">
															<div class="panel-body">${request.answer }</div>
														</c:if>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							<button type="button" class="btn btn-primary" id="insertBtn">문의 작성하기</button>
						</section>
					</div>                    
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
	<script>
		$('.main-nav').children(0).eq(4).children().css('color', '#18B4E9');
		
		$('#mainBtn').on('click', function() {
			location.href="${pageContext.request.contextPath}/inquiry"
		})
	
		$('#requestBtn').on('click', function() {
			location.href="${pageContext.request.contextPath}/request";
		})
		
		$('#insertBtn').on('click', function() {
			location.href="${pageContext.request.contextPath}/request/insert";
		})
		
	</script>
</body>
</html>