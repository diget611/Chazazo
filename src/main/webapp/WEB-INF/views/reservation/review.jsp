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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body>
					<div class="col-md-8 single-property-content">
							<input type="hidden" id="useridx"  value="${info.idx }" >
							<div id="content">
							</div>
							<div id="reviewDiv" >
								<div style=" margin-top:450px;" >
								<h4 class="s-property-title" >리뷰</h4>
									<table class="table table-review" style="padding: 3em; ">
										<tbody>
												<tr style="text-align:center;">
													<th width="0%"></th>
													<th  width="15%" >닉네임</th>
													<th  width="50%">리뷰내용</th>
													<th width="15%">작성일</th>
													<th width="10%">추천</th>
												</tr>
												<c:forEach items="${rList }" var="review" varStatus="i">
													<tr>
														<td ><input type="hidden" id="reviewIdx" value="${review.idx }"></td>
														<td >${review.name}</td>
														<td ><input class="review_content"  type="text" value="${review.content}"  autofocus disabled></td>
														<td  >
															<c:if test="${info.name eq review.name }">
																	<input data-idx="${review.idx }" src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/edit.png" style="float:left;  width:50%; " type="image" class="edit" value="수정">
																	<input data-idx="${review.idx }" src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/delete.png"  style=" float:left;  width:50%; " type="image" class="delete" value="삭제" >
															</c:if>
															<br><label >${review.createdate}</label>
														</td>
														<td align="center"><input data-idx="${review.idx}" data-recommend="${review.recommend}"  src="<%=request.getContextPath()%>/resources/garoestate/assets/img/icon/like.png" class="likebtn" type="image"  style="float:left;">
														${review.recommend}</td>
												    	<td >
													    	<c:if test="${info.name ne review.name }">
														    	<c:if test ="${empty info.name }">
														    		<button type="button" class="btn btn-secondary"  onclick="reportSwal()" >신고</button>
														    	</c:if>
														    		<c:if test ="${not empty  info.name }">
															    		<button type="button" id="report" data-memberIdx="${info.idx}"class="btn btn-secondary" style="display:inline-block" 
									    								    onclick='window.open("${pageContext.request.contextPath}/reportReview/${review.idx }", "리뷰 신고", "width=500, height=auto")'>신고</button>
													    			</c:if>
													    	</c:if>
												    	</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<div id="insertReviewbody">
											<table class="table table-insert">
												<tr>
													<td width="20%">
														<input type="text"  value="${info.name }">
													</td>
													<td >
														<div id="insertReview" >	
															 <input type="text" name="reviewcontent" style=" width:400px;  border:4px solid #4ea0d8; padding-rigth:30px;"  placeholder="리뷰를 작성해주세요" ></input>
														</div>
													</td>
													<td>
														<button type="button" id="reviewbtn" onclick="postReview()" style="margin-left:10px; " class="btn btn-default">리뷰쓰기</button>
													</td>
												</tr>
											</table>
										</div>
								</div>
						 </div>
					</div>
</body>
<script type="text/javascript">

//비회원 경고
function reportSwal() {
	swal("현재 로그아웃 상태입니다.","신고하려면 로그인을 해주세요.", {icon: "warning"});
}


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
			"content" : content
	}
	  $.ajax({
          url:'${pageContext.request.contextPath}/postReview',
          contentType: 'application/json; charset=utf-8',
          type: 'post',
          dataType:'json',
          data: JSON.stringify(data),
          success: function(result) {
        	  swal({
        			title : "리뷰가 등록되었습니다",
        		    icon  : "success",
        		    closeOnClickOutside : false
        		}).then(function(){
        			location.reload();
        		});
        	  }
       	 	  ,
          error: function() {
          }
       });
}

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
$(this).parent().prev().children().attr('disabled', false);
$(this).attr('hidden', true);
$(this).next().attr('hidden', true);
$(this).next().next().next().attr('hidden', true);
$(this).parent().append('<button type="button" class="btn btn-default" id="btnUpdate" style="margin:0">등록</button>')
});


$(document).on('click','#btnUpdate', function() {
	 
	 var reviewidx = $(this).parent().prev().prev().prev().children().val();
	 var content = $(this).parent().prev().children().val();
	 
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
	console.log(typeof reviewidx +reviewidx+"______");
		$.ajax({
			url:'${pageContext.request.contextPath}/deleteReview',
	         type: 'delete',
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