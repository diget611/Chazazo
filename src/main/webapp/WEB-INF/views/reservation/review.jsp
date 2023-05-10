<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<spring:eval expression="@keyProperty['kakao-admin-key']" var="key"/>

<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

<!-- CSS only -->

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/star.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
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


</head>
<body>
					<div class="col-md-8 single-property-content">
							<input type="hidden" id="useridx"  value="${info.idx }" >
							<div id="content">
							</div>
							<div id="reviewDiv">
								<div style=" margin-top:450px;" >
								<h4 class="s-property-title" >리뷰</h4>
									<c:forEach items="${rList }" var="review" varStatus="i">
										<c:choose>
											<c:when test="${review.status eq 0}">
												<div style="margin-bottom :80px;">
													<div>
														<input type="hidden" id="reviewIdx" value="${review.idx }">
														<div style="margin:0px">
															<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/person.png" style="width:20px; float:left;">
															<input type="text" style="font-size:13px; width:200px;" value="${review.name}">
														</div>
														<small class=${review.score }></small><label >&nbsp; ${review.createdate}</label>&nbsp;&nbsp;
														<input data-idx="${review.idx}" data-recommend="${review.recommend}" src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/like.png"
															class="likebtn" type="image" style=" width:55px;">${review.recommend}
													</div>
													<div>
														<textarea class="review_content" style="height:auto; width:80%; font-size:18px;"autofocus disabled>${review.content}</textarea>
													</div>	
													<c:if test="${info.name eq review.name }">
														<input data-idx="${review.idx }" src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/edit.png" style="float:left;  width:45px; " type="image" class="edit" value="수정">
														<input data-idx="${review.idx }" src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/delete.png"  style=" float:left;  width:45px; " type="image" class="delete" value="삭제" >
													</c:if>
												   	<c:if test="${info.name ne review.name }">
														<c:if test ="${empty info.name }">
															<button type="button" class="btn btn-secondary"  onclick="reportSwal()" >신고</button>
															<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/siren.png" style="width:25px;">
														</c:if>
														<c:if test ="${not empty  info.name }">
															<button type="button" id="report" data-memberIdx="${info.idx}"class="btn btn-secondary" style="display:inline-block" 
												    		    onclick='window.open("${pageContext.request.contextPath}/reportReview/${review.idx }", "리뷰 신고", "width=100, height=auto")'>신고</button>
															<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/siren.png" style="width:25px;">
														</c:if>
													</c:if>
												</div>
											</c:when>
											<c:when test="${review.status eq 1}">
												<div style="margin-bottom :80px;">
													<div>
														<input type="hidden" id="reviewIdx" value="${review.idx }">
														<div style="margin:0px">
															<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/person.png" style="width:20px; float:left;">
															<input type="text" style="font-size:13px; width:200px;" value="${review.name}">
														</div>
													</div>
													<div>
														<p>신고 처리 중인 리뷰입니다.</p>
													</div>
												</div>
											</c:when>
											<c:when test="${review.status eq 2}">
												<div style="margin-bottom :80px;">
													<div>
														<input type="hidden" id="reviewIdx" value="${review.idx }">
														<div style="margin:0px">
															<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/person.png" style="width:20px; float:left;">
															<input type="text" style="font-size:13px; width:200px;" value="${review.name}">
														</div>
													</div>
													<div>
														<p>신고로 삭제된 리뷰입니다.</p>
													</div>
												</div>
											</c:when>
										</c:choose>
									</c:forEach>
									
										<label>${info.name } </label>
											<div id="insertReviewbody" style="text-align:center;">
												
											<div id="insertReview" style=" float:left;" class="col-md-8">	
												 <input type="text" name="reviewcontent" style=" height:80px; width:100%; border:4px solid #4ea0d8;"  placeholder="리뷰를 작성해주세요" ></input>
											</div>
											<div class="col-md-4" >
													<p class="star_rating">
													    <a href="#"  class="on" ><input type="hidden" value="1">★</a>
													    <a href="#"  class="on"><input type="hidden" value="2">★</a>
													    <a href="#"  class="on"><input type="hidden" value="3">★</a>
													    <a href="#"   ><input type="hidden" value="4">★</a>
													    <a href="#"   ><input type="hidden" value="5">★</a>
													</p>
													<button type="button" id="reviewbtn" onclick="postReview()" style=" margin:10px" class="btn btn-default">리뷰등록</button>
											</div>
											</div>
											
											
											
									</div>
								 </div>
							</div>
