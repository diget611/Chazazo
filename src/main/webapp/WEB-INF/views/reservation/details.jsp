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
							<input type="text" id="useridx"  value="${info.idx }" >
							<div id="content">
							</div>
							<div>
							<table>
									<tr>
										<td ></td>
										<td width="100">idx</td>
										<td width="100">닉네임</td>
										<td width="100">리뷰내용</td>
										<td></td>
									</tr>
								<c:forEach items="${rList }" var="review" varStatus="i">
									<tr>
										<td><input type="hidden" id="reviewIdx" value="${review.idx }" ></td>
										<td width="100" id="reviewIdx">${review.idx}</td>
										<td width="100">${review.name}</td>
										<td width="100">${review.content}</td>
										<td><input class="likebtn" type="button" id="like${review.idx}" name="like${review.idx}" value="좋아요"> ${review.recommend}
										<input type="hidden" value="${review.idx}" name="reviewidx" id="reviewidx">
										<input type="hidden" value="${review.recommend}" name="recommend" id="recommend"></td>
									</tr>
								</c:forEach>
							</table>
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
                                        <div class="selectbox ">
                                 		  <label>보험 선택</label>
                                 		  <br>
	                                   	  <select id="selectins" name="selectins"  class="select " >
	                                   	  		<option value="0" selected>보험 미선택</option>
	                                            <option value="0.1">일반자차</option>
	                                            <option value="0.2">완전자차</option>
	                                            <option value="0.5">슈퍼자차</option>
	                                        </select>
                                        </div>
                                    </div>
                                    
									<section class="mt-3 p-3">
									<h6>결제 정보</h6><hr>
									<form id="payform" action="<%=request.getContextPath() %>/payment" method="get" onsubmit="false">
									<input type="hidden" name="caridx" value="${car.idx }" >
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
											<tr id ="insSection" >
												<th >보험 추가 요금</th>
												<td><input type="text"id="addIns"  name="addIns" readonly><label>원</label></td>
											</tr>
											<tr id="returnSection">
												<th>반납지점 변경 요금</th>
												<td><input type="text"id="addreturn"  name="addreturn" readonly><label>원</label></td>
											</tr>
											<tr>
												<th>결제금액</th>
												<td><input type="text" id="finalprice"  name="finalprice" style="color:red" readonly><label>원</label></td>
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
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
	
</body>


