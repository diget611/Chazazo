<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>문의</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,-25" />

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
<style>
.inner-wrapper {
	margin: 0 0 8px;
	border-radius: 16px;
	box-shadow: 0 4px 14px 0 rgba(177, 177, 177, .2);
	background-color: #fff;
}
body{
color:black;
}
table {
	border-top: 1px solid black;
	text-align: center;
	width: 100%;
	cursor: pointer;
}
.box-between{
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-right: 100px;
	margin-left: 20px;

}
th {
	text-align: center;
	border-bottom: 1px solid black;
}

td {
	border-bottom: 1px solid black;
}

tbody tr:hover {
	background-color: #f1f3f5;
}
	.category {
		cursor: pointer;
	}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	
	<section>
		<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 480px;">
			<div class="container">
				<div class="row">
					<div class="blog-asside-right col-md-3">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
							<div class="panel-heading">
								<h3 class="panel-title"></h3>
							</div>
						</div>
						<div class="btn-group btn-group-lg btn-group-vertical" role="group" aria-label="Basic outlined example">
							<button type="button" class="btn btn-outline-primary" id="mainBtn" style="text-align: left;"></button>
							<button type="button" class="btn btn-outline-primary" id="requestBtn" style="text-align: left;"></button>
						</div>
					</div>   
					<div class="blog-lst col-md-9 p0">
						<section id="id-100" class="post single">
							<div class="panel panel-default sidebar-menu wow  fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
								<div class="container">
									<h3 class="panel-title">공지사항</h3>
								</div>
								<div class="panel-body">
									<form role="search">
										<div class="input-group">
											<input class="form-control" placeholder="검색어를 입력하세요" type="text" id="search">
											<span class="input-group-btn">
												<button type="button" class="btn btn-smal"><i class="fa fa-search"></i></button>
	                                        </span>
										</div>
									</form>
								</div>
							</div>
							</section>
						
							
								
								
								<div class="feat-list">
								<div class="panel-group"></div>
							</div>
								<!-- //게시판 -->

								<div style='text-align: center;	margin-top: 10px;'>
									<c:choose>
										<c:when test="${pagination.currentPage eq 1 }">
											<button type="button" class="btn btn-secondary disabled" id="preBtn">&lt&lt</button>
										</c:when>
										<c:otherwise>
											<button type="button" class="btn btn-secondary" id="preBtn">&lt&lt</button>	
										</c:otherwise>
									</c:choose>
									<c:forEach begin="${pagination.startPage }" end="${pagination.endPage }" step="1" var="page">
										<c:choose>
											<c:when test="${pagination.currentPage eq page }">
												<button type="button" name="pageBtn" class="btn btn-secondary active" value="${page }">${page }</button>
											</c:when>
											<c:otherwise>
													<button type="button" name="pageBtn" class="btn btn-secondary" value="${page }">${page }</button>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								<c:choose>
									<c:when test="${pagination.currentPage eq pagination.paging }">
										<button type="button" class="btn btn-secondary disabled" id="nextBtn">&gt&gt</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn btn-secondary" id="nextBtn">&gt&gt</button>	
									</c:otherwise>
								</c:choose>
							</div>
					
					</div>

								
					</div>                    
				</div>
			</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/base/chat.jsp"/>
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
	<script>
	$('[name=pageBtn]').on('click', function() {
		let page = $(this).val();
		location.href="${pageContext.request.contextPath}/notice?page=" + page;
	})
	
	$('#preBtn').on('click', function() {
		let page = ${pagination.currentPage};
		
		if(page - 1 == 0) page = 1;
		else page--;
		
		location.href="${pageContext.request.contextPath}/notice?page=" + page;
 	})
	
	$("#nextBtn").on('click', function() {
		let page = ${pagination.currentPage};
		
		if(page + 1 > ${pagination.paging}) page = ${pagination.paging};
		else page++;
		
		location.href="${pageContext.request.contextPath}/notice?page=" + page;
	})
	
	
	
	
		window.onload = loadPage();
		$('#search').on('input', loadPage);
		
		function loadPage() {
			
			var searchWord;
			
			if($(this).prop('tagName') == 'INPUT'){
				searchWord = $(this).val();
			} else {
			}
			
			$.ajax({
				url: '${pageContext.request.contextPath}/notice/search',
				data: {
					"searchWord" : searchWord
				},
				type: 'get',
				dataType: 'json',
				success: function(result) {
					getList(result);
				},
				error: function() {
					swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
				}
			});
		}
		function getList(result) {
			var html = '';
       	 	for(var i in result) {
       			var list = result[i];
       			html += '<div class="panel panel-default">'
           		html += '	<div class="panel-heading">'
				html += '		<h4 class="panel-title fqa-title collapsed" data-toggle="collapse" data-target="#fqa' + i + '" aria-expanded="false">' + list.title + '</h4>'
				html += '	</div>'
				html += '	<div id="fqa' + i + '" class="panel-collapse fqa-body collapse" aria-expanded="false" style="height: 0px;">'
				html += '		<div class="panel-body">'+ list.content +'</div>'
				html += '	</div>'
				html += '</div>'
				}
       		$('.panel-group').html(html);
		}
			

	</script>
</body>
</html>



