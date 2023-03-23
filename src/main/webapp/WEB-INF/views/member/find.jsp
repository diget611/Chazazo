<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

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

<style>
	.modal {
			position: absolute;
			top: 0;
			left: 0;

			width: 100%;
			height: 100%;

			display: none;

			background-color: rgba(0, 0, 0, 0.4);
	}
      
	.modal.show {
				display: block;
	}

	.modal_body {
				position: absolute;
				top: 50%;
				left: 50%;

				width: 400px;
				height: auto;

				padding: 10px;

				text-align: center;

				background-color: rgb(255, 255, 255);
				border-radius: 10px;
				box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

				transform: translateX(-50%) translateY(-50%);
	}
</style>
    
</head>
<body>
	<jsp:include page="../header.jsp"/>
	
	<section>
		<div class="register-area" style="background-color: rgb(249, 249, 249);">
			<div class="container">
				<div class="col-md-6">
					<div class="box-for overflow">
						<div class="col-md-12 col-xs-12 register-blocks">
							<h2>아이디 찾기 : </h2> 
							<form action="" method="get">
								<div class="form-group">
									<label>가입하신 이메일 주소를 입력해주세요.</label>
									<input type="text" class="form-control" id="findId" name="email">
								</div>
								<div class="text-center">
									<button id="findIdBtn" type="button" class="btn btn-default">아이디 찾기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="box-for overflow">
						<div class="col-md-12 col-xs-12 register-blocks">
							<h2>비밀번호 찾기 : </h2> 
							<form action="" method="get">
								<div class="form-group">
									<label>아이디를 입력해주세요.</label>
									<input type="text" class="form-control" id="findId" name="username">
								</div>
								<div class="form-group">
									<label>가입하신 이메일 주소를 입력해주세요.</label>
									<input type="text" class="form-control" id="findEmail" name="email">
								</div>
								<div class="text-center">
									<button type="button" class="btn btn-default">비밀번호 찾기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<div class="modal">
		<div class="modal_body">
			<div id="resultBox"></div>
			<button type="button" id="modalCloseBtn">확인</button>
		</div>		
	</div>
	
	<jsp:include page="../footer.jsp"/>
	
	<script>
		var modal = document.querySelector('.modal');

		$('#modalCloseBtn').on('click', function() {
			modal.style.display = 'none';
		});
		
		$('#findIdBtn').on('click', findId);
		
		function findId() {
			let email = $('[name=email]').val()
			$.ajax({
				url: "<%=request.getContextPath()%>/member/findid",
				type: 'get',
				data: {email: email},
				success: function(result){
					let list = "";
					for(let i = 0; i < result.length; i++) {
						list = "<div>" + result + "</div>";
					}
					console.log(list);
					$('#modalCloseBtn').before(list);
					modal.style.display = 'block';
				},
				error: function(){
					
				}
			});
		}
    </script>

</body>
</html>