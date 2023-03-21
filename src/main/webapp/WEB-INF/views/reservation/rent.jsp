<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Home page</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

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
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/animate.css"
	rel="stylesheet" media="screen">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.theme.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.transitions.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">
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
                                                    <label> <input type="checkbox" checked> 전체</label>
                                                </div> 
                                            </div>

                                            <div class="col-xs-4">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> 소형</label>
                                                </div>
                                            </div>   
                                             <div class="col-xs-4">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> 중형</label>
                                                </div>
                                            </div>   
                                           <div class="col-xs-4">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> 대형</label>
                                                </div>
                                            </div>    
                                            <div class="col-xs-4">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> suv</label>
                                                </div>
                                            </div>     
                                            <div class="col-xs-4">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox">수입</label>
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
                                                    <label> <input type="checkbox" checked> 전체</label>
                                                </div> 
                                            </div>

                                            <div class="col-xs-4">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> 휘발유</label>
                                                </div>
                                            </div>   
                                             <div class="col-xs-4">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> 경유</label>
                                                </div>
                                            </div>   
                                          
                                            <div class="col-xs-4">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> 전기</label>
                                                </div>
                                            </div>     
                                            <div class="col-xs-6">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox">하이브리드</label>
                                                </div>
                                            </div>                                   
                                        </div>
                                    </fieldset>
                                     <!-- 카테고리-연료 끝 -->
                                    
		   				 
                                  

                                    <fieldset >
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
                            <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="/chazazo/details" >
                                            <c:forEach items="${vehicleList }" var="vehicle" >
                                   			<img src="${vehicle.image }"  style="width:255px; height:220px;">    </a>                               			
                                        </div>
                                   		
										
										<!-- 썸네일 한 칸 시작 -->
                                        <div class="item-entry overflow">
                                            <h5><a href="/chazazo/details">${vehicle.model } </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 대여지점 :</b> 강남점 </span>
                                            <span class="proerty-price pull-right"> ${vehicle.price }원</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="./resources/garoestate/assets/img/icon/bed.png">${vehicle.year }년|
                                                <img src="./resources/garoestate/assets/img/icon/shawer.png">(2)|
                                                <img src="./resources/garoestate/assets/img/icon/cars.png">(1)  
                                            </div>
                                       	</c:forEach>
                                        </div>
                                        
                                        <!-- 썸네일 한 칸 끝 -->
                                    </div>
                                </div> 

       
                        </div>
                    </div>
                    
                    <!-- 페이징 처리 시작 -->
                    <div class="col-md-12"> 
                        <div class="pull-right">
                            <div class="pagination">
                                <ul>
                                    <li><a href="#">Prev</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </div>
                        </div>                
                    </div>
                   <!-- 페이징 처리 끝 -->
				    </div>  
                <!-- 본문 컨텐츠 끝-->
                </div>              
            </div>
        </div>
        

        
        
	<jsp:include page="../footer.jsp"/>
	
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
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>

</body>
</html>