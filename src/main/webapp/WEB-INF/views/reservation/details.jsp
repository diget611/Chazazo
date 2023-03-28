<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>예약 하기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

<!-- CSS only -->

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
						
	
	<section>
		<div class="content-area single-property" style="background-color: #FCFCFC;">
			<div class="container">
				<div class="clearfix padding-top-40">
					<div class="col-md-8 single-property-content ">
						<div class="row">
							<div class="light-slide-item">            
								<div class="clearfix">
									<div class="favorite-and-print">
										<a class="add-to-fav" href="#login-modal" data-toggle="modal"><i class="fa fa-star-o"></i></a>
										<a class="printer-icon " href="javascript:window.print()"><i class="fa fa-print"></i></a>
									</div> 
									<img src="${car.image }" />
								</div>
							</div>
						</div>
						<div class="single-property-wrapper">
							<div class="single-property-header">                                          
								<h1 class="property-title pull-left">${car.model } </h1>
								<span class="property-price pull-right">${car.price }원</span>
							</div>
							<div class="property-meta entry-meta clearfix ">   
								<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
									<span class="property-info-icon icon-tag">
										<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
											<path class="meta-icon" fill-rule="evenodd" clip-rule="evenodd" fill="#FFA500" d="M47.199 24.176l-23.552-23.392c-.504-.502-1.174-.778-1.897-.778l-19.087.09c-.236.003-.469.038-.696.1l-.251.1-.166.069c-.319.152-.564.321-.766.529-.497.502-.781 1.196-.778 1.907l.092 19.124c.003.711.283 1.385.795 1.901l23.549 23.389c.221.218.482.393.779.523l.224.092c.26.092.519.145.78.155l.121.009h.012c.239-.003.476-.037.693-.098l.195-.076.2-.084c.315-.145.573-.319.791-.539l18.976-19.214c.507-.511.785-1.188.781-1.908-.003-.72-.287-1.394-.795-1.899zm-35.198-9.17c-1.657 0-3-1.345-3-3 0-1.657 1.343-3 3-3 1.656 0 2.999 1.343 2.999 3 0 1.656-1.343 3-2.999 3z"></path>
										</svg>
									</span>
									<span class="property-info-entry">
										<span class="property-info-label">Status</span>
										<span class="property-info-value">For Sale</span>
									</span>
								</div>
								<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
									<span class="property-info icon-area">
										<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
											<path class="meta-icon" fill="#FFA500" d="M46 16v-12c0-1.104-.896-2.001-2-2.001h-12c0-1.103-.896-1.999-2.002-1.999h-11.997c-1.105 0-2.001.896-2.001 1.999h-12c-1.104 0-2 .897-2 2.001v12c-1.104 0-2 .896-2 2v11.999c0 1.104.896 2 2 2v12.001c0 1.104.896 2 2 2h12c0 1.104.896 2 2.001 2h11.997c1.106 0 2.002-.896 2.002-2h12c1.104 0 2-.896 2-2v-12.001c1.104 0 2-.896 2-2v-11.999c0-1.104-.896-2-2-2zm-4.002 23.998c0 1.105-.895 2.002-2 2.002h-31.998c-1.105 0-2-.896-2-2.002v-31.999c0-1.104.895-1.999 2-1.999h31.998c1.105 0 2 .895 2 1.999v31.999zm-5.623-28.908c-.123-.051-.256-.078-.387-.078h-11.39c-.563 0-1.019.453-1.019 1.016 0 .562.456 1.017 1.019 1.017h8.935l-20.5 20.473v-8.926c0-.562-.455-1.017-1.018-1.017-.564 0-1.02.455-1.02 1.017v11.381c0 .562.455 1.016 1.02 1.016h11.39c.562 0 1.017-.454 1.017-1.016 0-.563-.455-1.019-1.017-1.019h-8.933l20.499-20.471v8.924c0 .563.452 1.018 1.018 1.018.561 0 1.016-.455 1.016-1.018v-11.379c0-.132-.025-.264-.076-.387-.107-.249-.304-.448-.554-.551z"></path>
										</svg>
									</span>
									<span class="property-info-entry">
										<span class="property-info-label">Area</span>
										<span class="property-info-value">3500<b class="property-info-unit">Sq Ft</b></span>
									</span>
								</div>
								<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
									<span class="property-info-icon icon-bed">
										<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
											<path class="meta-icon" fill="#FFA500" d="M21 48.001h-19c-1.104 0-2-.896-2-2v-31c0-1.104.896-2 2-2h19c1.106 0 2 .896 2 2v31c0 1.104-.895 2-2 2zm0-37.001h-19c-1.104 0-2-.895-2-1.999v-7.001c0-1.104.896-2 2-2h19c1.106 0 2 .896 2 2v7.001c0 1.104-.895 1.999-2 1.999zm25 37.001h-19c-1.104 0-2-.896-2-2v-31c0-1.104.896-2 2-2h19c1.104 0 2 .896 2 2v31c0 1.104-.896 2-2 2zm0-37.001h-19c-1.104 0-2-.895-2-1.999v-7.001c0-1.104.896-2 2-2h19c1.104 0 2 .896 2 2v7.001c0 1.104-.896 1.999-2 1.999z"></path>
										</svg>
									</span>
									<span class="property-info-entry">
										<span class="property-info-label">Bedrooms</span>
										<span class="property-info-value">3</span>
									</span>
								</div>
								<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
									<span class="property-info-icon icon-bath">
										<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
											<path class="meta-icon" fill="#FFA500" d="M37.003 48.016h-4v-3.002h-18v3.002h-4.001v-3.699c-4.66-1.65-8.002-6.083-8.002-11.305v-4.003h-3v-3h48.006v3h-3.001v4.003c0 5.223-3.343 9.655-8.002 11.305v3.699zm-30.002-24.008h-4.001v-17.005s0-7.003 8.001-7.003h1.004c.236 0 7.995.061 7.995 8.003l5.001 4h-14l5-4-.001.01.001-.009s.938-4.001-3.999-4.001h-1s-4 0-4 3v17.005000000000003h-.001z"></path>
										</svg>
									</span>
									<span class="property-info-entry">
										<span class="property-info-label">Bathrooms</span>
										<span class="property-info-value">3.5</span>
									</span>
								</div>
								<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
									<span class="property-info-icon icon-garage">
										<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
											<path class="meta-icon" fill="#FFA500" d="M44 0h-40c-2.21 0-4 1.791-4 4v44h6v-40c0-1.106.895-2 2-2h31.999c1.106 0 2.001.895 2.001 2v40h6v-44c0-2.209-1.792-4-4-4zm-36 8.001h31.999v2.999h-31.999zm0 18h6v5.999h-2c-1.104 0-2 .896-2 2.001v6.001c0 1.103.896 1.998 2 1.998h2v2.001c0 1.104.896 2 2 2s2-.896 2-2v-2.001h11.999v2.001c0 1.104.896 2 2.001 2 1.104 0 2-.896 2-2v-2.001h2c1.104 0 2-.895 2-1.998v-6.001c0-1.105-.896-2.001-2-2.001h-2v-5.999h5.999v-3h-31.999v3zm8 12.999c-1.104 0-2-.895-2-1.999s.896-2 2-2 2 .896 2 2-.896 1.999-2 1.999zm10.5 2h-5c-.276 0-.5-.225-.5-.5 0-.273.224-.498.5-.498h5c.275 0 .5.225.5.498 0 .275-.225.5-.5.5zm1-2h-7c-.275 0-.5-.225-.5-.5s.226-.499.5-.499h7c.275 0 .5.224.5.499s-.225.5-.5.5zm-6.5-2.499c0-.276.224-.5.5-.5h5c.275 0 .5.224.5.5s-.225.5-.5.5h-5c-.277 0-.5-.224-.5-.5zm11 2.499c-1.104 0-2.001-.895-2.001-1.999s.896-2 2.001-2c1.104 0 2 .896 2 2s-.896 1.999-2 1.999zm0-12.999v5.999h-16v-5.999h16zm-24-13.001h31.999v3h-31.999zm0 5h31.999v3h-31.999z"></path>
										</svg>
									</span>
									<span class="property-info-entry">
										<span class="property-info-label">Garages</span>
										<span class="property-info-value">2</span>
									</span>
								</div>
							</div>
							<!-- .property-meta -->
							<div class="section">
								<h4 class="s-property-title">운전자 대여조건</h4>
								<div class="s-property-content">
								<p>
										운전자 나이 만 21세 이상<br>
										
										면허취득일 1년 이상<br>
										
										차량 대여 시 실물면허증 소지 (2종 보통 면허 이상 필요)<br>
										
										업체별 대여규정 준수 (외국인 대여, 낚시용품/애견 동반, 주행거리제한 규정 등)
								</div>
							</div>
							<!-- End description area  -->
							<div class="section additional-details">
								<h4 class="s-property-title">차량 정보</h4>
								<ul class="additional-details-list clearfix">
									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>
									</li>
									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Built In</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2003</span>
									</li>
									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Parking</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2 Or More Spaces,Covered Parking,Valet Parking</span>
									</li>
									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>
									</li>
									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">View</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Intracoastal View,Direct ew</span>
									</li>
									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront Description:</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Intracoastal Front,Ocean Access</span>
									</li> 
								</ul>
							</div>  
							<!-- End additional-details area  -->
							<div class="section property-features">      
								<h4 class="s-property-title">대여점 정보</h4>                            
								<ul>
									<p> 대여점 이름, 주소, 정보....
								</ul>
								<!-- 리뷰 영역 시작 -->
								<div class="section">
									<h4 class="s-property-title">리뷰</h4>
									<div class="s-property-content">
										<p>Nulla quis dapibus nisl. Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies commodo arcu nec pretium. Nullam sed arcu ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies                                </p>
									</div>
								</div>
								<!-- 리뷰 영역 끝 -->
								<!-- End features area  -->
							</div>
						</div>
					</div>
					
					
					<!-- 우측 카테고리 시작 -->
						<!-- 날짜 선택 시작 -->
	
						<div class="col-md-4 p0" style="padding-left:30px  float:rigth">
							<aside class="sidebar sidebar-property blog-asside-right">
								<section class="mt-3 p-3">
										<form>
											<label>대여일</label><input type="date" name="startDate" id="startDate" min="today">
											<label>반납일</label><input type="date" name="endDate" id="endDate"  min="today">
										</form>
											<hr>
									<div class="col-md-12" style="padding-bottom:100px">                                   
                                        <div class="btn-group bootstrap-select">
                                 
	                                   	  <select id="select" name="select" class="selectpicker" >
	                                            <option selected disabled>보험 선택</option>
	                                            <option value="0.1">일반자차(기본)</option>
	                                            <option value="0.2">완전자차</option>
	                                            <option value="0.5">슈퍼자차</option>
	                                        </select>
                                        </div>
                                    </div>
                                    
									<section class="mt-3 p-3">
									<h6>결제 정보</h6><hr>
									<table class="table">
										<tbody>
											<tr>
												<th>대여 일수</th>
												<td><label id="day-count"></label><label>일</label></td>
											</tr>
											<tr>
												<th>기본 대여 요금</th>
												<td><label id="rentPrice"></label><label>원</label></td>
											</tr>
											<tr>
												<th>보험 추가 요금</th>
												<td><label id="addIns"></label><label>원</label></td>
											</tr>
											<tr>
												<th>예상결제금액</th>
												<td><label id="expIns"></label><label>원</label></td>
											</tr>
										</tbody>
									</table>
								</section>
								<button class="btn btn-default" type="button" onclick=" window.open('payment')" >결제하기</button>
								</section>
							</aside>
						</div>
						<!-- 날짜 선택 끝 -->
						
				</div>
			</div>
		</div>
	</section>
	
	<jsp:include page="../footer.jsp"/>
	
