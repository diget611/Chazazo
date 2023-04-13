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
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	<div class="register-area vh-100"
		style="background-color: rgb(249, 249, 249);">

		<div class="container">



			<div>
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 login-blocks">
						<h2>회원가입 :</h2>
						<form action="" method="post">
							<div class="form-group">
								<label for="email">아이디</label> <input type="text"
									class="form-control" id="email">
							</div>
							<div class="form-group">
								<label for="password">비밀번호</label> <input type="password"
									class="form-control" id="password">
							</div>


							<div class="form-group">
								<label for="name">이름</label> <input type="text"
									class="form-control" id="name">
							</div>

							<div class="form-group">
								<label for="gender">성별</label> <select class="form-control"
									id="name">
									<option selected="selected" hidden="hidden">성별</option>
									<option>남성</option>
									<option>여성</option>
								</select>
							</div>


							<div class="form-group">
								<label for="birth">생년월일</label> <input type="text"
									class="form-control" id="birth">
							</div>


							<div class="form-group">
								<label for="phone">전화번호</label> <input type="text"
									class="form-control" id="phone">
							</div>



							<div class="form-group container">
							<label for="drivenum">면허증 번호</label> 
							<div class="row">
								<div class="col-xs-10" >
									<input type="text" class="form-control" id="drivenum" style="width:100%;">
								</div>
								<div class="col-xs-2" >
									<button type="submit" class="btn btn-default" style="width: 100px;">확인</button>
								</div>
							</div>
							</div>
							
							
							<div class="form-group container">
							<label for="email">이메일 </label> 
							<div class="row">
								<div class="col-xs-10" >
									<input type="text" class="form-control" id="email" style="width:100%;">
								</div>
								<div class="col-xs-2" >
									<button type="submit" class="btn btn-default" style="width: 100px;">확인</button>
								</div>
							</div>
							</div>							





							<div class="text-center">
								<button type="submit" class="btn btn-default">회원가입</button>
							</div>
						</form>
						<br>

					</div>
				</div>
			</div>

		</div>
	</div>
		<jsp:include page="/WEB-INF/views/base/footer.jsp"/>

</body>
</html>