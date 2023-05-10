<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>예약 하기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<spring:eval expression="@keyProperty['kakao-admin-key']" var="key"/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${key }"></script>

<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css">

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

<body>
					<div class="col-md-4 p0" style="float:left; display:inline-block">
							<aside class="sidebar sidebar-property blog-asside-right">
								<section class="mt-3 p-3">
										<form>
											<div>
												<label>대여일 </label> &nbsp;
												<input type="date" name="startDate" id="startDate" min="today" style="width:160px;" >
											</div>
											<div>
												<label>반납일 </label> &nbsp;
												<input type="date" name="endDate" id="endDate"  min="today" style="width:160px; ">
												<input type="text" id="day-count" name="daycount" value="" style="width:50px; background-color:#eeeeee;"readonly /><label>일 대여</label> 
											</div>
										</form>
											<hr>
                                        <div class="selectbox" style="margin-bottom:100px;">
                                 		  <label style="margin-right:10px;">보험 선택</label>
	                                   	  <select id="selectins" name="selectins"  class="select " >
	                                   	  		<option value="0" selected>보험 미선택</option>
	                                            <option value="0.1">일반자차</option>
	                                            <option value="0.2">완전자차</option>
	                                            <option value="0.5">슈퍼자차</option>
	                                        </select>
                                        </div>
                                    
									<section class="mt-3 p-3">
									<h6>결제 정보</h6><hr>
									<form id="payform" action="${pageContext.request.contextPath}/payment" method="get" onsubmit="false">
									<input type="hidden" name="caridx" value="${car.idx }" >
									<table class="table">
										<tbody>
											<tr>
												<th style="width: 30%;">기본 대여 요금</th>
												<td style="width: 70%; text-align: right;"><input type="text" id="rentPrice"  name="rentPrice" style=" width:90%; text-align: right; background-color:#eeeeee;" readonly><label>원</label></td>
											</tr>
											<c:if test ="${not empty  info.name }">
											<tr>
												<th style="width: 30%;"><button type="button" id="coupon" data-memberIdx="${info.idx}"class="btn btn-secondary" style=" color:#4EA0D8; border-color:#4EA0D8; padding:5px; margin-top:5px;" 
												    		    onclick='window.open("${pageContext.request.contextPath}/selectCoupon/${info.idx }", "쿠폰적용", "width=100, height=auto")'>쿠폰 선택하기</button> </th>
												<td style="width: 70%; text-align: right;">
												    <input type="hidden" id="discountRate"><input type="hidden" id="cIdx">
												   	<input type="text" id="discount" style="color:#4EA0D8;  text-align: right; width:90%; background-color:#eeeeee;"><label>원</label>
											</tr>
											</c:if>
											<c:if test ="${empty  info.name }">
												<input type="hidden" id="discountRate">
											</c:if>
											<tr id ="insSection" >
												<th style="width: 30%;">보험 추가 요금</th>
												<td style="width: 70%; text-align: right;"><input type="text"id="addIns"  name="addIns"style="width:90%; text-align: right;background-color:#eeeeee;" readonly><label>원</label></td>
											</tr>
											<tr id="returnSection">
												<th style="width: 30%;">반납지점 변경 요금</th>
												<td style="width: 70%; text-align: right;"><input type="text"id="addreturn"  name="addreturn" style=" width:90%; text-align: right; background-color:#eeeeee;"readonly><label>원</label></td>
											</tr>
											<tr>
												<th style="width: 30%;">결제금액</th>
												<td style="width: 70%; text-align: right;"><input type="text" id="finalprice"  name="finalprice" style="width:90%; text-align: right;color:red; background-color:#eeeeee;" readonly><label>원</label></td>
											</tr>
										</tbody>
									</table>
									<div id="paysection">
									<div>
											<sec:authorize access="!isAuthenticated()">
												<button class="btn btn-default" id="register" type="button" >회원가입하고 혜택받기</button>
												<button class="btn btn-default" id="payment" type="button" >비회원 결제하기</button>
											</sec:authorize>
									</div>
											<sec:authorize access="isAuthenticated()">
												<button class="btn btn-default" id="payment" type="button" >결제하기</button>
											</sec:authorize>
									</div>
									</form>
								</section>
								</section>
							</aside>
						</div>
</body>

<script type="text/javascript">




