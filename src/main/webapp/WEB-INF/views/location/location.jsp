<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>지점안내</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<spring:eval expression="@keyProperty['kakao-admin-key']" var="key"/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${key }"></script>

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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

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
.box-between{
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-right:120px;


}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>	
	<section>
		<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="col">
					<div class="blog-asside-right col-md-3" style="float: left;">
						<h4>지점 안내 </h4>
						<div class="footer-title-line"></div>
						<div >
							<ul class="footer-menu">
								<c:forEach items="${locationList }" var="location">
									
									<li style="margin-bottom:6px;">
									<div class="box-between">
										<span><a href="${pageContext.request.contextPath}/location/${location.idx }">${location.name } </a>
									</span>
									<span>
									<c:choose>
										<c:when test="${location.liked == 0 }">
											<div class="w3-border w3-center w3-padding">
												<button class="w3-button w3-black w3-round rec_update" data-idx="${ location.idx }">
													<i class="fa fa-heart" style="font-size:16px;color:white; "></i>
													&nbsp;<span class="rec_count"></span>
												</button> 
											</div>
										</c:when>
										<c:otherwise>
											<div class="w3-border w3-center w3-padding">
											<sec:authorize access="isAuthenticated()">
												<button class="w3-button w3-black w3-round rec_update" data-idx="${ location.idx }">
													<i class="fa fa-heart" style="font-size:16px;color:red"></i>
													&nbsp;<span class="rec_count"></span>
												</button> 
											</sec:authorize>
											</div>
										</c:otherwise>
									</c:choose>
									</span>
									</div>
								</li>
								
								</c:forEach>
								
							</ul>
						</div>
						
						<sec:authorize access="isAuthenticated()">
						<div >
							<ul class="footer-menu">
								<c:forEach items="${noneLocation }" var="noneLocation">
									<li><a href="${pageContext.request.contextPath}/location/${noneLocation.idx }">${noneLocation.name } </a></li>
									
								</c:forEach>
								
							</ul>
						</div>
						
						</sec:authorize>
					</div>
					
						<div style="float:left; width:70%; margin-top:30px;">
							<div style="color:#1583AF; font-size:22px; text-align:center; "> 차자조 ${location.name } 입니다.</div><br>
							<div style="margin:0px 0px 20px 40px;">
								<label style="font-size:18px; color:#1583AF;">찾아 오시는 길</label> <br>
									<label>${location.address }</label><br><br>
								<label style="font-size:18px; color:#1583AF;">전화번호 </label> <br>
									<label>${location.phoneNumber }</label><br><br>
								<label style="font-size:18px; color:#1583AF;">영업 시간</label> <br>
									<label>${location.businessHours }</label>
							</div>
					<div class="blog-lst col-md-12 " style="float: right;">
						<section id="id-100" class="post single">
							<div id="map" style="width:100%; height:400px"></div>   
						</section>
					</div>
						</div>
						
						
				</div>  
			</div>                    
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/base/chat.jsp"/>
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
	
</body>

 <script type="text/javascript">
	$('.main-nav').children().eq(3).children().css('color', '#18B4E9')
 
 
		// <맵 생성>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
   		 mapOption = { 
        center: new kakao.maps.LatLng(${location.latitude} , ${location.longitude}), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
var imageSrc = 'https://cdn-icons-png.flaticon.com/512/5695/5695641.png', // 마커이미지의 주소입니다    
imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
imageOption = {offset: new kakao.maps.Point(27, 69)}; 
 
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
markerPosition = new kakao.maps.LatLng(37.49640072828634, 127.02725329040501)
 
// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
var positions = [
    {
        content: '<div>차자조 강남점</div>', 
        latlng: new kakao.maps.LatLng(37.49640072828634, 127.02725329040501)
    },
    {
        content: '<div>차자조 용산점</div>', 
        latlng: new kakao.maps.LatLng(37.529538323634696, 126.96746826066268)
    },
    {
        content: '<div>차자조 수원점</div>', 
        latlng: new kakao.maps.LatLng(37.264552267986566, 126.99859642936599)
    },
    {
        content: '<div>차자조 일산점</div>',
        latlng: new kakao.maps.LatLng(37.66835722957077, 126.75113514893188)
    },
    {
        content: '<div>차자조 송도점</div>',
        latlng: new kakao.maps.LatLng(37.395677541772194, 126.63883623016922)
    }
];

for (var i = 0; i < positions.length; i ++) {
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng ,// 마커의 위치
        image: markerImage
    });

    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
}
	
		
	$(".rec_update").on("click", like);
	function like(){
		console.log( $(this).data("idx"));
		$.ajax({
			url: '${pageContext.request.contextPath}/profile/like',
			type: 'POST',
			data:{
				locationIdx : $(this).data("idx")
			},
			success: function(result){
				console.log(result);
				if(result == 0){
					swal.fire({
		      			title : "찜하기",
		      			 text: '관심지점 등록이 완료되었습니다',
		      		    icon  : "success",
		      		    closeOnClickOutside : false
		      		}).then(function(){
		      			location.reload();
		      		});
				}else{
					swal.fire({
		      			title : "찜하기 해제",
		      			 text: '괸심지점 등록이 해제되었습니다',
		      		    icon  : "success",
		      		    closeOnClickOutside : false
		      		}).then(function(){
		      			location.reload();
		      		});
				}
					
				},
			error:function(){
				alert("오류");
			}
			});
		
		}
		
	
	
		
	</script>
	
		
		

</html>