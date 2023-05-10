<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>공지사항 작성</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" async="true"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/easing/easing.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/waypoints/waypoints.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
    <style>
    	tr:hover {
    		cursor: pointer;
    	}
    	
		.ck-editor__editable { height: 400px; }
		.ck-content { font-size: 15px; }
    </style>
</head>
<body>
	<div class="container-xxl position-relative bg-white d-flex p-0">
		<jsp:include page="/WEB-INF/views/admin/base/sidebar.jsp"/>
		<div class="content">
			<jsp:include page="/WEB-INF/views/admin/base/navbar.jsp"/>	
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded p-4">
					<h4 class="mb-4">공지사항 작성</h4>
					<div class="bg-light rounded h-100 p-4">
						<div class="form-floating mb-3">
							<input type="email" class="form-control" id="title" name="title" placeholder="제목을 입력하세요">
							<label for="title">제목</label>
						</div>
						<div class="form-floating">
							<textarea class="form-control" placeholder="내용을 작성하세요" id="ckeditor"></textarea>
						</div>
						<div class="form-floating text-end mt-3">
							<button type="button" class="btn btn-secondary" id="insertBtn">작성하기</button>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="/WEB-INF/views/admin/base/footer.jsp"/>
		</div>
		<jsp:include page="/WEB-INF/views/admin/base/chat.jsp"/>
	</div>

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>

<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>

<script>
	ClassicEditor.create( document.querySelector( '#ckeditor' ), {
		language: "ko"
	} );
</script>

<script>
	$('#insertBtn').on('click', insertNotice);
	
	function insertNotice() {
		let title = $('#title').val();
		let content = $('[role=textbox]').html();
		let data = {
				title : title,
				content : content
		}
		
		$.ajax({
			url: "${pageContext.request.contextPath}/admin/notice/insert",
			type: "post",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			success: function(result) {
				if(result == 1) {
					swal({
	        			title : "공지사항을 작성했습니다.",
	        		    icon  : "success",
	        		    closeOnClickOutside : false
	        		}).then(function(){
	        			location.href = '${pageContext.request.contextPath}/admin/notice';
	        		});			
				} else {
					swal("실패", "공지사항 작성 과정에 오류가 발생했습니다. 확인 후 다시 시도해 주세요.", "error");
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