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
		<div class="content-area single-property" style="background-color: #FCFCFC;">
			<div class="container">
				<div class="clearfix padding-top-40">
						<div class="col-md-8 single-property-content">
					
					<!-- 좌측 컨텐츠 -->
					<div id="content">
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
                                 		  <label>보험 선택</label>
	                                   	  <select id="selectins" name="selectins" class="selectpicker" >
	                                            <option value="0.1" selected>일반자차(기본)</option>
	                                            <option value="0.2">완전자차</option>
	                                            <option value="0.5">슈퍼자차</option>
	                                        </select>
                                        </div>
                                    </div>
                                    
									<section class="mt-3 p-3">
									<h6>결제 정보</h6><hr>
									<form id="payform" action="<%=request.getContextPath() %>/payment" method="get" onsubmit="false">
									<input type="hidden" name="carIdx" value="${car.idx }" >
									<table class="table">
										<tbody>
											<tr>
												<th>대여 일수</th>
												<td><input type="text" id="day-count" name="daycount" value="" readonly /><label>일</label></td>
											</tr>
											<tr>
												<th>기본 대여 요금</th>
												<td><input type="text" id="rentPrice"  name="rentPrice" readonly><label>원</label></td>
											</tr>
											<tr>
												<th>보험 추가 요금</th>
												<td><input type="text"id="addIns"  name="addIns" readonly><label>원</label></td>
											</tr>
											<tr>
												<th>예상결제금액</th>
												<td><input type="text" id="expIns"  name="expIns" readonly><label>원</label></td>
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
						<!-- 날짜 선택 끝 -->
						
				</div>
			</div>
		</div>
	</section>
	<button type="button" id="testBtn">test</button>
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
</body>


