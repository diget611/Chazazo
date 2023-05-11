<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>1:1 문의 상세 정보</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/resources/dashmin/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/css/style.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/easing/easing.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/waypoints/waypoints.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body onload="resizeWindow(this)">
	<!-- Form Start -->
	<div class="container-fluid pt-4 px-4">
		<div class="col-sm-12 col-xl-6">
			<div class="bg-light rounded h-100 p-4">
				<h6 class="mb-4">1:1 문의 상세 정보</h6>
				<input type="hidden" name="idx" id="idx" value="${request.idx }">
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="title" name="title" value="${request.title}" readonly>
					<label for="title">제목</label>
				</div>
				<div class="form-floating mb-3">
					<div class="form-control" id="content">${request.content}</div>
					<label for="content">내용</label>
				</div>
				<c:choose>
					<c:when test="${request.status eq 0 }">
						<form>
							<div class="form-floating mb-3">
								<textarea class="form-control mb-3" id="answer" name="answer" style="height: 300px;"></textarea>
								<div class="mt-3" style="text-align: center;">
									<button type="button" class="btn btn-primary" style="display: inline-block" id="ansBtn">답변하기</button>
									<button type="button" class="btn btn-primary" style="display: inline-block" id="deleteBtn">삭제하기</button>
								</div>
							</div>
						</form>
					</c:when>
					<c:otherwise>
						<form>
							<div class="form-floating mb-3 mt-3">
								<textarea class="form-control mb-3" id="answer" name="answer" style="height: 300px;">${request.answer }</textarea>
								<div class="mt-3" style="text-align: center;">
									<button type="button" class="btn btn-primary" style="display: inline-block" id="updateBtn">수정하기</button>
									<button type="button" class="btn btn-primary" style="display: inline-block" id="deleteBtn">삭제하기</button>
								</div>
							</div>
						</form>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<!-- Form End -->

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>

<script>
	function resizeWindow(win)    {
		var hei = win.document.body.offsetHeight + 100;
		win.resizeTo(500, hei);
	}
	
	var isAnswer = ${request.status};
	
	if(isAnswer == 0) {
		ClassicEditor
		  .create(document.querySelector( '#answer' ), {
		    language: 'ko'
		  })
		  .then( newEditor => {
		    editor = newEditor;
		  } )
		  .catch( error => {
		    console.error( error );
		  } );	
	} else {
		var ck;
		ClassicEditor
		  .create(document.querySelector( '#answer' ), {
		    language: 'ko'
		  })
		  .then( newEditor => {
			ck = newEditor;
		    editor = newEditor;
			editor.enableReadOnlyMode( '#answer' );
		  } )
		  .catch( error => {
		    console.error( error );
		  } );		
	}
	  
	$('#ansBtn').on('click', insertAns);
	
	function insertAns() {
		let idx = $('[name=idx]').val();
		let answer = $('[role=textbox]').html();
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/request/insert',
			type: 'post',
			data: {idx: idx, answer: answer},
			success: function(result) {
				if(result == 1) {
					swal({
	        			title : "답변을 등록했습니다.",
	        		    icon  : "success",
	        		    closeOnClickOutside : false
	        		}).then(function(){
	        			opener.parent.location.reload();
						window.close();
	        		});
				} else {
					swal("실패", "답변 등록 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");					
				}
			}, 
			error: function() {
				swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
			}
		});
	}
	
	$('#updateBtn').on('click', updateAns);
	
	function updateAns() {
		if($('#updateBtn').text() == '수정하기') {
			$('#updateBtn').text('수정 완료');
			ck.disableReadOnlyMode( '#answer' );
		} else {
			let idxup = $('[name=idx]').val();
			let answerup = $('[role=textbox]').html();
			$.ajax({
				url: '${pageContext.request.contextPath}/admin/request/update',
				type: 'patch',
				data: {idx: idxup, answer: answerup},
				success: function(result) {
					if(result == 1) {
						swal({
		        			title : "답변을 수정했습니다.",
		        		    icon  : "success",
		        		    closeOnClickOutside : false
		        		}).then(function(){
		        			opener.parent.location.reload();
							window.close();
		        		});
					} else {
						swal("실패", "답변 수정 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");					
					}
				}, 
				error: function() {
					swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
				}
			});
		}
	}
	
	$('#deleteBtn').on('click', deleteAns);
	
	function deleteAns() {
		let idxdel = $('[name=idx]').val();
		$.ajax({
			url: '${pageContext.request.contextPath}/admin/request/delete',
			type: 'delete',
			data: {idx: idxdel},
			success: function(result) {
				if(result == 1) {
					swal({
	        			title : "답변을 삭제했습니다.",
	        		    icon  : "success",
	        		    closeOnClickOutside : false
	        		}).then(function(){
	        			opener.parent.location.reload();
						window.close();
	        		});
				} else {
					swal("실패", "답변 삭제 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");					
				}
			}, 
			error: function() {
				swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
			}
		});
	}
</script>
</body>

</html>