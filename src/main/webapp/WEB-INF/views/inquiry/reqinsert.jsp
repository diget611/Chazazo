<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>문의</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />

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
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">

</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	<sec:authentication property="name" var="username"/>	
	<section>
		<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="row">
					<div class="blog-asside-right col-md-3">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title">문의</h3>
							</div>
						</div>
						<div class="btn-group btn-group-lg btn-group-vertical" role="group" aria-label="Basic outlined example">
							<button type="button" class="btn btn-outline-primary" id="mainBtn" style="text-align: left;">자주 묻는 질문</button>
							<button type="button" class="btn btn-outline-primary" id="requestBtn" style="text-align: left;">1:1 문의</button>
						</div>
					</div>  
					<div class="blog-lst col-md-9 p0">
						<section id="id-100" class="post single">
							<div class="panel panel-default sidebar-menu wow  fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="panel-heading">
									<h3 class="panel-title">1:1 문의</h3>
								</div>
							</div>
						</section>
						<section>
							<form id="reqForm">
								<div>
									<input type="text" name="title" id="title" placeholder="제목">
								</div>
								<div>
									<textarea id="ckeditor"></textarea>
								</div>
								<input type="hidden" name="username" id="username" value="${username }">
								<button type="button" class="btn btn-outline-primary" id="insertBtn">작성하기</button>
							</form>
						</section>
					</div>                    
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="/WEB-INF/views/base/chat.jsp"/>
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
	<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
	<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>

	<script>
		ClassicEditor.create( document.querySelector( '#ckeditor' ), {
			language: "ko"
		} );
	</script>
	
	<script>
		$('.main-nav').children(0).eq(4).children().css('color', '#18B4E9');
		
		$('#mainBtn').on('click', function() {
			location.href='${pageContext.request.contextPath}/inquiry';
		});
	
		$('#requestBtn').on('click', function() {
			location.href='${pageContext.request.contextPath}/request';
		});
		
		$('#insertBtn').on('click', requestInsert);
		
		function requestInsert() {
			let title = $('[name=title]').val();
			let content = $('[role=textbox]').html();
			let username = '${username}';
			
			var test = {"title": title, "content": content, "username": username};
			
			$.ajax({
				url: '${pageContext.request.contextPath}/request/insert',
				type: 'post',
				contentType: 'application/json; charset=utf-8',
				data: JSON.stringify(test),
				success: function(result) {
					if(result == 1) {
						alert('성공');
						window.location.href = '${pageContext.request.contextPath}/request';
					} else {
						alert('실패');
					}
				},
				error: function() {
					alert('에러');
				}
			});
		}
	</script>
</body>
</html>