<script type="text/javascript">
	$('#testBtn').on('click', function() {
		var date = new Date($('#startDate').val());
		var ddd = date.getFullYear() + "/" + (date.getMonth() + 1) + "/" + date.getDate();
		
	})	
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
     
	
	//페이지 로드 시 대여,반납일을 오늘로 설정
	window.onload = function reset() {
		getcarInfo();
		$('input[name=daycount]').attr('value','1');
		$('#rentPrice').attr('value',price.toLocaleString());
		$("#addIns").attr('value',(price * 0.1 ).toLocaleString());
		$("#expIns").attr('value',(price+price * 0.1).toLocaleString());
	}
 
  
	
	//대여시작날짜, 반납날짜, 보험 선택을 바꿀때마다 요금을 계산하는 함수
	$('#startDate').on('change', calc);
    $('#endDate').on('change', calc);
    $('#selectins').on('change', calc);
    
    
    function calc () {
	    var startDate = new Date($('#startDate').val());
	    var endDate = new Date($('#endDate').val());
        var compareDate = Math.round((endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24)) + 1;
      	var price = ${car.price};
      	var insurance = $('#selectins').val(); //추가요금
		console.log(startDate);
		console.log(endDate);
		console.log(price);
		console.log(insurance);
        console.log(compareDate);
        
        //대여일 선택시 반납일을 대여일 이후로 제한
        var sDate = new Date();
        var sdd = startDate.getDate();
        var smm = startDate.getMonth() +1;
     	var syyyy = startDate.getFullYear();
     	if (smm < 10) {
     	     	   smm = '0' + smm;
     	} 
        sDate = syyyy+ '-' + smm + '-' +sdd;
        document.getElementById("endDate").setAttribute("min", sDate);
      	
           //반납일이 대여일보다 먼저 올 때 결제창 초기화
	       if(compareDate <1) {
	    	  alert("반납일이 대여일보다 먼저 올 수 없습니다.다시 선택해 주세요.");
	    	  $('#day-count').attr('value', '');
	      	  $('#rentPrice').attr('value', '');
	      	  $("#addIns").attr('value', '');
	      	  $("#expIns").attr('value', '');
			  return false;
	       }else {
		      //대여일이 반납일보다 먼저 올 때 요금 정상계산
	     	  $('#day-count').attr('value',compareDate);
	     	  $('#rentPrice').attr('value',(price * compareDate).toLocaleString());
	     	  $("#addIns").attr('value',(price * insurance *compareDate).toLocaleString());
	     	  $("#expIns").attr('value',(compareDate*price+ compareDate * price * insurance).toLocaleString());
	       }
      }
    
	$('#register').on('click', function() {
		location.href='<%=request.getContextPath()%>/member/register';
	});
    
	$('#payment').on('click', content);
	$('#payment').on('click', payajax);


	
	//결제하기 버튼 눌렀을때 바뀔 ajax 불러오기
	function content() {
		  $.ajax({
	          url:'<%=request.getContextPath()%>/payment',
	          type: 'get',
	          dataType:'json',
	          success: function(result) {
				getPayinfo(result);  
	          },
	          error: function() {
	          	alert('로딩 실패');
	          }
	       });
	}
	
	
	
	
	

	function getcarInfo() {
		var html = '';
		
				html += '		<div class="row">'
				html += '		<div class="light-slide-item">     '       
				html +=	'		<div class="clearfix">'
				html +=	'			<div class="favorite-and-print">'
				html +=	'				<a class="add-to-fav" href="#login-modal" data-toggle="modal"><i class="fa fa-star-o"></i></a>'
				html +=	'			</div> '
				html +=	'			${car.image }'
				html +=	'		</div>'
				html +=	'	</div>'
				html += '	</div>'
				html +=	'<div class="single-property-wrapper">'
				html +=	'	<div class="single-property-header">      '                                    
				html +=	'		<h1 class="property-title pull-left">${car.model } </h1>'
				html +=	'		<span class="property-price pull-right">${car.price }원</span>'
				html +=	'	</div>'
				html +=	'	<div class="property-meta entry-meta clearfix ">   '
				html +=	'		<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">'
				html +=	'			<div class="property-icon">'
				html +=	'				<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/clock.png">'
				html +=	'				<span class="property-info-value">연식 ${car.year }년</span>'
				html +=	'			</div>'
				html +=	'			</div>'
				html +=	'		</div>'
				html +=	'	<div class="property-meta entry-meta clearfix ">   '
				html +=	'		<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">'
				html +=	'			<div class="property-icon">'
				html +=	'				<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/fuel.png">'
				html +=	'				<span class="property-info-label">연료</span>'
				html +=	'				<span class="property-info-value">${option.fuelname }</span>'
				html +=	'			</div>'
				html +=	'		</div>'
				html +=	'	</div>'
				html +=	'		<div class="property-meta entry-meta clearfix ">   '
				html +=	'		<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">'
				html +=	'			<div class="property-icon">		'
				html +=	'				<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/car.png">'
				html +=	'				<span class="property-info-value">${option.typename }</span>'
				html +=	'			</div>'
				html +=	'		</div>'
				html +=	'	</div>'
				html +=	'	<!-- .property-meta -->'
				html +=	'	<div class="section">'
				html +=	'		<h4 class="s-property-title">운전자 대여조건</h4>'
				html +=	'		<div class="s-property-content">'
				html +=	'		<p>'
				html +=	'				면허취득일 1년 이상<br>'
					
				html +=	'				차량 대여 시 실물면허증 소지 (2종 보통 면허 이상 필요)<br>'
					
				html +=	'				업체별 대여규정 준수 (외국인 대여, 낚시용품/애견 동반, 주행거리제한 규정 등)'
				html +=	'		</div>'
				html +=	'	</div>'
				html +=	'	<!-- End description area  -->'
				html +=	'	<div class="section additional-details">'
				html +=	'		<h4 class="s-property-title">차량 정보</h4>'
				html +=	'		<ul class="additional-details-list clearfix">'
				html +=	'			<li>'
				html +=	'				<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront</span>'
				html +=	'				<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${car.year }</span>'
				html +=	'			</li>'
				html +=	'			<li>'
				html +=	'				<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Built In</span>'
				html +=	'				<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${car.typename }</span>'
				html +=	'			</li>'
				html +=	'			<li>					'
				html +=	'				<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Parking</span>'
				html +=	'			<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2 Or More Spaces,Covered Parking,Valet Parking</span>'
				html +=	'			</li>'
				html +=	'			<li>'
				html +=	'				<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront</span>'
				html +=	'				<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>'
				html +=	'			</li>'
				html +=	'			<li>'
				html +=	'				<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">View</span>'
				html +=	'				<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Intracoastal View,Direct ew</span>'
				html +=	'			</li>'
				html +=	'			<li>'
				html +=	'				<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront Description:</span>'
				html +=	'				<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Intracoastal Front,Ocean Access</span>'
				html +=	'			</li> '
				html +=	'		</ul>'
				html +=	'	</div>  '
				html +=	'	<!-- End additional-details area  -->'
				html +=	'	<div class="section property-features">   '
				html +=	'	<div>   '
				html +=	'	<h4 class="s-property-title">대여점 정보</h4>      '                      
				html +=	'	<ul>'
				html +=	'		<li>'
				html +=	'			<h5><label>대여점:  ${car.name } </label></h5><br>'
				html +=	'			</li>		'
				html +=	'				<div class="blog-lst col-md-12 padding-top-40" style="float: left;">'
				html +=	'					<section id="id-100" class="post single">'
				html +=	'						<div id="map" style="width:100%; height:400px"></div>   '
				html +=	'					</section>'
				html +=	'			</div>'
				html +=	'		<li>'
				html +=	'			 <h5><label>전화번호: ${car.phoneNumber } </label></h5>'
				html +=	'		</li>'
				html +=	'		<li>'
				html +=	'			<h5><label>운영 시간: ${car.businessHours } </label></h5>'
				html +=	'			</li>'
				html +=	'			<li>'
				html +=	'				<h5><label>주소: ${car.address } </label></h5>'
				html +=	'			</li>'
			
				html +=	'		</ul>'
				html +=	'	</div>'
				html +=	'		<!-- 리뷰 영역 시작 -->'
				html +=	'		<div class="section">'
				html +=	'			<h4 class="s-property-title">리뷰</h4>'
				html +=	'		<div class="s-property-content">'
				html +=	'			<p>Nulla quis dapibus nisl. Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies commodo arcu nec pretium. Nullam sed arcu ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies </p>'
				html +=	'		</div>'
				html +=	'	</div>'
				html +=	'	<!-- 리뷰 영역 끝 -->'
				html +=	'	<!-- End features area  -->'
				html +=	'</div>'
				html +=' </div>'
					$('#content').html(html);
	
				}
	
	//결제하기 눌렀을때 출력될 회원용 화면
	function getPayinfo(result) {
		var html ='';
		if(result == 1) {
			html += '<section>'
				html += '	<div style="text-align:center">';
				html += '		<h2>결제 정보</h2>';
				html += '	</div>';
				html += '	<div style="overflow: hidden;">';
				html += '		<div class="blog-asside-right col-md-12" style="padding: 80px;" >';
				html += '				<div class="form-group">';
				html += '					<h6 style="text-align:center">예약 정보 </h6>';
				html += '---';
				html += '					<h4>${car.model }  ${car.year }년 형</h4>';
				html += '					<h5>${car.name } </h5>';
				html += '---';
				html += '		</div>';
				html += '		<div class="form-group">';
				html += '					<h6 style="text-align:center">운전자 정보 </h6>';
				html += '						<label class="small">이름</label>  <input type="text" id="name" class="form-control" placeholder="성명" value="" >';
				html += '						<label class="small">생년월일</label>  <input type="text" id="birth" class="form-control" placeholder="생년월일 6자리" value="" >';
				html += '						<label class="small">휴대폰 번호</label>  <input type="text"  id="phone" class="form-control" placeholder="휴대폰 번호" value="" >';
				html += '						<label class="small">이메일</label>  <input type="text"  id="mail" class="form-control" placeholder="이메일" value="" >';
				html += '						<label class="small">반납 장소 선택</label>';
				html += '		</div>';
				html += '	</div>';
		} else {
		html += '<section>'
		html += '	<div style="text-align:center">';
		html += '		<h2>결제 정보</h2>';
		html += '	</div>';
		html += '	<div style="overflow: hidden;">';
		html += '		<div class="blog-asside-right col-md-12" style="padding: 80px;" >';
		html += '				<div class="form-group">';
		html += '					<h6 style="text-align:center">예약 정보 </h6>';
		html += '---';
		html += '					<h4>${car.model }  ${car.year }년 형</h4>';
		html += '					<h5>${car.name } </h5>';
		html += '---';
		html += '		</div>';
		html += '		<div class="form-group">';
		html += '					<h6 style="text-align:center">운전자 정보 </h6>';
		html += '						<label class="small">이름</label>  <input type="text" id="name" class="form-control" placeholder="성명" value="'+ result.info.name+'" >';
		html += '						<label class="small">생년월일</label>  <input type="text" id="birth" class="form-control" placeholder="생년월일 6자리" value="'+ result.info.birth+'" >';
		html += '						<label class="small">휴대폰 번호</label>  <input type="text"  id="phone" class="form-control" placeholder="휴대폰 번호" value="'+ result.info.phoneNumber+'" >';
		html += '						<label class="small">이메일</label>  <input type="text"  id="mail" class="form-control" placeholder="이메일" value="'+ result.info.email+'" >';
		html += '						<label class="small">반납 장소 선택</label>';
		html += '		</div>';
		html += '	</div>';			
		}

		$('#content').html(html);
	}
	
	//결제하기 눌렀을때 결제수단 출력	
	function payajax() {
		var html ='';
		html += '				</section>';
		html += '						<button class="btn btn-default" id="paybtn" type="button" onclick=" pay()" >카드결제</button>';
		html += '						<button class="btn btn-kakao" id="kakaobtn" type="button" onclick=" kakaopay()" >카카오페이</button>';
		html += '					</aside>';

		html += '	</div>';
		html += '</section>';
		$('#paysection').html(html);
	}
   
	
	//카드결제 
	function pay() {
	    var IMP = window.IMP;
	    IMP.init("imp01440251");
	    // 원포트 관리자 페이지 -> 내정보 -> 가맹점식별코드
	    // ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
	    IMP.request_pay({
	        pg: 'html5_inicis',  // 실제 계약 후에는 실제 상점아이디로 변경
	        pay_method: 'card', // 'card'만 지원됩니다.
	        merchant_uid: 'merchant_' + new Date().getTime(), // 상점에서 관리하는 주문 번호
	        name: '차자조 테스트 결제', // 상품 이름
	        amount: 100, // 결제창에 표시될 금액. 실제 승인이 이뤄지지는 않습니다.
	        buyer_email: '${info.email }',
	        buyer_name: '${info.name }',
	        buyer_tel: '${info.phoneNumber}',
	        buyer_addr: '서울특별시 강남구 삼성동',
	        buyer_postcode: '123-456',
	        m_redirect_url: '/'
	    }, function (rsp) {
	        if (rsp.success) {  // 결제가 성공했을 떄
	            // 결제가 완료되었을 떄 결제 정보를 뜨게 만듬
	            var msg = '결제가 완료되었습니다.';
	            msg += '고유ID : ' + rsp.imp_uid;
	            msg += '상점 거래ID : ' + rsp.merchant_uid;
	            msg += '결제 금액 : ' + rsp.paid_amount;
	            msg += '카드 승인번호 : ' + rsp.apply_num;
	        } else {    // 결제가 실패했을 때
	            // 결제에 실패했을떄 실패메세지와 실패사유를 출력
	            var msg = '결제에 실패하였습니다.';
	            msg +=  rsp.error_msg;
	        }
	        alert(msg);
	    });
	}
	
	//카카오페이 결제
	function kakaopay() {
	    var IMP = window.IMP;
	    IMP.init("imp01440251");
	    // 원포트 관리자 페이지 -> 내정보 -> 가맹점식별코드
	    // ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
	    IMP.request_pay({
	        pg: 'kakaopay',  // 실제 계약 후에는 실제 상점아이디로 변경
	        pay_method: 'card', // 'card'만 지원됩니다.
	        merchant_uid: 'merchant_' + new Date().getTime(), // 상점에서 관리하는 주문 번호
	        name: '차자조 테스트 결제', // 상품 이름
	        amount: 100, // 결제창에 표시될 금액. 실제 승인이 이뤄지지는 않습니다.
	        buyer_email: '${info.email }',
	        buyer_name: '${info.name }',
	        buyer_tel: '${info.phoneNumber}',
	        buyer_addr: '서울특별시 강남구 삼성동',
	        buyer_postcode: '123-456',
	        m_redirect_url: '/'
	    }, function (rsp) {
	        if (rsp.success) {  // 결제가 성공했을 떄
	            // 결제가 완료되었을 떄 결제 정보를 뜨게 만듬
	            var msg = '결제가 완료되었습니다.';
	            msg += '고유ID : ' + rsp.imp_uid;
	            msg += '상점 거래ID : ' + rsp.merchant_uid;
	            msg += '결제 금액 : ' + rsp.paid_amount;
	            msg += '카드 승인번호 : ' + rsp.apply_num;
	        } else {    // 결제가 실패했을 때
	            // 결제에 실패했을떄 실패메세지와 실패사유를 출력
	            var msg = '결제에 실패하였습니다.';
	            msg +=  rsp.error_msg;
	            paid();
	        }
	        alert(msg);
	    });
	}
	
	//결제 성공시 정보 저장
	function paid(){
		var nameval = $('#name').val();
		var birthval = $('#birth').val();
		var phoneval = $('#phone').val();
		var mailval = $('#mail').val();

		var sdate = new Date($('#startDate').val());
		var edate = new Date($('#endDate').val());
		var startDate = sdate.getFullYear() + "/" + (sdate.getMonth() + 1) + "/" + sdate.getDate();
		var endDate = edate.getFullYear() + "/" + (edate.getMonth() + 1) + "/" + edate.getDate();
	    
		var data = {
	        	  "name" :nameval,
	        	  "birth" : birthval,
	        	  "phone" : phoneval,
	        	  "mail" : mailval,
	        	  "startDate" :startDate,
	        	  "endDate" :endDate
	          };
		console.log("paid!!!!!!!!!!");
		console.log("${car.idx}");
		console.log(nameval + birthval + phoneval + mailval + startDate + endDate );
		
		  $.ajax({
	          url:'<%=request.getContextPath()%>/payment/paid',
	          contentType: 'application/json; charset=utf-8',
	          type: 'post',
	          dataType:'json',
	          data: JSON.stringify(data),
	          success: function(result) {
	        	  if(result >0) {
	        	  alert("결제 완료 되었습니다");
	        	  } else {
	        		  alert("결제가 완료되지 않았습니다")
	        	  }
	          },
	          error: function() {
	          	alert('로딩 실패');
	          }
	       });
		
	}

		// <맵 생성>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(${car.latitude}, ${car.longitude}), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		var imageSrc = 'https://cdn-icons-png.flaticon.com/512/5695/5695641.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(65, 72), // 마커이미지의 크기입니다
		imageOption = {offset: new kakao.maps.Point(27, 69)}; 
		 
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		markerPosition = new kakao.maps.LatLng(37.49640072828634, 127.02725329040501)
		 
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [
		    {
		        content: '<div>차자조 강남점</div>', 
		        latlng: new kakao.maps.LatLng(37.49640072828634, 127.02725329040501)
		    },
		    {
		        content: '<div>차자조 용산점</div>', 
		        latlng: new kakao.maps.LatLng(37.529538323634696, 126.96746826066268)
		    },
		    {
		        content: '<div>차자조 수원점</div>', 
		        latlng: new kakao.maps.LatLng(37.264552267986566, 126.99859642936599)
		    },
		    {
		        content: '<div>차자조 일산점</div>',
		        latlng: new kakao.maps.LatLng(37.66835722957077, 126.75113514893188)
		    },
		    {
		        content: '<div>차자조 송도점</div>',
		        latlng: new kakao.maps.LatLng(37.395677541772194, 126.63883623016922)
		    }
		];
		
		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng ,// 마커의 위치
		        image: markerImage
		    });
		
		    // 마커에 표시할 인포윈도우를 생성합니다 
		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });
		
		    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
		    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		}
		
		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}
		
		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}


	
</script>


</html>