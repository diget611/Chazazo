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
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.theme.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.transitions.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">

<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/modernizr-2.6.2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-hover-dropdown.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/easypiechart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery.easypiechart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	
	<section>
		<div style="text-align:center">
			<h2>결제 정보</h2>
		</div>
		<div style="overflow: hidden;">
			<div class="blog-asside-right col-md-6" style="padding: 80px;" >
				<div class="form-group">
					<h6 style="text-align:center">운전자 정보</h6>
					<label class="small">이름</label>  <input type="text" class="form-control" placeholder="성명">
					<label class="small">생년월일</label>  <input type="text" class="form-control" placeholder="생년월일 6자리">
					<label class="small">휴대폰 번호</label>  <input type="text" class="form-control" placeholder="휴대폰 번호">
					<label class="small">이메일</label>  <input type="text" class="form-control" placeholder="이메일">
					<label class="small">보험선택</label><br>
					<label class="small">반납 장소 선택</label>
				</div>
			</div>
			<div class="col-md-6" style="padding:80px">
				<aside class="sidebar sidebar-property blog-asside-right">
					<section class="mt-3 p-3">
						<h5>결제 정보</h5><hr>
						<table class="table">
							<tbody>
								<tr>
									<th>대여요금</th>
									<td>22000원</td>
								</tr>
								<tr>
									<th>할인적용</th>
									<td>5000원</td>
								</tr>
								<tr>
									<th>총 결제금액</th>
									<td>17000원</td>
								</tr>
							</tbody>
						</table>
					</section>
					<button class="btn btn-default" type="button" onclick=" window.open('payment')" >결제하기</button>
				</aside>
			</div>
		</div>
	</section>
	 
	<jsp:include page="../footer.jsp"/>
</body>
</html>