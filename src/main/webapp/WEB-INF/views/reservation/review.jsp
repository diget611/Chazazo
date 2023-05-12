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
					<div class="col-md-8 single-property-content" style="float:left;">
							<input type="hidden" id="useridx"  value="${info.idx }" >
							<div id="content">
							</div>
							<div id="reviewDiv">
								<div style=" margin-top:450px;" >
								<h4 class="s-property-title" >리뷰</h4>
									<c:forEach items="${rList }" var="review" varStatus="i">
										<c:choose>
											<c:when test="${review.status eq 0}">
												<div style="margin-bottom :50px;">
													<div>
														<input type="hidden" id="reviewIdx" value="${review.idx }">
														<div style="margin: 0px; float: left;">
															<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/person.png" style="width:25px; float:left;">
															<c:choose>
																<c:when test="${review.name eq '0' }">
																	<input type="text" style="font-size:15px; float:left; width:50%; padding-left: 10px; margin-bottom: 10px;" value="탈퇴한 회원">
																</c:when>
																<c:otherwise>
																	<input type="text" style="font-size:15px; float:left; width:50%; padding-left: 10px; margin-bottom: 10px;" value="${review.name}">
																</c:otherwise>
															</c:choose>
														</div>
														<div>
															<small style="float: right; color:#Fcd637; font-size: 18px;" class=${review.score }></small>
														</div>
													</div>
													<div>
														<textarea name="reviewOne" class="review_content"  maxlength="100"
															style="height:auto; overflow:hidden; resize: none; width: 100%; font-size:18px; background-color: #e3f8ff; border-radius: 5px; padding: 10px;"autofocus disabled>${review.content}</textarea>
													</div>
													<div>
													<div style="display: inline-block; position: relative; left: 77%;">${review.createdate}</div>
													<div style="display: inline-block; position: relative; top: 5px; left: 80%;">
														<c:if test="${empty info.name}">
																<input src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/like.png" type="image" style=" width:30px; padding: 0px;">
																<span>${review.recommend}</span>
														</c:if>
														<c:if test="${not empty info.name }">
															<c:if test="${info.name ne review.name }">
																<input src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/like.png"
																	onClick="likebtn(${review.idx})" type="image" style="box-sizing:border-box; resize:none; padding: 0px; width: 30px;">
																<span>${review.recommend}</span>
															</c:if>
															<c:if test="${info.name eq review.name }"> 
																<input src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/like.png" type="image" style=" width:30px; padding: 0px;">
																<span>${review.recommend}</span>
															</c:if>
														</c:if>
													</div>
													<div style="display: inline-block; position: relative; top: 5px; left: -20%;">
														<c:if test="${info.name eq review.name }">
															<input data-idx="${review.idx}" src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/delete.png" style="float:right; width:50px; " type="image" class="delete" value="삭제">
															<input data-idx="${review.idx}" src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/edit.png"  style=" float:right;  width:50px; " type="image" class="edit" value="수정" >
														</c:if>
													</div>
													</div>
													<div style="position: relative; top: -28px;">
													   	<c:if test="${info.name ne review.name }">
															<c:if test ="${empty info.name }">
																<button type="button" class="btn btn-secondary"  onclick="reportSwal()" style="font-size: 15px; color: black; padding: 0px;">신고</button>
																<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/siren.png" style="width:28px;">
															</c:if>
															<c:if test ="${not empty  info.name }">
															<button type="button" id="report" data-memberIdx="${info.idx}"class="btn btn-secondary" style="font-size: 15px; color: black; padding: 0px;" 
													    		    onclick='window.open("${pageContext.request.contextPath}/reportReview/${review.idx }", "리뷰 신고", "width=100, height=auto")'>신고</button>
																<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/siren.png" style="width:28px;">
															</c:if>
														</c:if>
													</div>
												</div>
											</c:when>
											<c:when test="${review.status eq 1}">
												<div style="margin-bottom :50px;">
													<div>
														<input type="hidden" id="reviewIdx" value="${review.idx }">
														<div style="margin: 0px; float: left;">
															<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/person.png" style="width:25px; float:left;">
															<input type="text" style="font-size:15px; float:left; width:50%; padding-left: 10px; margin-bottom: 10px;" value="비공개">
														</div>
													</div>
													<br>
													<div>
														<textarea style="height:auto; overflow:hidden; resize: none; width: 100%; font-size:18px; background-color: #e3f8ff; border-radius: 5px; padding: 10px;"disabled>신고 처리중인 리뷰입니다</textarea>
													</div>
												</div>
											</c:when>
											<c:when test="${review.status eq 2}">
												<div style="margin-bottom :50px;">
													<div>
														<input type="hidden" id="reviewIdx" value="${review.idx }">
															<div style="margin: 0px; float: left;">
																<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/person.png" style="width:25px; float:left;">
																<input type="text" style="font-size:15px; float:left; width:50%; padding-left: 10px; margin-bottom: 10px;" value="비공개">
															</div>
													</div>
													<br>
													<div>
														<textarea style="height:auto; overflow:hidden; resize: none; width: 100%; font-size:18px; background-color: #e3f8ff; border-radius: 5px; padding: 10px;"disabled>신고로 블라인드된 리뷰입니다</textarea>
													</div>
												</div>
											</c:when>
										</c:choose>
									</c:forEach>
									
											<div id="insertReviewbody" style="text-align:center;">
												<div id="insertReview"  class="col-md-12" style="padding: 0px;">	
													<div class="form-group col-md-8" style="float:left; padding: 0px;" >
													
														  <div>
														<textarea  maxlength="100" name="reviewcontent"
															style=" box-sizing:border-box; overflow:hidden; resize: none; width:100%; border: 2px solid #4ea0d8; padding: 10px; border-radius: 10px;"  placeholder="${info.name } 님 ,리뷰를 작성해 주세요!" ></textarea>
														  	  <div class="textLengthWrap" style="text-align: right;">
														   		 <span class="textCount">0자</span><span class="textTotal">/100자</span>
														  	  </div>
														  </div>
													</div>
												<div class="col-md-4"  style="float:left; margin-top:2%; padding: 0px; padding-left: 55px;" >
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
						</div>
