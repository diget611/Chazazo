<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
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
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<div class="properties-area recent-property" style="background-color: #FFF;">
		<div class="container">  
			<div class="row">
				<!-- left 카테고리 시작 -->
				<div class="col-md-3 p0 padding-top-40">
					<div class="blog-asside-right pr0">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated" >
							<div class="panel-heading">
								<h3 class="panel-title">카테고리</h3>
							</div>
							<div class="form-group" style="margin-bottom:50px">
								<h5>차량 모델</h5>
								<input type="text" class="form-control" placeholder="차량 모델명을 입력하세요">
								<button class="btn search-btn" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
							<div class="panel-body search-widget">
								<form action="" class=" form-inline"> 
								<fieldset class="padding-5" style="margin-bottom:50px">
									<h5>차량등급</h5>
										<div class="row">
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox" checked> 전체</label>
												</div> 
											</div>
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox"> 소형</label>
												</div>
											</div>   
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox"> 중형</label>
												</div>
											</div>   
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox"> 대형</label>
												</div>
											</div>    
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox"> suv</label>
												</div>
											</div>     
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox">수입</label>
												</div>
											</div>                                   
										</div>
									</fieldset>
                                   <!-- 카테고리-연료 시작 -->
									<fieldset class="padding-5" style="margin-bottom:20px">
										<h5>연료</h5>
										<div class="row">
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox" checked> 전체</label>
												</div> 
											</div>
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox"> 휘발유</label>
												</div>
											</div>   
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox"> 경유</label>
												</div>
											</div>
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox"> 전기</label>
												</div>
											</div>     
											<div class="col-xs-6">
												<div class="checkbox">
													<label><input type="checkbox">하이브리드</label>
												</div>
											</div>                                   
										</div>
									</fieldset>
									<!-- 카테고리-연료 끝 -->
									<fieldset>
										<div class="row">
											<div class="col-xs-12">  
												<input class="button btn largesearch-btn" value="Search" type="submit">
											</div>  
										</div>
									</fieldset>                                     
								</form>
							</div>
						</div>
					</div>
				</div>
                <!-- left 카테고리 끝 -->

				<!-- 본문 컨텐츠 시작-->
				<div class="col-md-9  pr0 padding-top-40 properties-page">
					<div class="col-md-12 clear"> 
						<div class="col-xs-10 page-subheader sorting pl0">
							<ul class="sort-by-list">
								<li class="active">
									<a href="javascript:void(0);" class="order_by_date" data-orderby="property_date" data-order="ASC">
										Property Date <i class="fa fa-sort-amount-asc"></i>					
									</a>
								</li>
								<li class="">
									<a href="javascript:void(0);" class="order_by_price" data-orderby="property_price" data-order="DESC">
										Property Price <i class="fa fa-sort-numeric-desc"></i>						
									</a>
								</li>
							</ul><!--/ .sort-by-list-->
							<div class="items-per-page">
								<label for="items_per_page"><b>Property per page :</b></label>
								<div class="sel">
									<select id="items_per_page" name="per_page">
										<option value="3">3</option>
										<option value="6">6</option>
										<option value="9">9</option>
										<option selected="selected" value="12">12</option>
										<option value="15">15</option>
										<option value="30">30</option>
										<option value="45">45</option>
										<option value="60">60</option>
									</select>
								</div><!--/ .sel-->
							</div><!--/ .items-per-page-->
						</div>
						<div class="col-xs-2 layout-switcher">
							<a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
							<a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
						</div><!--/ .layout-switcher-->
					</div>
					<div class="col-md-12 clear"> 
						<div id="list-type" class="proerty-th">
						<c:forEach items="${carlist }" var="car" >
							<div class="col-sm-6 col-md-4 p0">
								<div class="box-two proerty-item">
										<div class="item-thumb">
										<a href="<%=request.getContextPath()%>/carlist/${car.idx }"><img src="https://placeimg.com/327/220/animals" /></a>                               			
										</div>
										<!-- 썸네일 한 칸 시작 -->
										<div class="item-entry overflow">
											<h5><a href="/chazazo/details">${car.model } </a></h5>
											<div class="dot-hr"></div>
											<span class="pull-left"><b> 대여지점 : ${car.name }</b>  </span>
											<span class="proerty-price pull-right"> ${car.price }원</span>
											<p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
											<div class="property-icon">
												<img src="./resources/garoestate/assets/img/icon/clock.png">${car.year }년|
												<img src="./resources/garoestate/assets/img/icon/fuel.png">${car.fuelname }|
												<img src="./resources/garoestate/assets/img/icon/car.png">${car.typename }  
											</div>
										</div>
									<!-- 썸네일 한 칸 끝 -->
								</div>
							</div> 
						</c:forEach>
						</div>
					</div>
					<!-- 페이징 처리 시작 -->
			
					<tr>
						<td colspan="6">
						<c:if test="${pageInfo.currentPage ne 1 }">
						<a href="<%=request.getContextPath() %>/carlist?page=${pageInfo.currentPage -1}">이전</a>
						</c:if>
						
						<c:forEach begin="${pageInfo.startpage }" end ="${pageInfo.endpage }" var="page">
							<a href="<%=request.getContextPath() %>/carlist?page=${page }">${page }</a>
						</c:forEach>
					
						<c:if test="${pageInfo.endpage ne pageInfo.totalpage}">
							<a href="#" id="test">다음</a>
						</c:if>
					</tr>
					
				
					<!-- 페이징 처리 끝 -->
				</div>  
				<!-- 본문 컨텐츠 끝-->
			</div>              
		</div>
	</div>
    
	<jsp:include page="../footer.jsp"/>
	<script>
		$('#test').on('click', function() {
			console.log('눌렀음');
		})
	</script>
</body>
</html>