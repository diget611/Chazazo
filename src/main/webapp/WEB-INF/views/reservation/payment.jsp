<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>결제하기</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>


<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/animate.css"
	rel="stylesheet" media="screen">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.theme.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.transitions.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	
	<section>
		<div style="text-align:center">
			<h2>결제 정보</h2>
		</div>
		<div style="overflow: hidden;">
		
			<div class="blog-asside-right col-md-6" style="padding: 80px;" >
			<div class="form-group">
					<h6 style="text-align:center">예약 정보 </h6>
					---
					<h4>${car.model }  ${car.year }년 형</h4>
					<h5>${car.name } </h5>
					---
				</div>
				<div class="form-group">
					<h6 style="text-align:center">운전자 정보 </h6>
					<label class="small">이름</label>  <input type="text" id="name" class="form-control" placeholder="성명" value="${info.name }" >
					<label class="small">생년월일</label>  <input type="text" id="birth" class="form-control" placeholder="생년월일 6자리" value="${info.birth }" required>
					<label class="small">휴대폰 번호</label>  <input type="text"  id="phone" class="form-control" placeholder="휴대폰 번호" value="${info.phoneNumber}" required>
					<label class="small">이메일</label>  <input type="text"  id="mail"class="form-control" placeholder="이메일" value="${info.email }" required>
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
									<th>총 대여일수 </th>
									<td>${daycount } 일</td>
								</tr>
								<tr>
									<th>대여요금(보험 포함)</th>
									<td> ${expIns } 원</td>
								</tr>
								<tr>
									<th>할인 적용</th>
									<td> - 원</td>
								</tr>

								<tr>
									<th>총 결제금액</th>
									<td><input type="text" id="paynum"  name="paynum" value="${expIns }" readonly>원</td>
								</tr>
							</tbody>
						</table>
					</section>
					<button class="btn btn-default" id="paybtn" type="button" onclick=" pay()" disabled>카드결제</button>
					<button class="btn btn-kakao" id="kakaobtn" type="button" onclick=" kakaopay()" disabled>카카오페이</button>
				</aside>
			</div>
		</div>
	</section>
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/modernizr-2.6.2.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery-1.10.2.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-select.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-hover-dropdown.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/easypiechart.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery.easypiechart.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>

</body>
<script>
const paybtn = document.getElementById("paybtn");
const kakaobtn = document.getElementById("kakaobtn");
const name = document.getElementById("name");
const birth = document.getElementById("birth");
const phone = document.getElementById("phone");
const mail = document.getElementById("mail");

name.addEventListener("keyup", validate);
birth.addEventListener("keyup", validate);
phone.addEventListener("keyup", validate);
mail.addEventListener("keyup", validate);

//운전자 정보중 하나라도 공백이면 결제 버튼 비활성화
function validate() {
	if(!(name.value && birth.value && phone.value && mail.value)) {
		paybtn.disabled = true;
		kakaobtn.disabled = true;
			 
	} else {
		paybtn.disabled = false;
		kakaobtn.disabled = false;
	}
}


function pay() {
    var IMP = window.IMP;
    IMP.init("imp01440251");
    // 원포트 관리자 페이지 -> 내정보 -> 가맹점식별코드
    // ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
    IMP.request_pay({
        pg: 'html5_inicis',  // 실제 계약 후에는 실제 상점아이디로 변경
        pay_method: 'card', // 'card'만 지원됩니다.
        merchant_uid: 'merchant_' + new Date().getTime(), // 상점에서 관리하는 주문 번호
        name: '차자조 테스트 결제', // 상품 이름
        amount: 100, // 결제창에 표시될 금액. 실제 승인이 이뤄지지는 않습니다.
        buyer_email: '${info.email }',
        buyer_name: '${info.name }',
        buyer_tel: '${info.phoneNumber}',
        buyer_addr: '서울특별시 강남구 삼성동',
        buyer_postcode: '123-456',
        m_redirect_url: '/'
    }, function (rsp) {
        if (rsp.success) {  // 결제가 성공했을 떄
            // 결제가 완료되었을 떄 결제 정보를 뜨게 만듬
            var msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + rsp.imp_uid;
            msg += '상점 거래ID : ' + rsp.merchant_uid;
            msg += '결제 금액 : ' + rsp.paid_amount;
            msg += '카드 승인번호 : ' + rsp.apply_num;
        } else {    // 결제가 실패했을 때
            // 결제에 실패했을떄 실패메세지와 실패사유를 출력
            var msg = '결제에 실패하였습니다.';
            msg +=  rsp.error_msg;
        }
        alert(msg);
    });
}
function kakaopay() {
    var IMP = window.IMP;
    IMP.init("imp01440251");
    // 원포트 관리자 페이지 -> 내정보 -> 가맹점식별코드
    // ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
    IMP.request_pay({
        pg: 'kakaopay',  // 실제 계약 후에는 실제 상점아이디로 변경
        pay_method: 'card', // 'card'만 지원됩니다.
        merchant_uid: 'merchant_' + new Date().getTime(), // 상점에서 관리하는 주문 번호
        name: '차자조 테스트 결제', // 상품 이름
        amount: 100, // 결제창에 표시될 금액. 실제 승인이 이뤄지지는 않습니다.
        buyer_email: '${info.email }',
        buyer_name: '${info.name }',
        buyer_tel: '${info.phoneNumber}',
        buyer_addr: '서울특별시 강남구 삼성동',
        buyer_postcode: '123-456',
        m_redirect_url: '/'
    }, function (rsp) {
        if (rsp.success) {  // 결제가 성공했을 떄
            // 결제가 완료되었을 떄 결제 정보를 뜨게 만듬
            var msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + rsp.imp_uid;
            msg += '상점 거래ID : ' + rsp.merchant_uid;
            msg += '결제 금액 : ' + rsp.paid_amount;
            msg += '카드 승인번호 : ' + rsp.apply_num;
        } else {    // 결제가 실패했을 때
            // 결제에 실패했을떄 실패메세지와 실패사유를 출력
            var msg = '결제에 실패하였습니다.';
            msg +=  rsp.error_msg;
        }
        alert(msg);
    });
}



</script>

</html>