</body>
<script type="text/javascript">

$(".1").html("&#9733; &#9734; &#9734; &#9734; &#9734;");
$(".2").html("&#9733; &#9733; &#9734; &#9734; &#9734;");
$(".3").html("&#9733; &#9733; &#9733; &#9734; &#9734;");
$(".4").html("&#9733; &#9733; &#9733; &#9733; &#9734;");
$(".5").html("&#9733; &#9733; &#9733; &#9733; &#9733;"); 



//비회원 경고
function reportSwal() {
	swal("현재 로그아웃 상태입니다.","신고하려면 로그인을 해주세요.", {icon: "warning"});
}


//별점
var score=3;
$( ".star_rating a" ).click(function() {
     $(this).parent().children("a").removeClass("on");
     $(this).addClass("on").prevAll("a").addClass("on");   
     score=Number($(this).children("input").val()); 
     return false;
});




//리뷰등록
function postReview() {
	var content = $('[name=reviewcontent]').val()
	var memberIdx = $('#useridx').val();
	var vehicleIdx = $('[name=caridx]').val();
	

	if(!content) {
		swal("입력된 내용이 없습니다","", {icon: "warning"});
		setTimeout(function () { window.close(); }, 2000);
		return false;
	}
	
	var data ={
			"vehicleIdx":vehicleIdx,
			"memberIdx": memberIdx,
			"content" : content,
			"score" : score
	}
	  $.ajax({
          url:'${pageContext.request.contextPath}/post',
          contentType: 'application/json; charset=utf-8',
          type: 'post',
          dataType:'json',
          data: JSON.stringify(data),
          success: function(result) {
        	  if(result == 0){
        		  swal("예약한 적 없는 차량입니다.","렌트한 차량만 리뷰를 등록할 수 있습니다.", {icon: "error"});
        	  } else{
        	  swal({
        			title : "리뷰가 등록되었습니다",
        		    icon  : "success",
        		    closeOnClickOutside : false
        		}).then(function(){
        			location.reload();
        		});
        	  }
        	  }
       	 	  ,
          error: function() {
          }
       });
	};


//리뷰 좋아요
 $('.likebtn').click(function(){
	var reviewidx = $(this).data("idx");
	var recommend = $(this).data("recommend");

	$.ajax({
		url:'${pageContext.request.contextPath}/insertLike',
         type: 'post',
	     data: {
	 		"idx" : reviewidx,
			"recommend" :recommend
		},

         success: function(result) {
        	  location.reload();
          },
          error: function() {
          	alert('좋아요 등록 실패');
          }
	});		
});


//리뷰 수정 누르면 다른 리뷰수정 disabled
$('.edit').on('click', function(){	
$('.review_content').attr('disabled', true);
$(this).parent().children().next().children().attr('disabled', false);
$(this).attr('hidden', true);
$(this).next().attr('hidden', true);
$(this).next().next().next().attr('hidden', true);
$(this).parent().append('<button type="button" class="btn btn-default" id="btnUpdate" style="margin:0">등록</button>')
});


$(document).on('click','#btnUpdate', function() {
	 var reviewidx = $(this).parent().children().children().val();
	 var content = $(this).parent().children().next().children().val();
	 
			$.ajax({
				url:'${pageContext.request.contextPath}/updateReview',
		         type: 'post',
			     data: {
			 		"idx" : reviewidx,
					"content" :content
				},
		         success: function(result) {
		        	 location.reload();
		          },
		          error: function() {
		          	alert('리뷰 수정 실패');
		          }
			});	
	 
})


//리뷰 삭제
$('.delete').on('click', function(){
	var reviewidx = $(this).data("idx");
		$.ajax({
			url:'${pageContext.request.contextPath}/deleteReview',
	         type: 'patch',
		     data: {
		 		idx : reviewidx
			},
	         success: function(result) {
	       	  swal({
      			title : "리뷰가 삭제되었습니다",
      		    icon  : "success",
      		    closeOnClickOutside : false
      		}).then(function(){
      			location.reload();
      		});
      	  }
     	 	  ,
	          error: function() {
	          	alert('리뷰 수정 실패');
	          }
		});	
		
});


</script>
</html>