</body>
<script type="text/javascript">

window.onload = function() {
	$('small').css('color', 'red');
}

$(".1").html("&#9733; &#9734; &#9734; &#9734; &#9734;");
$(".2").html("&#9733; &#9733; &#9734; &#9734; &#9734;");
$(".3").html("&#9733; &#9733; &#9733; &#9734; &#9734;");
$(".4").html("&#9733; &#9733; &#9733; &#9733; &#9734;");
$(".5").html("&#9733; &#9733; &#9733; &#9733; &#9733;"); 

//리뷰 칸자동 조정
$(document).ready(function() {
  $('textarea').on( 'keyup', function (e){
    $(this).css('height', 'auto');
    $(this).height(this.scrollHeight);
  });
  $('textarea').keyup();
});

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




//리뷰 수정 글자수 제한
$('[name=reviewOne]').keyup(function (e) {
	let content = $(this).val();
    
    // 글자수 세기
    if (content.length == 0 || content == '') {
    	$('.textCount').text('0자');
    } else {
    	$('.textCount').text(content.length + '자');
    }
    
    // 글자수 제한
    if (content.length > 100) {
        $(this).val($(this).val().substring(0, 100));
        swal("리뷰는 100자까지 입력 가능합니다","", {icon: "warning"});
    };
});

//리뷰 작성 글자수 제한
$('[name=reviewcontent]').keyup(function (e) {
	let content = $(this).val();
    
    // 글자수 세기
    if (content.length == 0 || content == '') {
    	$('.textCount').text('0자');
    } else {
    	$('.textCount').text(content.length + '자');
    }
    
    // 글자수 제한
    if (content.length > 100) {
        $(this).val($(this).val().substring(0, 100));
        swal("리뷰는 100자까지 입력 가능합니다","", {icon: "warning"});
    };
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
	function likebtn(idx){
	var reviewidx =idx;
	$.ajax({
		url:'${pageContext.request.contextPath}/insertLike',
         type: 'post',
	     data: {
	 		"idx" : reviewidx
		},
         success: function(result) {
        	  location.reload();
          },
          error: function() {
          	alert('좋아요 등록 실패');
          }
		});		
	};


//리뷰 수정 누르면 다른 리뷰수정 disabled
$('.edit').on('click', function(){	
	$('.review_content').attr('disabled', true);
	$(this).parent().parent().prev().children().attr('disabled', false);
	$(this).attr('hidden', true);
	$(this).next().attr('hidden', true);
	$(this).next().next().next().attr('hidden', true);
	$(this).parent().append('<button type="button" class="btn btn-default" id="btnUpdate" style="padding:3px 10px 3px 10px;">수정 완료</button>')
	
	$('#btnUpdate').on('click', function() {
		 var reviewidx = $(this).parent().parent().prev().prev().children('#reviewIdx').val();
		 var content = $(this).parent().parent().prev().children().val();
		 
				$.ajax({
					url:'${pageContext.request.contextPath}/updateReview',
			         type: 'post',
				     data: {
				 		"idx" : reviewidx,
						"content" :content
					},
			         success: function(result) {
			        	 swal({
			       			title : "리뷰가 수정되었습니다",
			       		    icon  : "success",
			       		    closeOnClickOutside : false
			       		}).then(function(){
			       			location.reload();
			       		});
			          },
			          error: function() {
			          	alert('리뷰 수정 실패');
			          }
				});	
		 
	})
});






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