var ckName = 0;
var ckBirth = 0;
var ckPhone = 0;
var ckLicense = 0;
var ckEmail = 0;


	$('.main-nav').children().eq(0).children().css('color', '#18B4E9')
	
     //대여,반납일 날짜 초기설정
	 document.getElementById('startDate').valueAsDate = new Date();
	 document.getElementById('endDate').valueAsDate = new Date(); 
	 let price = ${car.price}
	
	 //시스템의 오늘 날짜 변수로 받아오기
	 var today = new Date();   
     var dd = today.getDate();
     var mm = today.getMonth() + 1; 
     var yyyy = today.getFullYear();
    
     if (mm < 10) {
     	  mm = '0' + mm;
     } 
     	    
     today = yyyy + '-' + mm + '-' + dd;
     
     //대여 날짜 선택창에서 오늘 이전은 선택 불가
     document.getElementById("startDate").setAttribute("min", today);
     document.getElementById("endDate").setAttribute("min", today);
     
	
	//페이지 로드 시 초기 설정 설정
	window.onload = function reset() {
		getcarInfo();
		$('input[name=daycount]').attr('value','1');
		$('#rentPrice').attr('value',price);
		$("#addIns").attr('value','0' ); //보험값
		$("#finalprice").attr('value',(price));
		$("#addreturn").attr('value', '0') ;
		$("#discountRate").attr('value', '0') ;
		var discountRate = '0';
	    $('#returnSection').hide();
	    $('#insSection').hide();
	    //비회원일 경우 리뷰 입력 숨기기
		var name = $('#useridx').val();
		if(name !==''){
			$('#insertReviewbody').show();
		} else {
			$('#insertReviewbody').hide();
		}
	}
	


		
		
		
	//대여시작날짜, 반납날짜, 보험 선택을 바꿀때마다 요금을 계산하는 함수
	$('#startDate').on('change', calc);
    $('#endDate').on('change', calc);
    $('#selectins').on('change', calc);
    $('#discountRate').on('change', calc);


    
    //결제요금 계산
    function calc () {
	    var startDate = new Date($('#startDate').val());
	    var endDate = new Date($('#endDate').val());
        var compareDate = Math.round((endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24)) + 1;
      	var discountRate = $('#discountRate').val(); //할인률
      	var price = ${car.price};
      	var insurance = $('#selectins').val(); //추가요금
 	
      	
        //대여일 선택시 반납일을 대여일 이후로 제한
        var sDate = new Date();
        var sdd = startDate.getDate();
        var smm = startDate.getMonth() +1;
     	var syyyy = startDate.getFullYear();
     	
     	//대여, 반납 날짜 제한
     	if (smm < 10) {
     	     	   smm = '0' + smm;
     	} 
        sDate = syyyy+ '-' + smm + '-' +sdd;
        document.getElementById("endDate").setAttribute("min", sDate);
       
        
		//반납지점이 대여지점과 다르면 추가 요금 부과
		if ($('#returnSelect').val()== undefined ){
			$("#addreturn").attr('value','0');
		} else if ($('#returnSelect').val() !== "${car.locationIdx}" ) {
			$("#addreturn").attr('value', '10000') ;
		} else if ($('#returnSelect').val() == "${car.locationIdx}" ) {
			$("#addreturn").attr('value', '0') ;
		}
    	var returnfee = parseInt($('#addreturn').val());
        
    	//보험,반납지점 미선택시 요금영역에서 숨기기 
    	 if (insurance !== "0") {
         	$('#insSection').show();
         }  else if (insurance == "0") {
         	$('#insSection').hide();
         } 
         if (returnfee !== 0) {
         	$('#returnSection').show();
         }else if (returnfee == 0) {
         	$('#returnSection').hide();
         } 
    	
          //반납일이 대여일보다 먼저 올 때 대여일을 반납일로 설정
	       if(compareDate <1) {
	           var sDate = new Date();
	           var sdd = String(startDate.getDate());
	           var smm = String(startDate.getMonth() +1);
	           var syyyy = String(startDate.getFullYear());
	           if(smm.length == 1) {
	        		smm = "0" + smm;
	    		}	if(sdd.length == 1) {
	    			sdd = "0" + sdd;
	    		}
	        	sDate = syyyy+ '-' + smm + '-' +sdd;
	  		 const dateControl = document.querySelector('input[id="endDate"]');
			 dateControl.value = sDate;
			 calc();
	       }else {
		      //대여일이 반납일보다 정상적으로 선택 되었을떄 요금계산
	     	  $('#day-count').attr('value',compareDate);
	     	  $('#rentPrice').attr('value',(price * compareDate));
	     	  $('#discount').attr('value',(price * compareDate *(discountRate/100)));
	     	  $("#addIns").attr('value',(price * insurance *compareDate));
	     	  $("#finalprice").attr('value',((compareDate*price)+(compareDate * price * insurance) - (price *compareDate* discountRate / 100)));
	     	  
	       }
      }

</script>
</html>