</body>

<script>
	 document.getElementById('startDate').valueAsDate = new Date();
	 document.getElementById('endDate').valueAsDate = new Date(); 
     var today = new Date();   

     var dd = today.getDate();
     var mm = today.getMonth() + 1; 
     var yyyy = today.getFullYear();
    
     if (mm < 10) {
     	   mm = '0' + mm;
     	} 
     	    
     today = yyyy + '-' + mm + '-' + dd;
     document.getElementById("startDate").setAttribute("min", today);
     document.getElementById("endDate").setAttribute("min", today);
     

</script>

<script>
     
  
	$('#startDate').on('change', mincalc);
 //    $('#startDate').on('change', calc);
     $('#endDate').on('change', calc);
     $('#select').on('change', calc);

     
     function calc () {
        var startDate = new Date($('#startDate').val());
        var endDate = new Date($('#endDate').val());
         compareDate = Math.round((endDate.getTime() - startDate.getTime()) / 1000 / 60 / 60 / 24) + 1;
      	var price = ${car.price};
      	var insurance = $('#select').val(); //추가요금
     
      	
       if(compareDate <0) {
    	   alert("반납일이 대여일보다 먼저 올 수 없습니다.다시 선택해 주세요.");
			return false;
       }else {
     	  $('#day-count').text(compareDate);
     	  $('#rentPrice').text((price * compareDate).toLocaleString());
     	  $("#addIns").text((price * insurance).toLocaleString());
     	  $("#expIns").text((compareDate*price+price * insurance).toLocaleString());
     	
       }
       
      }
     function mincalc() {
     $("#day-count").empty();
     $("#rentPrice").empty();
     $("#addIns").empty();
     $("#expIns").empty();
   	  var startDate = new Date($('#startDate').val()); 
   	  var endDate = new Date($('#endDate').val());
   	  
   	  var sDate = new Date();
   	     var sdd = startDate.getDate();
   	     var smm = startDate.getMonth() +1;
   	     var syyyy = startDate.getFullYear();
   	     if (smm < 10) {
   	     	   smm = '0' + smm;
   	     	} 
   	    sDate = syyyy+ '-' + smm + '-' +sdd;
   	    document.getElementById("endDate").setAttribute("min", sDate);
   	     
   	  
    }
      
      
      
 </script>


</html>