<script type="text/javascript">
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
		$("#addIns").attr('value','0' );
		$("#finalprice").attr('value',(price+price * 0.1));
		$("#addreturn").attr('value', '0') ;
	    $('#returnSection').hide();
	    $('#insSection').hide();
	    //비회원일 경우 리뷰 입력 숨기기
		var name = $('#useridx').val();
		if(name !==''){
			$('#insertReview').show();
		} else {
			$('#insertReview').hide();
		}

	}

		
		
		
	//대여시작날짜, 반납날짜, 보험 선택을 바꿀때마다 요금을 계산하는 함수
	$('#startDate').on('change', calc);
    $('#endDate').on('change', calc);
    $('#selectins').on('change', calc);


    
    //결제요금 계산
    function calc () {
	    var startDate = new Date($('#startDate').val());
	    var endDate = new Date($('#endDate').val());
        var compareDate = Math.round((endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24)) + 1;
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
	     	  $("#addIns").attr('value',(price * insurance *compareDate));
	     	  $("#finalprice").attr('value',((compareDate*price)+(compareDate * price * insurance)+returnfee));
	       }
      }
    
    //회원가입 클릭시 이동
	$('#register').on('click', function() {
		location.href='<%=request.getContextPath()%>/member/register';
	});
    
    //결제하기 누르면 ajax불러오기
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
				var test = '<%=request.getContextPath()%>/resources/js/validation.js';
				$('.footer-copy').after('<script src="' + test + '"/>');
	          },
	          error: function() {
	          	alert('로딩 실패');
	          }
	       });
	}
	
	
	
	
	

	function getcarInfo(result) {
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
				html +=	'		<h4 class="s-property-title">대여점 정보</h4>'

				html +=	'		<ul class="additional-details-list clearfix">'
				html +=	'			<li>'
				html +=	'				<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">대여지점</span>'
				html +=	'				<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">차자조 ${car.name }</span>'
				html +=	'			</li>'
				html +=	'			<li>'
				html +=	'				<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">운영시간</span>'
				html +=	'				<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${car.businessHours }</span>'
				html +=	'			</li>'
				html +=	'			<li>					'
				html +=	'				<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">전화번호</span>'
				html +=	'			<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${car.phoneNumber}</span>'
				html +=	'			</li>'
				html +=	'			<li>'
				html +=	'				<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">주소</span>'
				html +=	'				<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${car.address}</span>'
				html +=	'			</li>'
				html +=	'		</ul>'
				html +=	'				<div class="blog-lst col-md-12 padding-top-40" style="float: left;">'
				html +=	'					<section id="id-100" class="post single">'
				html +=	'						<div id="map" style="width:100%; height:400px"></div>   '
				html +=	'					</section>'
				html +=	'				</div>'
				html +=	'	</div>  '
				html +=	'	<!-- End additional-details area  -->'
				html +=	'	<div class="section property-features">   '
				html +=	'		<!-- 리뷰 영역 시작 -->'
				html +=	'		<div class="section">'
				html +=	'			<h4 class="s-property-title">리뷰</h4>'
				html +=	'			<table class="table review">'
				html +=	'				<tr>'
				html +=	'					<td width="100">아이디</td>'
				html +=	'					<td>리뷰내용</td>'
				html +=	'				</tr>'
				html +=	'			<c:forEach items="${rList }" var="review" varStatus="i">'
				html +=	'				<tr>'
				html +=	'					<td width="100">${review.name}</td>'
				html +=	'					<td>${review.content}</td>'
				html +=	'				</tr>'
				html +=	'			</c:forEach>'
				html +=	'		</table>'
				html +=	'		<div id="insertReview">'
				html +=	'			<label >리뷰를 등록하세요</label>'
				html +=	'				 <input type="text" name="reviewcontent" style=" border:4px solid #4ea0d8;" ></input>'
				html +=	'			<button type="button" id="reviewbtn" onclick="postReview()">등록하기</button>'
				html +=	'		</div>'
				html +=	'	</div>'
				html +=	'	<!-- 리뷰 영역 끝 -->'
				html +=	'	<!-- End features area  -->'
				html +=	'	</div>'
				html +=' </div>'
				$('#content').html(html);
				getMap();
				}

	
	//리뷰 등록		
		function postReview() {
			var content = $('[name=reviewcontent]').val()
			var memberIdx = $('#useridx').val();
			var vehicleIdx = $('[name=caridx]').val();
			console.log("리뷰뷰뷰뷰"+memberIdx+"$$"+vehicleIdx+content);

			var data ={
					"vehicleIdx":vehicleIdx,
					"memberIdx": memberIdx,
					"content" : content
			}
			  $.ajax({
		          url:'<%=request.getContextPath()%>/postReview',
		          contentType: 'application/json; charset=utf-8',
		          type: 'post',
		          dataType:'json',
		          data: JSON.stringify(data),
		          success: function(result) {
		        	  alert('리뷰가 등록되었습니다')
		        	  location.reload();
		          },
		          error: function() {
		          	alert('리뷰 등록 실패');
		          }
		       });
		}
	
	
	//좋아요
	 $('.likebtn').click(function(){
		var reviewidx = $(this).next().val();
		var recommend = $(this).next().next().val();
		recommend++;
		alert(typeof reviewidx +reviewidx);
		
		console.log("좋아요"+ reviewIdx +"!!!"+recommend);
		var data= {
			"idx" : reviewIdx,
			"recommend" :recommend
		}
		$.ajax({
			url:'<%=request.getContextPath()%>/insertLike',
			 contentType: 'application/json; charset=utf-8',
	         type: 'post',
	         dataType:'json',
		     data: JSON.stringify(data),
	         success: function(result) {
	        	  location.reload();
	          },
	          error: function() {
	          	alert('좋아요 등록 실패');
	          }
		});		
	});
	
	
	//결제하기 눌렀을때 정보 입력창
	function getPayinfo(result) {
		var html ='';
		//결제하기 눌렀을때 출력될 비회원용 화면
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
				html += '						<input type="hidden" id="useridx"  value="0" >'
				html += '						 <label class="small">이름</label> <div> <input type="text" id="name" name="name" class="form-control" placeholder="성명" value="" > </div>';
				html += '						 <label class="small">생년월일</label>    <div>	<input type="text" id="birth" name="birth" class="form-control" placeholder="예시) 19901227" value="" > </div>';
				html += '						<label class="small">휴대폰 번호</label>   <div>   <input type="text"  id="phone" name="phoneNumber" class="form-control" placeholder="예시) 01012345678" value="" > </div>';
				html += '						<label class="small">운전 면허 번호</label> <div>   <input type="text"  id="license" name="license" class="form-control" placeholder="운전 면허 번호 12자리" value="" > </div>';
				html += '						<label class="small">이메일</label>       <div>   <input type="text"  id="mail" name="email" class="form-control" placeholder="example@mail.com" value="" > </div>';
				html += '						<div class="selectbox "><label class="small">반납지점 선택</label><br> <select class="select " name="returnSelect" id="returnSelect" onchange="calc()">';
				html += '	 					  	  <option value="1">강남점</option>';
				html += '	 						  <option value="2">용산점</option>';
				html += '							  <option value="3">수원점</option>';
				html += '							  <option value="4">일산점</option>';
				html += '							  <option value="5">송도점</option>';
				html += '						</div>';
				html += '		</div>';
				html += '	</div>';			
				html += '</section>';
		} 
		//결제하기 눌렀을때 출력될 회원용 화면
		else {
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
		html += '						<input type="hidden" id="useridx"  value="'+ result.info.idx+'" >'
		html += '						<label class="small">이름</label>  <div> <input type="text" id="name" name ="name" class="form-control"  value="'+ result.info.name+'" readonly> </div>';
		html += '						<label class="small">생년월일</label>  <div> <input type="text" id="birth" name="birth" class="form-control" value="'+ result.info.birth+'" readonly> </div>';
		html += '						<label class="small">휴대폰 번호</label> <div> <input type="text"  id="phone" name="phoneNumber" class="form-control"  value="'+ result.info.phoneNumber+'" readonly> </div>';
		html += '						<label class="small">운전 면허 번호</label>  <div><input type="text"  id="license" name="license" class="form-control"  value="'+ result.info.license+'"readonly > </div>';
		html += '						<label class="small">이메일</label>  <div> <input type="text"  id="mail" name="email"class="form-control"  value="'+ result.info.email+'" readonly> </div>';
		html += '						<div class="selectbox "><label class="small">반납지점 선택</label><br> <select class="select " name="returnSelect" id="returnSelect" onchange="calc()"> </div>';
		html += '	 					  	  <option value="1">강남점</option>';
		html += '	 						  <option value="2">용산점</option>';
		html += '							  <option value="3">수원점</option>';
		html += '							  <option value="4">일산점</option>';
		html += '							  <option value="5">송도점</option>';
		html += '						</div>';
		html += '		</div>';
		html += '	</div>';			
		html += '</section>';
		}

		$('#content').html(html);
		$("#returnSelect").val("${car.locationIdx}").prop("selected", true);

	}

	
	//결제하기 눌렀을때 결제수단 출력	
	function payajax() {
		var html ='';
		html += '				</section>';
		html += '						<button class="btn btn-default" id="paybtn" type="button" onclick=" checkForm()"  >카드결제</button>';
		html += '						<button class="btn btn-kakao" id="kakaobtn" type="button" onclick=" checkForm2()" >카카오페이</button>';
		html += '					</aside>';

		html += '	</div>';
		html += '</section>';
		$('#paysection').html(html);
		}
	

	//카드결제 전 입력정보 유효성 검사
	function checkForm(){

		let testName = /^[가-힣]{2,10}$/;
		let testBirth = /^(19[0-9]{2}|20[0-1]{1}[0-9]{1}|202[0-3]{1})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
		let testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
		let testLicense = /^(1[1-9]|2[0-68-8])([0-9]{2}[0-9]{6}[0-9]{2})$/;
		let testEmail = /([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~])+\")@([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])/;
		
		 if( $('[name=name]').val() == ''
		| $('[name=birth]').val() == ''  | $('[name=phonNumber]').val() == ''
		| $('[name=license]').val() == '' | $('[name=email]').val() == '' ) {
			alert("예약 정보를 다시 확인해주세요");
			return false;
		} else if(!testName.test($('[name=name]').val()) | !testBirth.test($('[name=birth]').val())
		| !testPhone.test($('[name=phoneNumber]').val()) | !testLicense.test($('[name=license]').val())
		| !testEmail.test($('[name=email]').val())) {
			alert("예약 정보를 다시 확인해주세요");
			return false;	
		} else if($('#finalprice').val() == 0){
			alert("결제할 정보가 없습니다")
			return false;
		}
		else {
			pay();
		}
	}
	//카카오페이결제 전 입력정보 유효성 검사
	function checkForm2(){

		let testName = /^[가-힣]{2,10}$/;
		let testBirth = /^(19[0-9]{2}|20[0-1]{1}[0-9]{1}|202[0-3]{1})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
		let testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
		let testLicense = /^(1[1-9]|2[0-68-8])([0-9]{2}[0-9]{6}[0-9]{2})$/;
		let testEmail = /([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~])+\")@([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])/;
		
		 if( $('[name=name]').val() == ''
		| $('[name=birth]').val() == ''  | $('[name=phonNumber]').val() == ''
		| $('[name=license]').val() == '' | $('[name=email]').val() == '' ) {
			alert("예약 정보를 다시 확인해주세요");
			return false;
		} else if(!testName.test($('[name=name]').val()) | !testBirth.test($('[name=birth]').val())
		| !testPhone.test($('[name=phoneNumber]').val()) | !testLicense.test($('[name=license]').val())
		| !testEmail.test($('[name=email]').val())) {
			alert("예약 정보를 다시 확인해주세요");
			return false;	
		} else {
			kakaopay();
		}
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
	            paid(); //결제 정보 저장
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
	            paid(); //결제 정보 저장
	            }
	        alert(msg);
	    });
	}
	
	
	
	//결제 성공시 결제 정보 저장
	function paid(){
		var returnval = $('#returnSelect option:selected').val();
		var finalprice = parseInt($('#finalprice').val());
		var caridx = $('#caridx').val();
		var useridx = $('#useridx').val();
		var returnLocation =$("#returnSelect").val();

		//결제 시간 저장을 위한 현재 시간 포맷
		const TIME_ZONE = 9 * 60 * 60 * 1000; // 9시간
		const d = new Date();

		const date = new Date(d.getTime() + TIME_ZONE).toISOString().split('T')[0];
		const time = d.toTimeString().split(' ')[0];
		var paidtime= date + " " + time;
		console.log("paidtime:::::::" +paidtime);
		if ($(''))
		var sdate = new Date($('#startDate').val());
		var edate = new Date($('#endDate').val());
		var startDate = sdate.getFullYear() + "/" + (sdate.getMonth() + 1) + "/" + sdate.getDate();
		var endDate = edate.getFullYear() + "/" + (edate.getMonth() + 1) + "/" + edate.getDate();

		//주문번호 생성을 위한 현재 시간, 랜덤 문자열 생성
		var today = new Date();
		var year = today.getFullYear();
		var year = String(year);
		var yy = year.substring(2,4);
		var month = new String(today.getMonth()+1);
		var day = new String(today.getDate());
		
		var hour = new String(today.getHours());
		var minute = new String(today.getMinutes());
		if(month.length == 1) {
			month = "0" + month;
		} if(day.length ==1) {
			day = "0" + day;
		} if(hour.length == 1) {
			hour = "0" + hour;
		} if(minute.length == 1) {
			minute = "0" + minute;
		} 
		var daynum = yy+month+day+hour+minute;

		const randomNumber = Math.floor(Math.random()*(999-100)+100);
		var random = String(randomNumber);
		
		var payidx = (daynum + random)*1;
		
		
		//보험 선택값주기
		if ( $('#selectins').val()=='0.1'){
				var ins = "2"
			} else if ( $('#selectins').val()=='0.2') {
				var ins = "3"
			} else if( $('#selectins').val()=='0.5'){
				var ins = "4"				
			} else {
				var ins = "1"
			}
		
		//비회원,회원 식별값 주기
		if(useridx =='0') {
			var ismember ='0';
		} else {
			var ismember ='1';
		}
		
		
		var data = {
				  "idx" : payidx,
	        	  "ismember" : ismember,
	        	  "memberIdx" : useridx, // 회원idx, 비회원은 0
	        	  "vehicleIdx" : "${car.idx}", //차량idx
	        	  "insurance": ins, //선택한 보험종류
	        	  "finalprice" : finalprice, //결제금액
	        	  "paidtime": paidtime, //결제시간
				  "startDate":startDate, //대여일
				  "endDate":endDate, //반납일
				  "rentLocation": "${car.locationIdx}", //대여지점idx
	        	  "returnLocation": returnLocation, //반납지점idx
	          };
		
		  $.ajax({
	          url:'<%=request.getContextPath()%>/payment/paid',
	          contentType: 'application/json; charset=utf-8',
	          type: 'post',
	          dataType:'json',
	          data: JSON.stringify(data),
	          success: function(result) {
	        	  if(result >0) {
		  		  insertNmemInfo(payidx);
	        	  } else {
	        		  alert("결제가 완료되지 않았습니다")
	        	  }
	          },
	          error: function() {
	          	alert('로딩 실패');
	          }
	       });
		
	}
	

	//비회원 결제 정보 저장
	function insertNmemInfo(payidx) {
		
		var useridx = $('#useridx').val();
		if (useridx == '0') {
			
		console.log("##########"+useridx);
		var nameval = $('#name').val();
		var birthval = $('#birth').val();
		var phoneval = $('#phone').val();
		var mailval = $('#mail').val();
		var license = $('#license').val();
		
		var data = {
				"idx":payidx,
				"name" : nameval,
				"birth" :birthval,
				"phone" :phoneval,
				"license" :license,
				"email": mailval
		}
				console.log(phoneval);
		  $.ajax({
	          url:'<%=request.getContextPath()%>/payment/nMempaid',
	          contentType: 'application/json; charset=utf-8',
	          type: 'post',
	          dataType:'json',
	          data: JSON.stringify(data),
	          success: function(result) {
	        	  if(result >0) {
	        		  console.log("비회원 저장 성공");
	        	  } else {
	        		  alert("비회원 정보 저장 실패")
	        	  }
	          },
	          error: function() {
	          	alert('로딩 실패');
	          }
	       });
		}
	
	}
	
	
	//대여점 지도 정보 불러오기
	function getMap() {
		
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(${car.latitude} , ${car.longitude}), // 지도의 중심좌표
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
	}

	
</script>



</html>