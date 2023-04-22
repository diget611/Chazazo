<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>차량 예약</title>
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
								<input type="text" id="inputword" class="form-control" placeholder="차량 모델명을 입력하세요" value="">
								<button class="btn search-btn" id="searchbtn" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
							<div class="panel-body search-widget">
								<form action="" class=" form-inline"> 
								<fieldset class="padding-5" style="margin-bottom:50px">
									<h5>차량등급</h5>
										<div class="row">
											<input type="hidden" name="typeChk">
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox" id="alltype"   value="all" checked> 전체</label>
												</div> 
											</div>
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox" name="cartypeIdx" value="1"> 경차</label>
												</div>
											</div>   
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox" name="cartypeIdx" value="2"> 소형</label>
												</div>
											</div>   
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox" name="cartypeIdx" value="3"> 중형</label>
												</div>
											</div>    
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox" name="cartypeIdx" value="4"> 대형</label>
												</div>
											</div>     
											<div class="col-xs-4">
												<div class="checkbox">
													<label><input type="checkbox" name="cartypeIdx" value="5"> 수입</label>
												</div>
											</div>                                                    
										</div>
									</fieldset>
                                   <!-- 카테고리-연료 시작 -->
									<fieldset class="padding-5" style="margin-bottom:20px">
										<h5>연료</h5>
										<div class="row">
											<div class="col-xs-6">
												<div class="checkbox">
													<label><input type="checkbox" id="allfuel" checked> 전체</label>
												</div> 
											</div>
											<div class="col-xs-6">
												<div class="checkbox">
													<label><input type="checkbox" name="fueltypeIdx" value="1"> 휘발유</label>
												</div>
											</div>   
											<div class="col-xs-6">
												<div class="checkbox">
													<label><input type="checkbox" name="fueltypeIdx" value="2"> 경유</label>
												</div>
											</div>
											<div class="col-xs-6">
												<div class="checkbox">
													<label><input type="checkbox" name="fueltypeIdx" value="3"> 전기</label>
												</div>
											</div>     
											<div class="col-xs-6">
												<div class="checkbox">
													<label><input type="checkbox" name="fueltypeIdx" value="4"> 하이브리드</label>
												</div>
											</div>      
											<div class="col-xs-6">
												<div class="checkbox">
													<label><input type="checkbox" name="fueltypeIdx" value="5"> LPG</label>
												</div>
											</div>                              
										</div>
									</fieldset>
									<!-- 카테고리-연료 끝 -->
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
						</div>
						<div class="col-xs-2 layout-switcher">
							<a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
							<a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
						</div><!--/ .layout-switcher-->
					</div>
					<div class="col-md-12 clear"> 
						<div id="list-type" class="proerty-th">
						
						</div>
					</div>
				</div>  
				<!-- 본문 컨텐츠 끝-->
			</div>              
		</div>
	</div>
    
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	

	<script>
	
	

	//cartype: 전체 선택 체크박스가 변경되었을때	
	$('#alltype').on('ifChanged',function(){
		//전체가 체크되면 다른 체크박스 해제
		if($('#alltype:checkbox').is(":checked")==true) {
		setTimeout(function(){
		 $('[name=cartypeIdx]').iCheck('uncheck');
		  },0);
		// 모두 선택되지 않았을경우 경고를 띄우고 자동으로 전체가 체크되게 한다
		} else if ($('input:checkbox[name=cartypeIdx]:checked').length == 0 )  {
					setTimeout(function(){ 
						$('#alltype').iCheck('check');
				  },0);
				}
	}) 
		

	//cartype: 전체 제외 다른 체크박스가 변경되었을때
	$('[name=cartypeIdx]').on('ifChanged', function() {
		//배열을 생성하고 체크된 value값을 배열에 담는다
		let arr = [];
		$('input:checkbox[name=cartypeIdx]:Checked').each(function() {
			arr.push($(this).val());
		})
		console.log(arr);
		
		// 모두 선택되지 않았을경우 자동으로 전체가 체크되게 한다
		if($('input:checkbox[name=cartypeIdx]:checked').length == 0 &&  ($("#alltype:checkbox" ).is( ":checked") == false )) {
			  setTimeout(function(){ 
				  $('#alltype').iCheck('check')
			  },0);
		//하나라도 체크를 하면 전체체크박스가 해제된다
			}else {
				setTimeout(function(){
				$('#alltype').iCheck('uncheck');
				 },0);
			}
	})
	
	
	$('#searchbtn').on('click',function(){
		paging();
	});
	//fueltype: 전체 선택 체크박스가 변경되었을때	
	$('#allfuel').on('ifChanged',function(){
		//전체가 체크되면 다른 체크박스 해제
		if($('#allfuel').is(":checked")==true) {
		setTimeout(function(){
		 $('[name=fueltypeIdx]').iCheck('uncheck');
		  },0);
		// 모두 선택되지 않았을경우 경고를 띄우고 자동으로 전체가 체크되게 한다
		} else if ($('#allfuel:checkbox').is(":checked")==false &&($('input:checkbox[name=fueltypeIdx]:checked').length == 0 ) ) {
					setTimeout(function(){ 
						$('#allfuel').iCheck('check');
				  },0);
				}
	}) 
		

	//fueltype: 전체 제외 다른 체크박스가 변경되었을때
	$('[name=fueltypeIdx]').on('ifChanged', function() {
		//배열을 생성하고 체크된 value값을 배열에 담는다
		let arr = [];
		$('input:checkbox[name=fueltypeIdx]:Checked').each(function() {
			arr.push($(this).val());
		})
		console.log(arr);
		
		// 모두 선택되지 않았을경우 자동으로 전체가 체크되게 한다
		if($('input:checkbox[name=fueltypeIdx]:checked').length == 0 &&  ($("#allfuel:checkbox" ).is( ":checked") == false )) {
			  setTimeout(function(){ 
				  $('#allfuel').iCheck('check')
			  },0);
		//하나라도 체크를 하면 전체체크박스가 해제된다
			}else {
				 setTimeout(function(){
				$('#allfuel').iCheck('uncheck');
				 },0);
			}
	})
	
	

	$(window).on('scroll', function() {
		let scrTest = $(window).scrollTop();
		console.log("ㅇㅇㅇㅇㅇㅇㅇ"+$(document).height()+"###"+$(window).height());
		if(Math.round(scrTest) == Math.round($(document).height() - $(window).height())) {
			page++;
			console.log("page"+page);
			console.log("scroll"+$(window).scrollTop());
			console.log("document height"+$(document).height());
			console.log("window height"+$(window).height());
			console.log(Math.round(scrTest) == $(document).height() - $(window).height());
			paging();
		}
	});
	
	
	function paging() {
		console.log(page);
		let carType = [];
        let fuelType = [];
        var keyword = "%"+$('#inputword').val() +"%";
        
        $('input:checkbox[name=cartypeIdx]:checked').each(function() {
           carType.push($(this).val());
        })
        $('input:checkbox[name=fueltypeIdx]:checked').each(function() {
       	 fuelType.push($(this).val());
        })
        
        let selectList = {
           "keyword" : keyword,
           "typeList" : carType,
           "fuelList" : fuelType,
           "page" : page
        };
        
		
		  $.ajax({
	            url: "seachlist",
	            data: selectList,
	            type: 'get',
	            dataType:'json',
	            success: function(result) {
					getSearch(result);
	            	carType = [];
	            	fuelType=[];
	            },
	            error: function() {
	            	alert('로딩 실패')
	            }
	         });

	}
		
		
		
		
		
		
	$('[name=cartypeIdx]').on('ifChanged',getList);
	$('[name=fueltypeIdx]').on('ifChanged',getList);
    window.onload = getList();
      function getList() {
         let carType = [];
         let fuelType = [];
         page = 1;
         $('input:checkbox[name=cartypeIdx]:checked').each(function() {
            carType.push($(this).val());
         })
         $('input:checkbox[name=fueltypeIdx]:checked').each(function() {
        	 fuelType.push($(this).val());
         })
         
         let selectList = {
            "typeList" : carType,
            "fuelList" : fuelType
         };
         
         $.ajax({
            url: "seachlist",
            data: 	selectList,
            type: 'get',
            dataType:'json',
            success: function(result) {
            	getSearch(result);
            	carType = [];
            	fuelType=[];
            },
            error: function() {
            	alert('통신 실패')
            }
         });
      }
         
         function getSearch(result) {
        	 var html = '';
        	 for(var i in result.carlist) {
        		var car = result.carlist[i];
 				html += '<div class="col-sm-6 col-md-4 p0">'; 
 				html += '<div class="box-two proerty-item">';
 				html += '		<div class="item-thumb">'; 
 				html += '		<a href="${pageContext.request.contextPath}/carlist/' + car.idx + '"><img src="https://placeimg.com/327/220/animals" /></a> ';                               			
 				html += '		</div>'; 
 				html += '		<div class="item-entry overflow" id="listbody">'; 
 				html += '			<h5><a href="/chazazo/details">' + car.model + ' </a></h5>'; 
 				html += '			<div class="dot-hr"></div>'; 
 				html += '				<span class="pull-left"><b> 대여지점 : ' + car.name + '</b>  </span>'; 
 				html += '				<span class="proerty-price pull-right"> ' + car.price + '원</span>'; 
 				html += '			<p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>'; 
 				html += '			<div class="property-icon">'; 
 				html += '				<img src="./resources/garoestate/assets/img/icon/clock.png">' + car.year + '년|'; 
 				html += '				<img src="./resources/garoestate/assets/img/icon/fuel.png">' + car.fuelname + '|'; 
 				html += '				<img src="./resources/garoestate/assets/img/icon/car.png">' + car.typename + '  '; 
 				html += '			</div>';
 				html += '			</div>';
 				html += '</div>';
 				html += '</div>';  
 				}

 				$('#list-type').html(html);

      }
         
         
         
         
	</script>
</body>
</html>