<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>아이디 | 비밀번호 찾기</title>
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
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	
	<section>
		<div class="register-area" style="background-color: rgb(249, 249, 249);">
			<div class="container">
				<div class="col-md-6">
					<div class="box-for overflow">
						<div class="col-md-12 col-xs-12 register-blocks">
							<h2>아이디 찾기 : </h2> 
							<form>
								<div class="form-group">
									<label>가입하신 이메일 주소를 입력해주세요.</label>
									<input type="text" class="form-control" id="findIdEmail" name="idemail">
								</div>
								<div class="text-center">
									<button type="button" class="btn btn-default" id="findIdBtn" data-toggle="modal" data-target="#myModal">아이디 찾기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="box-for overflow">
						<div class="col-md-12 col-xs-12 register-blocks">
							<h2>비밀번호 찾기 : </h2> 
							<form>
								<div class="form-group">
									<label>아이디를 입력해주세요.</label>
									<input type="text" class="form-control" id="findPassId" name="username">
								</div>
								<div class="form-group">
									<label>가입하신 이메일 주소를 입력해주세요.</label>
									<input type="text" class="form-control" id="findPassEmail" name="passemail">
								</div>
								<div class="text-center">
									<button type="button" class="btn btn-default" id="findPassBtn" data-toggle="modal" data-target="#myModal">비밀번호 찾기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" id="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title"></h4>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal">
		<div class="modal_body">
			<div></div>
			<button type="button" id="modalCloseBtn">확인</button>
		</div>		
	</div>
	
	<jsp:include page="/WEB-INF/views/base/chat.jsp"/>
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
	<script>
		$('#close').on('click', function() {
			$('.modal').css('display', 'none');
		});
	
		// 입력창에서 엔터 누를 시 작동할 버튼 할당
		$('#findIdEmail').keydown(function() {
			if(event.keyCode == 13) {
				$('#findIdBtn').click();
				return false;
			}
		});
		
		$('#findPassId').keydown(moveToFindPassBtn);
		$('#findPassEmail').keydown(moveToFindPassBtn);
		
		function moveToFindPassBtn() {
			if(event.keyCode == 13) {
				$('#findPassBtn').click();
			}
		}
		
		
		$('#findIdBtn').on('click', findId);
		
		function findId(){
			let email = $('[name=idemail]').val();
			$.ajax({
				url: '${pageContext.request.contextPath}/member/findid',
				type: 'get',
				data: {email: email},
				success: function(result){
					let list = '';
					if(result != '') {
						$('.modal-body').children().remove();
						list += '<div>입력하신 이메일 정보와 일치하는 아이디는</div>';
						for(let i = 0; i < result.length; i++) {
							list += '<div>' + result[i] + '</div>';
						}
						list += '<div>입니다.</div>';
						$('.modal-body').append(list);
					} else {
						$('.modal-body').children().remove();
						list = '<div>입력하신 이메일로 가입한 아이디가 존재하지 않습니다.</div>'
						$('.modal-body').append(list);
					}
				},
				error: function(){
					swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
				}
			});
		}
		
		$('#findPassBtn').on('click', findPass);
		
		function findPass(){
			let username = $('[name=username]').val();
			let email = $('[name=passemail]').val();
			$.ajax({
				url: '${pageContext.request.contextPath}/member/findpass',
				type: 'get',
				data: {username: username, email: email},
				success: function(result){
					if(result == 0) {
						$('.modal-body').children().remove();
						list = '<div>입력하신 아이디와 이메일 정보가 일치하지 않습니다. 다시 확인해주세요.</div>';
						$('.modal-body').append(list);
					} else if(result == 2) {
						$('.modal-body').children().remove();
						list = '<div>오류가 발생했습니다. 다시 한 번 시도해주세요.</div>';
						$('.modal-body').append(list);
					} else {
						$('.modal-body').children().remove();
						list = '<div>임시 비밀번호를 이메일로 전송했습니다. 로그인 후 변경해주세요.</div>';
						$('.modal-body').append(list);
					}
				},
				error: function(){
					swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
					
				}
			});
		}
    </script>

</body>
</html>